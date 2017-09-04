$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QTextObjectInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD drawObject
   METHOD intrinsicSize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextObjectInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_DELETE )
{
  QTextObjectInterface * obj = (QTextObjectInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual void drawObject ( QPainter * painter, const QRectF & rect, QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0
*/
HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_DRAWOBJECT )
{
  QTextObjectInterface * obj = (QTextObjectInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->drawObject ( PQPAINTER(1), *PQRECTF(2), PQTEXTDOCUMENT(3), PINT(4), *PQTEXTFORMAT(5) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSizeF intrinsicSize ( QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0
*/
HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_INTRINSICSIZE )
{
  QTextObjectInterface * obj = (QTextObjectInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->intrinsicSize ( PQTEXTDOCUMENT(1), PINT(2), *PQTEXTFORMAT(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

$extraMethods

#pragma ENDDUMP
