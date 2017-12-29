/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QLAYOUT
#endif

CLASS QLayout INHERIT QObject,QLayoutItem

   DATA self_destruction INIT .F.

   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD expandingDirections
   METHOD getContentsMargins
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD maximumSize
   METHOD menuBar
   METHOD minimumSize
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment1
   METHOD setAlignment2
   METHOD setAlignment3
   METHOD setAlignment
   METHOD setContentsMargins1
   METHOD setContentsMargins2
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD setGeometry
   METHOD closestAcceptableSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

//[1]QLayout ( QWidget * parent )
//[2]QLayout ()

// HB_FUNC_STATIC( QLAYOUT_NEW )
// {
//   if( ISNUMPAR(1) && ISQWIDGET(1) )
//   {
//     HB_FUNC_EXEC( QLAYOUT_NEW1 );
//   }
//   else if( ISNUMPAR(0) )
//   {
//     HB_FUNC_EXEC( QLAYOUT_NEW2 );
//   }
//  else
//  {
//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//  }
// }

/*
bool activate ()
*/
HB_FUNC_STATIC( QLAYOUT_ACTIVATE )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->activate () );
  }
}

/*
virtual void addItem ( QLayoutItem * item ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_ADDITEM )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * w )
*/
HB_FUNC_STATIC( QLAYOUT_ADDWIDGET )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMargins contentsMargins () const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSMARGINS )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->contentsMargins () );
    _qt4xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

/*
QRect contentsRect () const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSRECT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->contentsRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QLAYOUT_COUNT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QLAYOUT_EXPANDINGDIRECTIONS )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->expandingDirections () );
  }
}

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QLAYOUT_GETCONTENTSMARGINS )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QLAYOUT_INDEXOF )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( PQWIDGET(1) ) );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QLAYOUT_ISENABLED )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}

/*
virtual QLayoutItem * itemAt ( int index ) const = 0
*/
HB_FUNC_STATIC( QLAYOUT_ITEMAT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

/*
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QLAYOUT_MAXIMUMSIZE )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QWidget * menuBar () const
*/
HB_FUNC_STATIC( QLAYOUT_MENUBAR )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->menuBar ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QLAYOUT_MINIMUMSIZE )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QLAYOUT_PARENTWIDGET )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void removeItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEITEM )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEWIDGET )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setAlignment ( QWidget * w, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT1 )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    RBOOL( obj->setAlignment ( PQWIDGET(1), (Qt::Alignment) par2 ) );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT2 )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT3 )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    RBOOL( obj->setAlignment ( PQLAYOUT(1), (Qt::Alignment) par2 ) );
  }
}

//[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
//[2]void setAlignment ( Qt::Alignment alignment )
//[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT2 );
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT3 );
  }
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS1 )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContentsMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( const QMargins & margins )
*/
HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS2 )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContentsMargins ( *PQMARGINS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETCONTENTSMARGINS1 );
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETCONTENTSMARGINS2 );
  }
}

/*
void setEnabled ( bool enable )
*/
HB_FUNC_STATIC( QLAYOUT_SETENABLED )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuBar ( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_SETMENUBAR )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMenuBar ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeConstraint ( SizeConstraint )
*/
HB_FUNC_STATIC( QLAYOUT_SETSIZECONSTRAINT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSizeConstraint ( (QLayout::SizeConstraint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( int )
*/
HB_FUNC_STATIC( QLAYOUT_SETSPACING )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSpacing ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
SizeConstraint sizeConstraint () const
*/
HB_FUNC_STATIC( QLAYOUT_SIZECONSTRAINT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->sizeConstraint () );
  }
}

/*
int spacing () const
*/
HB_FUNC_STATIC( QLAYOUT_SPACING )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->spacing () );
  }
}

/*
virtual QLayoutItem * takeAt ( int index ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_TAKEAT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayoutItem * ptr = obj->takeAt ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

/*
void update ()
*/
HB_FUNC_STATIC( QLAYOUT_UPDATE )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRect geometry () const
*/
HB_FUNC_STATIC( QLAYOUT_GEOMETRY )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QLAYOUT_INVALIDATE )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEmpty () const
*/
HB_FUNC_STATIC( QLAYOUT_ISEMPTY )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
virtual QLayout * layout ()
*/
HB_FUNC_STATIC( QLAYOUT_LAYOUT )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLayout * ptr = obj->layout ();
    _qt4xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
virtual void setGeometry ( const QRect & r )
*/
HB_FUNC_STATIC( QLAYOUT_SETGEOMETRY )
{
  QLayout * obj = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize closestAcceptableSize ( const QWidget * widget, const QSize & size )
*/
HB_FUNC_STATIC( QLAYOUT_CLOSESTACCEPTABLESIZE )
{
  const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QSize * ptr = new QSize( QLayout::closestAcceptableSize ( par1, *PQSIZE(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
}

#pragma ENDDUMP
