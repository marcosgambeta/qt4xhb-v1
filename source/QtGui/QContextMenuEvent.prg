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

CLASS QContextMenuEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QContextMenuEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QContextMenuEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QContextMenuEvent( QContextMenuEvent::Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
*/
void QContextMenuEvent_new1()
{
  QContextMenuEvent * obj = new QContextMenuEvent( ( QContextMenuEvent::Reason ) hb_parni( 1 ), *PQPOINT( 2 ), *PQPOINT( 3 ), ( Qt::KeyboardModifiers ) hb_parni( 4 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QContextMenuEvent( QContextMenuEvent::Reason reason, const QPoint & pos, const QPoint & globalPos )
*/
void QContextMenuEvent_new2()
{
  QContextMenuEvent * obj = new QContextMenuEvent( ( QContextMenuEvent::Reason ) hb_parni( 1 ), *PQPOINT( 2 ), *PQPOINT( 3 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QContextMenuEvent( QContextMenuEvent::Reason reason, const QPoint & pos )
*/
void QContextMenuEvent_new3()
{
  QContextMenuEvent * obj = new QContextMenuEvent( ( QContextMenuEvent::Reason ) hb_parni( 1 ), *PQPOINT( 2 ) );
  Qt4xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR( 4 ) && ISNUM( 1 ) && ISQPOINT( 2 ) && ISQPOINT( 3 ) && ISNUM( 4 ) )
  {
    QContextMenuEvent_new1();
  }
  else if( ISNUMPAR( 3 ) && ISNUM( 1 ) && ISQPOINT( 2 ) && ISQPOINT( 3 ) )
  {
    QContextMenuEvent_new2();
  }
  else if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISQPOINT( 2 ) )
  {
    QContextMenuEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCONTEXTMENUEVENT_DELETE )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
const QPoint & globalPos() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALPOS )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
int globalX() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALX )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALY )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
const QPoint & pos() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_POS )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
QContextMenuEvent::Reason reason() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_REASON )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->reason() );
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
HB_FUNC_STATIC( QCONTEXTMENUEVENT_X )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
HB_FUNC_STATIC( QCONTEXTMENUEVENT_Y )
{
  QContextMenuEvent * obj = static_cast< QContextMenuEvent * >( Qt4xHb::itemGetPtrStackSelfItem() );

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

#pragma ENDDUMP
