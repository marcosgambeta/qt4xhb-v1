/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSPLITTER
REQUEST QSIZE
#endif

CLASS QSplitterHandle INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD opaqueResize
   METHOD orientation
   METHOD setOrientation
   METHOD splitter
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSplitterHandle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSplitterHandle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_NEW )
{
  QSplitterHandle * o = new QSplitterHandle ( (Qt::Orientation) hb_parni(1), PQSPLITTER(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
bool opaqueResize () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_OPAQUERESIZE )
{
  QSplitterHandle * obj = (QSplitterHandle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->opaqueResize () );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_ORIENTATION )
{
  QSplitterHandle * obj = (QSplitterHandle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->orientation () );
  }
}

/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SETORIENTATION )
{
  QSplitterHandle * obj = (QSplitterHandle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSplitter * splitter () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SPLITTER )
{
  QSplitterHandle * obj = (QSplitterHandle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSplitter * ptr = obj->splitter ();
    _qt4xhb_createReturnClass ( ptr, "QSPLITTER" );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SIZEHINT )
{
  QSplitterHandle * obj = (QSplitterHandle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
