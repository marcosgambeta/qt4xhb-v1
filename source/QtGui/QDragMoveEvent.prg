/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QDragMoveEvent INHERIT QDropEvent

   METHOD new
   METHOD delete
   METHOD accept
   METHOD answerRect
   METHOD ignore

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDragMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QDragMoveEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

/*
QDragMoveEvent( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type = QEvent::DragMove )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_NEW )
{
  if( ISBETWEEN(5, 6) && ISQPOINT(1) && HB_ISNUM(2) && ISQMIMEDATA(3) && HB_ISNUM(4) && HB_ISNUM(5) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    QDragMoveEvent * obj = new QDragMoveEvent( *PQPOINT(1), ( Qt::DropActions ) hb_parni(2), PQMIMEDATA(3), ( Qt::MouseButtons ) hb_parni(4), ( Qt::KeyboardModifiers ) hb_parni(5), HB_ISNIL(6) ? ( QEvent::Type ) QEvent::DragMove : ( QEvent::Type ) hb_parni(6) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_DELETE )
{
  QDragMoveEvent * obj = static_cast<QDragMoveEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void accept( const QRect & rectangle )
    */
    QDragMoveEvent * obj = static_cast<QDragMoveEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->accept( *PQRECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(0) )
  {
    /*
    void accept()
    */
    QDragMoveEvent * obj = static_cast<QDragMoveEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->accept();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRect answerRect() const
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ANSWERRECT )
{
  QDragMoveEvent * obj = static_cast<QDragMoveEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->answerRect() );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void ignore( const QRect & rectangle )
    */
    QDragMoveEvent * obj = static_cast<QDragMoveEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->ignore( *PQRECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(0) )
  {
    /*
    void ignore()
    */
    QDragMoveEvent * obj = static_cast<QDragMoveEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->ignore();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
