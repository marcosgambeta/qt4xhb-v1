/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIconEngine

   DATA pointer
   DATA class_id INIT Class_Id_QIconEngine
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD paint
   METHOD pixmap
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QIconEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QICONENGINE_DELETE )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize actualSize ( const QSize & size, QIcon::Mode mode, QIcon::State state )
*/
HB_FUNC_STATIC( QICONENGINE_ACTUALSIZE )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QSize * ptr = new QSize( obj->actualSize ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void addFile ( const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state )
*/
HB_FUNC_STATIC( QICONENGINE_ADDFILE )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->addFile ( par1, *par2,  (QIcon::Mode) par3,  (QIcon::State) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void addPixmap ( const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state )
*/
HB_FUNC_STATIC( QICONENGINE_ADDPIXMAP )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->addPixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void paint ( QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state ) = 0
*/
HB_FUNC_STATIC( QICONENGINE_PAINT )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * par2 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->paint ( par1, *par2,  (QIcon::Mode) par3,  (QIcon::State) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPixmap pixmap ( const QSize & size, QIcon::Mode mode, QIcon::State state )
*/
HB_FUNC_STATIC( QICONENGINE_PIXMAP )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


HB_FUNC_STATIC( QICONENGINE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QICONENGINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QICONENGINE_NEWFROM );
}

HB_FUNC_STATIC( QICONENGINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QICONENGINE_NEWFROM );
}

HB_FUNC_STATIC( QICONENGINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QICONENGINE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
