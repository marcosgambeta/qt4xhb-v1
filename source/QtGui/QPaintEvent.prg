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
REQUEST QREGION
#endif

CLASS QPaintEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD rect
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPaintEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPaintEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QPAINTEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    /*
    QPaintEvent( const QRegion & paintRegion )
    */
    QPaintEvent * obj = new QPaintEvent( *PQREGION(1) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    QPaintEvent( const QRect & paintRect )
    */
    QPaintEvent * obj = new QPaintEvent( *PQRECT(1) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPAINTEVENT_DELETE )
{
  QPaintEvent * obj = static_cast<QPaintEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

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

/*
const QRect & rect() const
*/
HB_FUNC_STATIC( QPAINTEVENT_RECT )
{
  QPaintEvent * obj = static_cast<QPaintEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QRect * ptr = &obj->rect();
      Qt4xHb::createReturnClass(ptr, "QRECT", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const QRegion & region() const
*/
HB_FUNC_STATIC( QPAINTEVENT_REGION )
{
  QPaintEvent * obj = static_cast<QPaintEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QRegion * ptr = &obj->region();
      Qt4xHb::createReturnClass(ptr, "QREGION", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
