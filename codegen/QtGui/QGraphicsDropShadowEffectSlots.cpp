%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QGraphicsDropShadowEffectSlots.h"

static SlotsQGraphicsDropShadowEffect * s = NULL;

SlotsQGraphicsDropShadowEffect::SlotsQGraphicsDropShadowEffect(QObject *parent) : QObject(parent)
{
}
SlotsQGraphicsDropShadowEffect::~SlotsQGraphicsDropShadowEffect()
{
  QGraphicsDropShadowEffect_release_codeblocks();
}
void SlotsQGraphicsDropShadowEffect::blurRadiusChanged ( qreal blurRadius )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "blurRadiusChanged(qreal)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pblurRadius = hb_itemPutND( NULL, blurRadius );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pblurRadius );
        hb_itemRelease( psender );
        hb_itemRelease( pblurRadius );
      }
    }
  }
}
void SlotsQGraphicsDropShadowEffect::colorChanged ( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "colorChanged(QColor)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, pcolor );
        hb_itemRelease( psender );
        hb_itemRelease( pcolor );
      }
    }
  }
}
void SlotsQGraphicsDropShadowEffect::offsetChanged ( const QPointF & offset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "offsetChanged(QPointF)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM poffset = hb_itemPutPtr( NULL, (QPointF *) &offset );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 2, psender, poffset );
        hb_itemRelease( psender );
        hb_itemRelease( poffset );
      }
    }
  }
}

HB_FUNC( QGRAPHICSDROPSHADOWEFFECT_ONBLURRADIUSCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "blurRadiusChanged(qreal)";
  if( s == NULL )
  {
    s = new SlotsQGraphicsDropShadowEffect(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(blurRadiusChanged(qreal)), s, SLOT(blurRadiusChanged(qreal)) );
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
    ret = object->disconnect(object, SIGNAL(blurRadiusChanged(qreal)), s, SLOT(blurRadiusChanged(qreal)) );
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

HB_FUNC( QGRAPHICSDROPSHADOWEFFECT_ONCOLORCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "colorChanged(QColor)";
  if( s == NULL )
  {
    s = new SlotsQGraphicsDropShadowEffect(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(colorChanged(QColor)), s, SLOT(colorChanged(QColor)) );
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
    ret = object->disconnect(object, SIGNAL(colorChanged(QColor)), s, SLOT(colorChanged(QColor)) );
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

HB_FUNC( QGRAPHICSDROPSHADOWEFFECT_ONOFFSETCHANGED )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "offsetChanged(QPointF)";
  if( s == NULL )
  {
    s = new SlotsQGraphicsDropShadowEffect(QCoreApplication::instance());
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
      ret = object->connect( object, SIGNAL(offsetChanged(QPointF)), s, SLOT(offsetChanged(QPointF)) );
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
    ret = object->disconnect(object, SIGNAL(offsetChanged(QPointF)), s, SLOT(offsetChanged(QPointF)) );
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
void QGraphicsDropShadowEffect_release_codeblocks ()
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

