/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsLinearLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addStretch
   METHOD alignment
   METHOD insertItem
   METHOD insertStretch
   METHOD itemSpacing
   METHOD orientation
   METHOD removeItem
   METHOD setAlignment
   METHOD setItemSpacing
   METHOD setOrientation
   METHOD setSpacing
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretchFactor
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsLinearLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsLinearLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
*/
void QGraphicsLinearLayout_new1()
{
  QGraphicsLinearLayout * obj = new QGraphicsLinearLayout( ISNIL(1)? 0 : (QGraphicsLayoutItem *) Qt4xHb::itemGetPtr(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/
void QGraphicsLinearLayout_new2()
{
  QGraphicsLinearLayout * obj = new QGraphicsLinearLayout( (Qt::Orientation) hb_parni(1), ISNIL(2)? 0 : (QGraphicsLayoutItem *) Qt4xHb::itemGetPtr(2) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    QGraphicsLinearLayout_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2)||ISNIL(2)) )
  {
    QGraphicsLinearLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_DELETE )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

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
void addItem( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ADDITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1) )
    {
#endif
      obj->addItem( PQGRAPHICSLAYOUTITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addStretch ( int stretch = 1 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ADDSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      obj->addStretch( OPINT(1,1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment alignment( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1) )
    {
#endif
      RENUM( obj->alignment( PQGRAPHICSLAYOUTITEM(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void insertItem( int index, QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INSERTITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQGRAPHICSLAYOUTITEM(2) )
    {
#endif
      obj->insertItem( PINT(1), PQGRAPHICSLAYOUTITEM(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertStretch ( int index, int stretch = 1 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INSERTSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      obj->insertStretch( PINT(1), OPINT(2,1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal itemSpacing( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->itemSpacing( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ORIENTATION )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeItem( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_REMOVEITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1) )
    {
#endif
      obj->removeItem( PQGRAPHICSLAYOUTITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlignment( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) )
    {
#endif
      obj->setAlignment( PQGRAPHICSLAYOUTITEM(1), (Qt::Alignment) hb_parni(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemSpacing( int index, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setItemSpacing( PINT(1), PQREAL(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETORIENTATION )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOrientation( (Qt::Orientation) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSpacing( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStretchFactor( QGraphicsLayoutItem * item, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETSTRETCHFACTOR )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) )
    {
#endif
      obj->setStretchFactor( PQGRAPHICSLAYOUTITEM(1), PINT(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal spacing() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->spacing() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int stretchFactor( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_STRETCHFACTOR )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1) )
    {
#endif
      RINT( obj->stretchFactor( PQGRAPHICSLAYOUTITEM(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int count() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_COUNT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void invalidate()
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INVALIDATE )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->invalidate();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QGraphicsLayoutItem * itemAt( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ITEMAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QGraphicsLayoutItem * ptr = obj->itemAt( PINT(1) );
      Qt4xHb::createReturnClass( ptr, "QGRAPHICSLAYOUTITEM", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void removeAt( int index )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_REMOVEAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->removeAt( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETGEOMETRY )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
#endif
      obj->setGeometry( *PQRECTF(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SIZEHINT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSIZEF(2)||ISNIL(2)) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->sizeHint( (Qt::SizeHint) hb_parni(1), ISNIL(2)? QSizeF() : *(QSizeF *) Qt4xHb::itemGetPtr(2) ) );
      Qt4xHb::createReturnClass( ptr, "QSIZEF", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
