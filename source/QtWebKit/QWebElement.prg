/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QVARIANT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QWEBFRAME
#endif

CLASS QWebElement

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addClass
   METHOD appendInside
   METHOD appendOutside
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNames
   METHOD classes
   METHOD clone
   METHOD document
   METHOD encloseContentsWith
   METHOD encloseWith
   METHOD evaluateJavaScript
   METHOD findAll
   METHOD findFirst
   METHOD firstChild
   METHOD geometry
   METHOD hasAttribute
   METHOD hasAttributeNS
   METHOD hasAttributes
   METHOD hasClass
   METHOD hasFocus
   METHOD isNull
   METHOD lastChild
   METHOD localName
   METHOD namespaceUri
   METHOD nextSibling
   METHOD parent
   METHOD prefix
   METHOD prependInside
   METHOD prependOutside
   METHOD previousSibling
   METHOD removeAllChildren
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeClass
   METHOD removeFromDocument
   METHOD render
   METHOD replace
   METHOD setAttribute
   METHOD setAttributeNS
   METHOD setFocus
   METHOD setInnerXml
   METHOD setOuterXml
   METHOD setPlainText
   METHOD setStyleProperty
   METHOD styleProperty
   METHOD tagName
   METHOD takeFromDocument
   METHOD toInnerXml
   METHOD toOuterXml
   METHOD toPlainText
   METHOD toggleClass
   METHOD webFrame

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebElement
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtWebKit/QWebElement>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtWebKit/QWebFrame>

