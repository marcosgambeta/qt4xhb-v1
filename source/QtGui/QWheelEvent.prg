/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QWheelEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD delta
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD buttons
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWheelEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QWheelEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWheelEvent( const QPoint & pos, int delta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::Orientation orient = Qt::Vertical )
*/
void QWheelEvent_new1()
{
  QWheelEvent * obj = new QWheelEvent( *PQPOINT( 1 ), PINT( 2 ), ( Qt::MouseButtons ) hb_parni( 3 ), ( Qt::KeyboardModifiers ) hb_parni( 4 ), ISNIL( 5 ) ? ( Qt::Orientation ) Qt::Vertical : ( Qt::Orientation ) hb_parni( 5 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QWheelEvent( const QPoint & pos, const QPoint & globalPos, int delta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::Orientation orient = Qt::Vertical )
*/
void QWheelEvent_new2()
{
  QWheelEvent * obj = new QWheelEvent( *PQPOINT( 1 ), *PQPOINT( 2 ), PINT( 3 ), ( Qt::MouseButtons ) hb_parni( 4 ), ( Qt::KeyboardModifiers ) hb_parni( 5 ), ISNIL( 6 ) ? ( Qt::Orientation ) Qt::Vertical : ( Qt::Orientation ) hb_parni( 6 ) );
  Qt4xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN( 4, 5 ) && ISQPOINT( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) && ( ISNUM( 5 ) || ISNIL( 5 ) ) )
  {
    QWheelEvent_new1();
  }
  else if( ISBETWEEN( 5, 6 ) && ISQPOINT( 1 ) && ISQPOINT( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) && ISNUM( 5 ) && ( ISNUM( 6 ) || ISNIL( 6 ) ) )
  {
    QWheelEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWHEELEVENT_DELETE )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
int delta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_DELTA )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->delta() );
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
const QPoint & pos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POS )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      const QPoint * ptr = &obj->pos();
      Qt4xHb::createReturnClass( ptr, "QPOINT", false );
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
const QPoint & globalPos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOS )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      const QPoint * ptr = &obj->globalPos();
      Qt4xHb::createReturnClass( ptr, "QPOINT", false );
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
int x() const
*/
HB_FUNC_STATIC( QWHEELEVENT_X )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->x() );
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
int y() const
*/
HB_FUNC_STATIC( QWHEELEVENT_Y )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->y() );
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
int globalX() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALX )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->globalX() );
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
int globalY() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALY )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->globalY() );
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
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QWHEELEVENT_BUTTONS )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->buttons() );
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
HB_FUNC_STATIC( QWHEELEVENT_ORIENTATION )
{
  QWheelEvent * obj = static_cast< QWheelEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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

#pragma ENDDUMP
