$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET
#endif

CLASS QLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD alignment
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setAlignment
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem
   METHOD widget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLayoutItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLayoutItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QLAYOUTITEM_DELETE )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_ALIGNMENT )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
QSizePolicy::ControlTypes controlTypes () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_CONTROLTYPES )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->controlTypes () );
  }
}

/*
virtual Qt::Orientations expandingDirections () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_EXPANDINGDIRECTIONS )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->expandingDirections () );
  }
}

/*
virtual QRect geometry () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_GEOMETRY )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QLAYOUTITEM_HASHEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasHeightForWidth () );
  }
}

/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLAYOUTITEM_HEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_INVALIDATE )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEmpty () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_ISEMPTY )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
virtual QLayout * layout ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_LAYOUT )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * ptr = obj->layout ();
    _qt4xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
virtual QSize maximumSize () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_MAXIMUMSIZE )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual int minimumHeightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLAYOUTITEM_MINIMUMHEIGHTFORWIDTH )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minimumHeightForWidth ( PINT(1) ) );
  }
}

/*
virtual QSize minimumSize () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_MINIMUMSIZE )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUTITEM_SETALIGNMENT )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRect & r ) = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_SETGEOMETRY )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const = 0
*/
HB_FUNC_STATIC( QLAYOUTITEM_SIZEHINT )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSpacerItem * spacerItem ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_SPACERITEM )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSpacerItem * ptr = obj->spacerItem ();
    _qt4xhb_createReturnClass ( ptr, "QSPACERITEM" );
  }
}

/*
virtual QWidget * widget ()
*/
HB_FUNC_STATIC( QLAYOUTITEM_WIDGET )
{
  QLayoutItem * obj = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

$extraMethods

#pragma ENDDUMP
