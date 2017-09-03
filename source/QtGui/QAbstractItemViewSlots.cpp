/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAbstractItemViewSlots.h"

static SlotsQAbstractItemView * s = NULL;

SlotsQAbstractItemView::SlotsQAbstractItemView(QObject *parent) : QObject(parent)
{
}
SlotsQAbstractItemView::~SlotsQAbstractItemView()
{
  QAbstractItemView_release_codeblocks();
}
void SlotsQAbstractItemView::activated ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "activated(QModelIndex)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pindex );
        hb_itemRelease( psender );
        hb_itemRelease( pindex );
      }
    }
  }
}
void SlotsQAbstractItemView::clicked ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "clicked(QModelIndex)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pindex );
        hb_itemRelease( psender );
        hb_itemRelease( pindex );
      }
    }
  }
}
void SlotsQAbstractItemView::doubleClicked ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "doubleClicked(QModelIndex)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pindex );
        hb_itemRelease( psender );
        hb_itemRelease( pindex );
      }
    }
  }
}
void SlotsQAbstractItemView::entered ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "entered(QModelIndex)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pindex );
        hb_itemRelease( psender );
        hb_itemRelease( pindex );
      }
    }
  }
}
void SlotsQAbstractItemView::pressed ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "pressed(QModelIndex)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pindex );
        hb_itemRelease( psender );
        hb_itemRelease( pindex );
      }
    }
  }
}
void SlotsQAbstractItemView::viewportEntered ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "viewportEntered()" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 1, psender );
        hb_itemRelease( psender );
      }
    }
  }
}

HB_FUNC( QABSTRACTITEMVIEW_ONACTIVATED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "activated(QModelIndex)";
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(activated(QModelIndex)), s, SLOT(activated(QModelIndex)) );
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
    ret = object->disconnect(object, SIGNAL(activated(QModelIndex)), s, SLOT(activated(QModelIndex)) );
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

HB_FUNC( QABSTRACTITEMVIEW_ONCLICKED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "clicked(QModelIndex)";
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(clicked(QModelIndex)), s, SLOT(clicked(QModelIndex)) );
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
    ret = object->disconnect(object, SIGNAL(clicked(QModelIndex)), s, SLOT(clicked(QModelIndex)) );
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

HB_FUNC( QABSTRACTITEMVIEW_ONDOUBLECLICKED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "doubleClicked(QModelIndex)";
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(doubleClicked(QModelIndex)), s, SLOT(doubleClicked(QModelIndex)) );
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
    ret = object->disconnect(object, SIGNAL(doubleClicked(QModelIndex)), s, SLOT(doubleClicked(QModelIndex)) );
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

HB_FUNC( QABSTRACTITEMVIEW_ONENTERED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "entered(QModelIndex)";
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(entered(QModelIndex)), s, SLOT(entered(QModelIndex)) );
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
    ret = object->disconnect(object, SIGNAL(entered(QModelIndex)), s, SLOT(entered(QModelIndex)) );
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

HB_FUNC( QABSTRACTITEMVIEW_ONPRESSED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "pressed(QModelIndex)";
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(pressed(QModelIndex)), s, SLOT(pressed(QModelIndex)) );
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
    ret = object->disconnect(object, SIGNAL(pressed(QModelIndex)), s, SLOT(pressed(QModelIndex)) );
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

HB_FUNC( QABSTRACTITEMVIEW_ONVIEWPORTENTERED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "viewportEntered()";
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(viewportEntered()), s, SLOT(viewportEntered()) );
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
    ret = object->disconnect(object, SIGNAL(viewportEntered()), s, SLOT(viewportEntered()) );
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
void QAbstractItemView_release_codeblocks ()
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

