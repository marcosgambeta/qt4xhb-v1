$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QWidgetItem INHERIT QLayoutItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWidgetItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWidgetItem ( QWidget * widget )
*/
HB_FUNC_STATIC( QWIDGETITEM_NEW )
{
  QWidgetItem * o = new QWidgetItem ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QWIDGETITEM_DELETE )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QWIDGETITEM_EXPANDINGDIRECTIONS )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->expandingDirections () );
  }
}

/*
virtual QRect geometry () const
*/
HB_FUNC_STATIC( QWIDGETITEM_GEOMETRY )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QWIDGETITEM_HASHEIGHTFORWIDTH )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QWIDGETITEM_HEIGHTFORWIDTH )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}

/*
virtual bool isEmpty () const
*/
HB_FUNC_STATIC( QWIDGETITEM_ISEMPTY )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QWIDGETITEM_MAXIMUMSIZE )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QWIDGETITEM_MINIMUMSIZE )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QWIDGETITEM_SETGEOMETRY )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWIDGETITEM_SIZEHINT )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QWidget * widget ()
*/
HB_FUNC_STATIC( QWIDGETITEM_WIDGET )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

#pragma ENDDUMP
