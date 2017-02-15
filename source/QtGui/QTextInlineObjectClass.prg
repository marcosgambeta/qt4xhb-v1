/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTFORMAT
REQUEST QRECTF

CLASS QTextInlineObject

   DATA pointer
   DATA class_id INIT Class_Id_QTextInlineObject
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QTextInlineObject
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextInlineObject
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextInlineObject
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextInlineObject
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextInlineObject
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextInlineObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextInlineObject>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextInlineObject ( int i, QTextEngine * e )
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
  QTextInlineObject * o = NULL;
  int par1 = hb_parni(1);
  QTextEngine * par2 = (QTextEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextInlineObject ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextInlineObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTEXTINLINEOBJECT_DELETE )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->ascent (  );
    hb_retnd( r );
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
    qreal r = obj->descent (  );
    hb_retnd( r );
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
    QTextFormat * ptr = new QTextFormat( obj->format (  ) );
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
    int i = obj->formatIndex (  );
    hb_retni( i );
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
    qreal r = obj->height (  );
    hb_retnd( r );
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
    bool b = obj->isValid (  );
    hb_retl( b );
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
    QRectF * ptr = new QRectF( obj->rect (  ) );
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
    qreal par1 = hb_parnd(1);
    obj->setAscent ( par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setDescent ( par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
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
    int i = obj->textDirection (  );
    hb_retni( i );
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
    int i = obj->textPosition (  );
    hb_retni( i );
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
    qreal r = obj->width (  );
    hb_retnd( r );
  }
}




#pragma ENDDUMP
