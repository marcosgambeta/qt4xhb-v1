/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QMARGINS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QLayout INHERIT QObject,QLayoutItem

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
   METHOD setAlignment
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

PROCEDURE destroyObject() CLASS QLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
bool activate()
*/
HB_FUNC_STATIC( QLAYOUT_ACTIVATE )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->activate() );
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
virtual void addItem( QLayoutItem * item ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_ADDITEM )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQLAYOUTITEM( 1 ) )
    {
#endif
      obj->addItem( PQLAYOUTITEM( 1 ) );
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
void addWidget( QWidget * w )
*/
HB_FUNC_STATIC( QLAYOUT_ADDWIDGET )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      obj->addWidget( PQWIDGET( 1 ) );
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
QMargins contentsMargins() const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSMARGINS )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QMargins * ptr = new QMargins( obj->contentsMargins() );
      Qt4xHb::createReturnClass( ptr, "QMARGINS", true );
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
QRect contentsRect() const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSRECT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QRect * ptr = new QRect( obj->contentsRect() );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
virtual int count() const = 0
*/
HB_FUNC_STATIC( QLAYOUT_COUNT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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
virtual Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QLAYOUT_EXPANDINGDIRECTIONS )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->expandingDirections() );
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
void getContentsMargins( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QLAYOUT_GETCONTENTSMARGINS )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) )
    {
#endif
      int par1;
      int par2;
      int par3;
      int par4;
      obj->getContentsMargins( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
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
virtual int indexOf( QWidget * widget ) const
*/
HB_FUNC_STATIC( QLAYOUT_INDEXOF )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      RINT( obj->indexOf( PQWIDGET( 1 ) ) );
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
bool isEnabled() const
*/
HB_FUNC_STATIC( QLAYOUT_ISENABLED )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isEnabled() );
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
virtual QLayoutItem * itemAt( int index ) const = 0
*/
HB_FUNC_STATIC( QLAYOUT_ITEMAT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      QLayoutItem * ptr = obj->itemAt( PINT( 1 ) );
      Qt4xHb::createReturnClass( ptr, "QLAYOUTITEM", false );
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
virtual QSize maximumSize() const
*/
HB_FUNC_STATIC( QLAYOUT_MAXIMUMSIZE )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->maximumSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
QWidget * menuBar() const
*/
HB_FUNC_STATIC( QLAYOUT_MENUBAR )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWidget * ptr = obj->menuBar();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
virtual QSize minimumSize() const
*/
HB_FUNC_STATIC( QLAYOUT_MINIMUMSIZE )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
QWidget * parentWidget() const
*/
HB_FUNC_STATIC( QLAYOUT_PARENTWIDGET )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWidget * ptr = obj->parentWidget();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void removeItem( QLayoutItem * item )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEITEM )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQLAYOUTITEM( 1 ) )
    {
#endif
      obj->removeItem( PQLAYOUTITEM( 1 ) );
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
void removeWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEWIDGET )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      obj->removeWidget( PQWIDGET( 1 ) );
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

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR( 2 ) && ISQWIDGET( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    bool setAlignment( QWidget * w, Qt::Alignment alignment )
    */
    QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      RBOOL( obj->setAlignment( PQWIDGET( 1 ), ( Qt::Alignment ) hb_parni( 2 ) ) );
    }
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    /*
    void setAlignment( Qt::Alignment alignment )
    */
    QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setAlignment( ( Qt::Alignment ) hb_parni( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 2 ) && ISQLAYOUT( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    bool setAlignment( QLayout * l, Qt::Alignment alignment )
    */
    QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      RBOOL( obj->setAlignment( PQLAYOUT( 1 ), ( Qt::Alignment ) hb_parni( 2 ) ) );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR( 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) )
  {
    /*
    void setContentsMargins( int left, int top, int right, int bottom )
    */
    QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setContentsMargins( PINT( 1 ), PINT( 2 ), PINT( 3 ), PINT( 4 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 1 ) && ISQMARGINS( 1 ) )
  {
    /*
    void setContentsMargins( const QMargins & margins )
    */
    QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

    if( obj != NULL )
    {
      obj->setContentsMargins( *PQMARGINS( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEnabled( bool enable )
*/
HB_FUNC_STATIC( QLAYOUT_SETENABLED )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setEnabled( PBOOL( 1 ) );
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
void setMenuBar( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_SETMENUBAR )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      obj->setMenuBar( PQWIDGET( 1 ) );
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
void setSizeConstraint( QLayout::SizeConstraint )
*/
HB_FUNC_STATIC( QLAYOUT_SETSIZECONSTRAINT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setSizeConstraint( ( QLayout::SizeConstraint ) hb_parni( 1 ) );
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
void setSpacing( int )
*/
HB_FUNC_STATIC( QLAYOUT_SETSPACING )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setSpacing( PINT( 1 ) );
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
QLayout::SizeConstraint sizeConstraint() const
*/
HB_FUNC_STATIC( QLAYOUT_SIZECONSTRAINT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->sizeConstraint() );
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
int spacing() const
*/
HB_FUNC_STATIC( QLAYOUT_SPACING )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->spacing() );
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
virtual QLayoutItem * takeAt( int index ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_TAKEAT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      QLayoutItem * ptr = obj->takeAt( PINT( 1 ) );
      Qt4xHb::createReturnClass( ptr, "QLAYOUTITEM", false );
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
void update()
*/
HB_FUNC_STATIC( QLAYOUT_UPDATE )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->update();
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
virtual QRect geometry() const
*/
HB_FUNC_STATIC( QLAYOUT_GEOMETRY )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QRect * ptr = new QRect( obj->geometry() );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
HB_FUNC_STATIC( QLAYOUT_INVALIDATE )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QLAYOUT_ISEMPTY )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
virtual QLayout * layout()
*/
HB_FUNC_STATIC( QLAYOUT_LAYOUT )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QLayout * ptr = obj->layout();
      Qt4xHb::createReturnQObjectClass( ptr, "QLAYOUT" );
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
virtual void setGeometry( const QRect & r )
*/
HB_FUNC_STATIC( QLAYOUT_SETGEOMETRY )
{
  QLayout * obj = qobject_cast< QLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQRECT( 1 ) )
    {
#endif
      obj->setGeometry( *PQRECT( 1 ) );
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
static QSize closestAcceptableSize( const QWidget * widget, const QSize & size )
*/
HB_FUNC_STATIC( QLAYOUT_CLOSESTACCEPTABLESIZE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 2 ) && ISQWIDGET( 1 ) && ISQSIZE( 2 ) )
  {
#endif
    QSize * ptr = new QSize( QLayout::closestAcceptableSize( PQWIDGET( 1 ), *PQSIZE( 2 ) ) );
    Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
