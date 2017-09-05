$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFORMAT
REQUEST QRECTF
#endif

CLASS QTextInlineObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD descent
   METHOD format
   METHOD formatIndex
   METHOD height
   METHOD isValid
   METHOD rect
   METHOD setAscent
   METHOD setDescent
   METHOD setWidth
   METHOD textDirection
   METHOD textPosition
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextInlineObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextInlineObject ( int i, QTextEngine * e )
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
  QTextInlineObject * o = new QTextInlineObject ( PINT(1), PQTEXTENGINE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal ascent () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}

/*
qreal descent () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_DESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}

/*
QTextFormat format () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMAT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
  }
}

/*
int formatIndex () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMATINDEX )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->formatIndex () );
  }
}

/*
qreal height () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_HEIGHT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->height () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ISVALID )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
QRectF rect () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_RECT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setAscent ( qreal a )
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAscent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDescent ( qreal d )
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETDESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDescent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidth ( qreal w )
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETWIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::LayoutDirection textDirection () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTDIRECTION )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textDirection () );
  }
}

/*
int textPosition () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTPOSITION )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->textPosition () );
  }
}

/*
qreal width () const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_WIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->width () );
  }
}

$extraMethods

#pragma ENDDUMP
