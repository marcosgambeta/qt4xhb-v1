/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsSceneSlots.h"

static SlotsQGraphicsScene * s = NULL;

SlotsQGraphicsScene::SlotsQGraphicsScene(QObject *parent) : QObject(parent)
{
}
SlotsQGraphicsScene::~SlotsQGraphicsScene()
{
  QGraphicsScene_release_codeblocks();
}
void SlotsQGraphicsScene::changed ( const QList<QRectF> & region )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "changed(QList<QRectF>)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_DYNS pDynSym;
        #ifdef __XHARBOUR__
        pDynSym = hb_dynsymFind( "QRECTF" );
        #else
        pDynSym = hb_dynsymFindName( "QRECTF" );
        #endif
        PHB_ITEM pregion = hb_itemArrayNew(0);
        int i;
        for(i=0;i<region.count();i++)
        {
          if( pDynSym )
          {
            #ifdef __XHARBOUR__
            hb_vmPushSymbol( pDynSym->pSymbol );
            #else
            hb_vmPushDynSym( pDynSym );
            #endif
            hb_vmPushNil();
            hb_vmDo( 0 );
            PHB_ITEM pTempObject = hb_itemNew( NULL );
            hb_itemCopy( pTempObject, hb_stackReturnItem() );
            PHB_ITEM pTempItem = hb_itemNew( NULL );
            hb_itemPutPtr( pTempItem, (QRectF *) new QRectF ( region [i] ) );
            hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
            hb_arrayAddForward( pregion, pTempObject );
            hb_itemRelease( pTempObject );
            hb_itemRelease( pTempItem );
          }
        }
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pregion );
        hb_itemRelease( psender );
        hb_itemRelease( pregion );
      }
    }
  }
}
void SlotsQGraphicsScene::sceneRectChanged ( const QRectF & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "sceneRectChanged(QRectF)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM prect = hb_itemPutPtr( NULL, (QRectF *) &rect );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, prect );
        hb_itemRelease( psender );
        hb_itemRelease( prect );
      }
    }
  }
}
void SlotsQGraphicsScene::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "selectionChanged()" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 1, psender );
        hb_itemRelease( psender );
      }
    }
  }
}

