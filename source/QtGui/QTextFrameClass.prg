/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFRAME
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMEFORMAT
#endif

CLASS QTextFrame INHERIT QTextObject

   DATA class_id INIT Class_Id_QTextFrame
   DATA self_destruction INIT .f.

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
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

/*
QTextFrame ( QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTFRAME_NEW )
{
  QTextFrame * o = NULL;
  QTextDocument * par1 = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextFrame ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFrame *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    QList<QTextFrame *> list = obj->childFrames (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTFRAME" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTFRAME" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    QTextCursor * ptr = new QTextCursor( obj->firstCursorPosition (  ) );
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
    hb_retni( obj->firstPosition (  ) );
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
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->frameFormat (  ) );
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
    QTextCursor * ptr = new QTextCursor( obj->lastCursorPosition (  ) );
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
    hb_retni( obj->lastPosition (  ) );
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
    QTextFrame * ptr = obj->parentFrame (  );
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
    QTextFrameFormat * par1 = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFrameFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
