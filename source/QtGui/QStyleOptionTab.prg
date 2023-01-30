/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QStyleOptionTab INHERIT QStyleOption

   METHOD new
   METHOD shape
   METHOD setShape
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD row
   METHOD setRow
   METHOD position
   METHOD setPosition
   METHOD selectedPosition
   METHOD setSelectedPosition
   METHOD cornerWidgets
   METHOD setCornerWidgets

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTab
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionTab>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QSTYLEOPTIONTAB_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    /*
    QStyleOptionTab()
    */
    QStyleOptionTab * obj = new QStyleOptionTab();
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISNUMPAR( 1 ) && ISQSTYLEOPTIONTAB( 1 ) )
  {
    /*
    QStyleOptionTab( const QStyleOptionTab & other )
    */
    QStyleOptionTab * obj = new QStyleOptionTab( *PQSTYLEOPTIONTAB( 1 ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SHAPE )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETSHAPE )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->shape= ( QTabBar::Shape ) hb_parni( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_TEXT )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETTEXT )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
      obj->text= PQSTRING( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ICON )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      Qt4xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETICON )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && ISQICON( 1 ) )
    {
      obj->icon= *PQICON( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int row
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ROW )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RINT( obj->row );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETROW )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->row= PINT( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
TabPosition position
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_POSITION )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RENUM( obj->position );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETPOSITION )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->position= ( QStyleOptionTab::TabPosition ) hb_parni( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SelectedPosition selectedPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SELECTEDPOSITION )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RENUM( obj->selectedPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETSELECTEDPOSITION )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->selectedPosition= ( QStyleOptionTab::SelectedPosition ) hb_parni( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
CornerWidgets cornerWidgets
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_CORNERWIDGETS )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RENUM( obj->cornerWidgets );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETCORNERWIDGETS )
{
  QStyleOptionTab * obj = static_cast< QStyleOptionTab * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->cornerWidgets= ( QStyleOptionTab::CornerWidgets ) hb_parni( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
