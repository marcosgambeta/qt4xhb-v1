$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QTextItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD ascent
   METHOD descent
   METHOD font
   METHOD renderFlags
   METHOD text
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QTEXTITEM_DELETE )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal ascent () const
*/
HB_FUNC_STATIC( QTEXTITEM_ASCENT )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}

/*
qreal descent () const
*/
HB_FUNC_STATIC( QTEXTITEM_DESCENT )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QTEXTITEM_FONT )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
RenderFlags renderFlags () const
*/
HB_FUNC_STATIC( QTEXTITEM_RENDERFLAGS )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->renderFlags () );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QTEXTITEM_TEXT )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
qreal width () const
*/
HB_FUNC_STATIC( QTEXTITEM_WIDTH )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->width () );
  }
}

$extraMethods

#pragma ENDDUMP
