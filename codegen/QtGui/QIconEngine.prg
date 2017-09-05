$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIconEngine

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QIconEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QSize actualSize ( const QSize & size, QIcon::Mode mode, QIcon::State state )
*/
HB_FUNC_STATIC( QICONENGINE_ACTUALSIZE )
{
  QIconEngine * obj = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QSize * ptr = new QSize( obj->actualSize ( *PQSIZE(1), (QIcon::Mode) par2, (QIcon::State) par3 ) );
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
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->addFile ( PQSTRING(1), *PQSIZE(2), (QIcon::Mode) par3, (QIcon::State) par4 );
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
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->addPixmap ( *PQPIXMAP(1), (QIcon::Mode) par2, (QIcon::State) par3 );
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
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->paint ( PQPAINTER(1), *PQRECT(2), (QIcon::Mode) par3, (QIcon::State) par4 );
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
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( *PQSIZE(1), (QIcon::Mode) par2, (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

$extraMethods

#pragma ENDDUMP
