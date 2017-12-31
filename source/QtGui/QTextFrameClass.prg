/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFRAME
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMEFORMAT
#endif

CLASS QTextFrame INHERIT QTextObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD childFrames
   METHOD firstCursorPosition
   METHOD firstPosition
   METHOD frameFormat
   METHOD lastCursorPosition
   METHOD lastPosition
   METHOD parentFrame
   METHOD setFrameFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

/*
QTextFrame ( QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTFRAME_NEW )
{
  QTextFrame * o = new QTextFrame ( PQTEXTDOCUMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTEXTFRAME_DELETE )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QList<QTextFrame *> childFrames () const
*/
HB_FUNC_STATIC( QTEXTFRAME_CHILDFRAMES )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QTextFrame *> list = obj->childFrames ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTEXTFRAME" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTextFrame *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QTextCursor firstCursorPosition () const
*/
HB_FUNC_STATIC( QTEXTFRAME_FIRSTCURSORPOSITION )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->firstCursorPosition () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
int firstPosition () const
*/
HB_FUNC_STATIC( QTEXTFRAME_FIRSTPOSITION )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->firstPosition () );
  }
}

/*
QTextFrameFormat frameFormat () const
*/
HB_FUNC_STATIC( QTEXTFRAME_FRAMEFORMAT )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->frameFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAMEFORMAT" );
  }
}

/*
QTextCursor lastCursorPosition () const
*/
HB_FUNC_STATIC( QTEXTFRAME_LASTCURSORPOSITION )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->lastCursorPosition () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
int lastPosition () const
*/
HB_FUNC_STATIC( QTEXTFRAME_LASTPOSITION )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lastPosition () );
  }
}

/*
QTextFrame * parentFrame () const
*/
HB_FUNC_STATIC( QTEXTFRAME_PARENTFRAME )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrame * ptr = obj->parentFrame ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}

/*
void setFrameFormat ( const QTextFrameFormat & format )
*/
HB_FUNC_STATIC( QTEXTFRAME_SETFRAMEFORMAT )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrameFormat ( *PQTEXTFRAMEFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