HB_FUNC( QGRAPHICSSCENE_ONCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "changed(QList<QRectF>)";
  if( s == NULL )
  {
    s = new SlotsQGraphicsScene(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    // verifica se já está na lista
    int found = -1;
    int i;
    for (i = 0; i < s->list1.size(); ++i)
    {
      if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
      {
        found = i;
        break;
      }
    }
    // se nao encontrado na lista, conecta e adiciona
    if( found == -1 )
    {
      ret = object->connect( object, SIGNAL(changed(QList<QRectF>)), s, SLOT(changed(QList<QRectF>)) );
      if( ret ) // se conectado, adiciona
      {
        // procura por posição livre
        i = s->list4.indexOf( false );
        if( i == -1 ) // nao encontrou posicao livre
        {
          // adiciona sinal na lista
          s->list1 << object;
          s->list2 << signal;
          s->list3 << codeblock;
          s->list4 << true;
        }
        else // encontrou posicao
        {
          // coloca na posição livre
          s->list1[i] = object;
          s->list2[i] = signal;
          s->list3[i] = codeblock;
          s->list4[i] = true;
        }
      }
    }
  }
  else if( hb_pcount() == 0 )
  {
    ret = object->disconnect(object, SIGNAL(changed(QList<QRectF>)), s, SLOT(changed(QList<QRectF>)) );
    if( ret == true )
    {
      for (int i = 0; i < s->list1.size(); ++i)
      {
        if( (QObject*) s->list1.at(i) == (QObject*) object )
        {
          if( ( (QString) s->list2.at(i) == (QString) signal ) && ( (bool) s->list4.at(i) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
            s->list1[i] = NULL;
            s->list2[i] = "";
            s->list3[i] = NULL;
            s->list4[i] = false;
          }
        }
      }
    }
  }
  hb_retl( ret );
}

HB_FUNC( QGRAPHICSSCENE_ONSCENERECTCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "sceneRectChanged(QRectF)";
  if( s == NULL )
  {
    s = new SlotsQGraphicsScene(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    // verifica se já está na lista
    int found = -1;
    int i;
    for (i = 0; i < s->list1.size(); ++i)
    {
      if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
      {
        found = i;
        break;
      }
    }
    // se nao encontrado na lista, conecta e adiciona
    if( found == -1 )
    {
      ret = object->connect( object, SIGNAL(sceneRectChanged(QRectF)), s, SLOT(sceneRectChanged(QRectF)) );
      if( ret ) // se conectado, adiciona
      {
        // procura por posição livre
        i = s->list4.indexOf( false );
        if( i == -1 ) // nao encontrou posicao livre
        {
          // adiciona sinal na lista
          s->list1 << object;
          s->list2 << signal;
          s->list3 << codeblock;
          s->list4 << true;
        }
        else // encontrou posicao
        {
          // coloca na posição livre
          s->list1[i] = object;
          s->list2[i] = signal;
          s->list3[i] = codeblock;
          s->list4[i] = true;
        }
      }
    }
  }
  else if( hb_pcount() == 0 )
  {
    ret = object->disconnect(object, SIGNAL(sceneRectChanged(QRectF)), s, SLOT(sceneRectChanged(QRectF)) );
    if( ret == true )
    {
      for (int i = 0; i < s->list1.size(); ++i)
      {
        if( (QObject*) s->list1.at(i) == (QObject*) object )
        {
          if( ( (QString) s->list2.at(i) == (QString) signal ) && ( (bool) s->list4.at(i) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
            s->list1[i] = NULL;
            s->list2[i] = "";
            s->list3[i] = NULL;
            s->list4[i] = false;
          }
        }
      }
    }
  }
  hb_retl( ret );
}

HB_FUNC( QGRAPHICSSCENE_ONSELECTIONCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "selectionChanged()";
  if( s == NULL )
  {
    s = new SlotsQGraphicsScene(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    // verifica se já está na lista
    int found = -1;
    int i;
    for (i = 0; i < s->list1.size(); ++i)
    {
      if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
      {
        found = i;
        break;
      }
    }
    // se nao encontrado na lista, conecta e adiciona
    if( found == -1 )
    {
      ret = object->connect( object, SIGNAL(selectionChanged()), s, SLOT(selectionChanged()) );
      if( ret ) // se conectado, adiciona
      {
        // procura por posição livre
        i = s->list4.indexOf( false );
        if( i == -1 ) // nao encontrou posicao livre
        {
          // adiciona sinal na lista
          s->list1 << object;
          s->list2 << signal;
          s->list3 << codeblock;
          s->list4 << true;
        }
        else // encontrou posicao
        {
          // coloca na posição livre
          s->list1[i] = object;
          s->list2[i] = signal;
          s->list3[i] = codeblock;
          s->list4[i] = true;
        }
      }
    }
  }
  else if( hb_pcount() == 0 )
  {
    ret = object->disconnect(object, SIGNAL(selectionChanged()), s, SLOT(selectionChanged()) );
    if( ret == true )
    {
      for (int i = 0; i < s->list1.size(); ++i)
      {
        if( (QObject*) s->list1.at(i) == (QObject*) object )
        {
          if( ( (QString) s->list2.at(i) == (QString) signal ) && ( (bool) s->list4.at(i) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
            s->list1[i] = NULL;
            s->list2[i] = "";
            s->list3[i] = NULL;
            s->list4[i] = false;
          }
        }
      }
    }
  }
  hb_retl( ret );
}
void QGraphicsScene_release_codeblocks ()
{
  if( s )
  {
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( (bool) s->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s->list3.at(i) );
          s->list1[i] = NULL;
          s->list2[i] = "";
          s->list3[i] = NULL;
          s->list4[i] = false;
      }
    }
  }
}

