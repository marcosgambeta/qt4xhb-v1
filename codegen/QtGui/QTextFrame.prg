$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFRAME
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMEFORMAT
#endif

CLASS QTextFrame INHERIT QTextObject

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

$destructor

#pragma BEGINDUMP

#include <QTextFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

$prototype=QTextFrame ( QTextDocument * document )
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=QList<QTextFrame *> childFrames () const
HB_FUNC_STATIC( QTEXTFRAME_CHILDFRAMES )
{
  QTextFrame * obj = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTextFrame *> list = obj->childFrames ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTEXTFRAME" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=QTextCursor firstCursorPosition () const
$method=|QTextCursor|firstCursorPosition|

$prototype=int firstPosition () const
$method=|int|firstPosition|

$prototype=QTextFrameFormat frameFormat () const
$method=|QTextFrameFormat|frameFormat|

$prototype=QTextCursor lastCursorPosition () const
$method=|QTextCursor|lastCursorPosition|

$prototype=int lastPosition () const
$method=|int|lastPosition|

$prototype=QTextFrame * parentFrame () const
$method=|QTextFrame *|parentFrame|

$prototype=void setFrameFormat ( const QTextFrameFormat & format )
$method=|void|setFrameFormat|const QTextFrameFormat &

#pragma ENDDUMP
