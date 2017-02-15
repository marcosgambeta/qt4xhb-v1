/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QWEBELEMENT
REQUEST QWEBFRAME
REQUEST QURL
REQUEST QPIXMAP
REQUEST QPOINT

CLASS QWebHitTestResult

   DATA pointer
   DATA class_id INIT Class_Id_QWebHitTestResult
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alternateText
   METHOD boundingRect
   METHOD element
   METHOD enclosingBlockElement
   METHOD frame
   METHOD imageUrl
   METHOD isContentEditable
   METHOD isContentSelected
   METHOD isNull
   METHOD linkElement
   METHOD linkTargetFrame
   METHOD linkText
   METHOD linkTitle
   METHOD linkUrl
   METHOD pixmap
   METHOD pos
   METHOD title
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QWebHitTestResult
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QWebHitTestResult
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QWebHitTestResult
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QWebHitTestResult
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QWebHitTestResult
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QWebHitTestResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWebHitTestResult>

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

#include <QWebElement>

/*
QWebHitTestResult ()
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW1 )
{
  QWebHitTestResult * o = NULL;
  o = new QWebHitTestResult (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebHitTestResult *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QWebHitTestResult ( const QWebHitTestResult & other )
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW2 )
{
  QWebHitTestResult * o = NULL;
  QWebHitTestResult * par1 = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QWebHitTestResult ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebHitTestResult *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QWebHitTestResult ()
//[2]QWebHitTestResult ( const QWebHitTestResult & other )

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBHITTESTRESULT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWEBHITTESTRESULT(1) )
  {
    HB_FUNC_EXEC( QWEBHITTESTRESULT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWEBHITTESTRESULT_DELETE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString alternateText () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ALTERNATETEXT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->alternateText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QRect boundingRect () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_BOUNDINGRECT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QWebElement element () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ELEMENT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->element (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement enclosingBlockElement () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ENCLOSINGBLOCKELEMENT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->enclosingBlockElement (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebFrame * frame () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_FRAME )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->frame (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QUrl imageUrl () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_IMAGEURL )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->imageUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
bool isContentEditable () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ISCONTENTEDITABLE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isContentEditable (  );
    hb_retl( b );
  }
}


/*
bool isContentSelected () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ISCONTENTSELECTED )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isContentSelected (  );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ISNULL )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
QWebElement linkElement () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKELEMENT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->linkElement (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebFrame * linkTargetFrame () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKTARGETFRAME )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->linkTargetFrame (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QString linkText () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKTEXT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->linkText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUrl linkTitle () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKTITLE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->linkTitle (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QUrl linkUrl () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKURL )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->linkUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_PIXMAP )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPoint pos () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_POS )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_TITLE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
