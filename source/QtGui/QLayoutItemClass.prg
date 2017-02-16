/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET

CLASS QLayoutItem

   DATA pointer
   DATA class_id INIT Class_Id_QLayoutItem
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QLayoutItem
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QLayoutItem
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QLayoutItem
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QLayoutItem
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QLayoutItem
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QLayoutItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLayoutItem>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
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
    int i = obj->alignment (  );
    hb_retni( i );
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
    int i = obj->controlTypes (  );
    hb_retni( i );
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
    int i = obj->expandingDirections (  );
    hb_retni( i );
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
    QRect * ptr = new QRect( obj->geometry (  ) );
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
    hb_retl( obj->hasHeightForWidth (  ) );
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
    int par1 = hb_parni(1);
    int i = obj->heightForWidth ( par1 );
    hb_retni( i );
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
    obj->invalidate (  );
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
    hb_retl( obj->isEmpty (  ) );
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
    QLayout * ptr = obj->layout (  );
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
    QSize * ptr = new QSize( obj->maximumSize (  ) );
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
    int par1 = hb_parni(1);
    int i = obj->minimumHeightForWidth ( par1 );
    hb_retni( i );
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
    QSize * ptr = new QSize( obj->minimumSize (  ) );
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
    obj->setAlignment (  (Qt::Alignment) par1 );
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
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGeometry ( *par1 );
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
    QSize * ptr = new QSize( obj->sizeHint (  ) );
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
    QSpacerItem * ptr = obj->spacerItem (  );
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
    QWidget * ptr = obj->widget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}




#pragma ENDDUMP