/*
QWebElement()
*/
void QWebElement_new1()
{
  QWebElement * obj = new QWebElement();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QWebElement( const QWebElement & other )
*/
void QWebElement_new2()
{
  QWebElement * obj = new QWebElement( *PQWEBELEMENT(1) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QWEBELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebElement_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWEBELEMENT_DELETE )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

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
void addClass( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_ADDCLASS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->addClass( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendInside( const QString & markup )
*/
void QWebElement_appendInside1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->appendInside( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendInside( const QWebElement & element )
*/
void QWebElement_appendInside2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->appendInside( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_appendInside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_appendInside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendOutside( const QString & markup )
*/
void QWebElement_appendOutside1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->appendOutside( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendOutside( const QWebElement & element )
*/
void QWebElement_appendOutside2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->appendOutside( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_appendOutside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_appendOutside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString attribute( const QString & name, const QString & defaultValue = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
    {
#endif
      RQSTRING( obj->attribute( PQSTRING(1), OPQSTRING(2,QString()) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString attributeNS( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) )
    {
#endif
      RQSTRING( obj->attributeNS( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList attributeNames( const QString & namespaceUri = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTENAMES )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      RQSTRINGLIST( obj->attributeNames( OPQSTRING(1,QString()) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList classes() const
*/
HB_FUNC_STATIC( QWEBELEMENT_CLASSES )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->classes() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement clone() const
*/
HB_FUNC_STATIC( QWEBELEMENT_CLONE )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->clone() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement document() const
*/
HB_FUNC_STATIC( QWEBELEMENT_DOCUMENT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->document() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void encloseContentsWith( const QWebElement & element )
*/
void QWebElement_encloseContentsWith1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->encloseContentsWith( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void encloseContentsWith( const QString & markup )
*/
void QWebElement_encloseContentsWith2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->encloseContentsWith( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH )
{
  if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_encloseContentsWith1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_encloseContentsWith2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void encloseWith( const QString & markup )
*/
void QWebElement_encloseWith1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->encloseWith( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void encloseWith( const QWebElement & element )
*/
void QWebElement_encloseWith2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->encloseWith( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_encloseWith1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_encloseWith2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant evaluateJavaScript( const QString & scriptSource )
*/
HB_FUNC_STATIC( QWEBELEMENT_EVALUATEJAVASCRIPT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->evaluateJavaScript( PQSTRING(1) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElementCollection findAll( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_FINDALL )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QWebElementCollection * ptr = new QWebElementCollection( obj->findAll( PQSTRING(1) ) );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENTCOLLECTION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement findFirst( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_FINDFIRST )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->findFirst( PQSTRING(1) ) );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement firstChild() const
*/
HB_FUNC_STATIC( QWEBELEMENT_FIRSTCHILD )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->firstChild() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QRect geometry() const
*/
HB_FUNC_STATIC( QWEBELEMENT_GEOMETRY )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->geometry() );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasAttribute( const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasAttribute( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasAttributeNS( const QString & namespaceUri, const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      RBOOL( obj->hasAttributeNS( PQSTRING(1), PQSTRING(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasAttributes() const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTES )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasAttributes() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasClass( const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASCLASS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasClass( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasFocus() const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASFOCUS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasFocus() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QWEBELEMENT_ISNULL )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement lastChild() const
*/
HB_FUNC_STATIC( QWEBELEMENT_LASTCHILD )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->lastChild() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString localName() const
*/
HB_FUNC_STATIC( QWEBELEMENT_LOCALNAME )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->localName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString namespaceUri() const
*/
HB_FUNC_STATIC( QWEBELEMENT_NAMESPACEURI )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->namespaceUri() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement nextSibling() const
*/
HB_FUNC_STATIC( QWEBELEMENT_NEXTSIBLING )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->nextSibling() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement parent() const
*/
HB_FUNC_STATIC( QWEBELEMENT_PARENT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->parent() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString prefix() const
*/
HB_FUNC_STATIC( QWEBELEMENT_PREFIX )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->prefix() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void prependInside( const QString & markup )
*/
void QWebElement_prependInside1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->prependInside( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void prependInside( const QWebElement & element )
*/
void QWebElement_prependInside2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->prependInside( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_prependInside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_prependInside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void prependOutside( const QString & markup )
*/
void QWebElement_prependOutside1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->prependOutside( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void prependOutside( const QWebElement & element )
*/
void QWebElement_prependOutside2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->prependOutside( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_prependOutside1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_prependOutside2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebElement previousSibling() const
*/
HB_FUNC_STATIC( QWEBELEMENT_PREVIOUSSIBLING )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->previousSibling() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeAllChildren()
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEALLCHILDREN )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeAllChildren();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAttribute( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->removeAttribute( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAttributeNS( const QString & namespaceUri, const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->removeAttributeNS( PQSTRING(1), PQSTRING(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeClass( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVECLASS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->removeClass( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeFromDocument()
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEFROMDOCUMENT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeFromDocument();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render( QPainter * painter )
*/
void QWebElement_render1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->render( PQPAINTER(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render( QPainter * painter, const QRect & clip )
*/
void QWebElement_render2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->render( PQPAINTER(1), *PQRECT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QWebElement_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECT(2) )
  {
    QWebElement_render2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void replace( const QString & markup )
*/
void QWebElement_replace1()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->replace( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace( const QWebElement & element )
*/
void QWebElement_replace2()
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->replace( *PQWEBELEMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBELEMENT_REPLACE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebElement_replace1();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    QWebElement_replace2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PQSTRING(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttributeNS( const QString & namespaceUri, const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus()
*/
HB_FUNC_STATIC( QWEBELEMENT_SETFOCUS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setFocus();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInnerXml( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETINNERXML )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setInnerXml( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOuterXml( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETOUTERXML )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setOuterXml( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlainText( const QString & text )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETPLAINTEXT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPlainText( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyleProperty( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETSTYLEPROPERTY )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setStyleProperty( PQSTRING(1), PQSTRING(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString styleProperty( const QString & name, QWebElement::StyleResolveStrategy strategy ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_STYLEPROPERTY )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
#endif
      RQSTRING( obj->styleProperty( PQSTRING(1), (QWebElement::StyleResolveStrategy) hb_parni(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString tagName() const
*/
HB_FUNC_STATIC( QWEBELEMENT_TAGNAME )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->tagName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement & takeFromDocument()
*/
HB_FUNC_STATIC( QWEBELEMENT_TAKEFROMDOCUMENT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebElement * ptr = &obj->takeFromDocument();
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString toInnerXml() const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOINNERXML )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toInnerXml() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString toOuterXml() const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOOUTERXML )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toOuterXml() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString toPlainText() const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOPLAINTEXT )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toPlainText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void toggleClass( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_TOGGLECLASS )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->toggleClass( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWebFrame * webFrame() const
*/
HB_FUNC_STATIC( QWEBELEMENT_WEBFRAME )
{
  QWebElement * obj = (QWebElement *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebFrame * ptr = obj->webFrame();
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBFRAME" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QWEBELEMENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWEBELEMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBELEMENT_NEWFROM );
}

HB_FUNC_STATIC( QWEBELEMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBELEMENT_NEWFROM );
}

HB_FUNC_STATIC( QWEBELEMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBELEMENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
