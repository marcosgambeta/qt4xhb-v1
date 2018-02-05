%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QAbstractTextDocumentLayoutSlots.h"

static SlotsQAbstractTextDocumentLayout * s = NULL;

SlotsQAbstractTextDocumentLayout::SlotsQAbstractTextDocumentLayout(QObject *parent) : QObject(parent)
{
}
SlotsQAbstractTextDocumentLayout::~SlotsQAbstractTextDocumentLayout()
{
  QAbstractTextDocumentLayout_release_codeblocks();
}
void SlotsQAbstractTextDocumentLayout::documentSizeChanged ( const QSizeF & newSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "documentSizeChanged(QSizeF)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pnewSize = hb_itemPutPtr( NULL, (QSizeF *) &newSize );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pnewSize );
        hb_itemRelease( psender );
        hb_itemRelease( pnewSize );
      }
    }
  }
}
void SlotsQAbstractTextDocumentLayout::pageCountChanged ( int newPages )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "pageCountChanged(int)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pnewPages = hb_itemPutNI( NULL, newPages );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pnewPages );
        hb_itemRelease( psender );
        hb_itemRelease( pnewPages );
      }
    }
  }
}
void SlotsQAbstractTextDocumentLayout::update ( const QRectF & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "update(QRectF)" ) && ( (bool) list4.at(i) == true ) )
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
void SlotsQAbstractTextDocumentLayout::updateBlock ( const QTextBlock & block )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "updateBlock(QTextBlock)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pblock = hb_itemPutPtr( NULL, (QTextBlock *) &block );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pblock );
        hb_itemRelease( psender );
        hb_itemRelease( pblock );
      }
    }
  }
}

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONDOCUMENTSIZECHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "documentSizeChanged(QSizeF)";
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(documentSizeChanged(QSizeF)), s, SLOT(documentSizeChanged(QSizeF)) );
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
    ret = object->disconnect(object, SIGNAL(documentSizeChanged(QSizeF)), s, SLOT(documentSizeChanged(QSizeF)) );
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

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONPAGECOUNTCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "pageCountChanged(int)";
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(pageCountChanged(int)), s, SLOT(pageCountChanged(int)) );
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
    ret = object->disconnect(object, SIGNAL(pageCountChanged(int)), s, SLOT(pageCountChanged(int)) );
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

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATE )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "update(QRectF)";
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(update(QRectF)), s, SLOT(update(QRectF)) );
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
    ret = object->disconnect(object, SIGNAL(update(QRectF)), s, SLOT(update(QRectF)) );
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

HB_FUNC( QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATEBLOCK )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "updateBlock(QTextBlock)";
  if( s == NULL )
  {
    s = new SlotsQAbstractTextDocumentLayout(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(updateBlock(QTextBlock)), s, SLOT(updateBlock(QTextBlock)) );
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
    ret = object->disconnect(object, SIGNAL(updateBlock(QTextBlock)), s, SLOT(updateBlock(QTextBlock)) );
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
void QAbstractTextDocumentLayout_release_codeblocks ()
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

