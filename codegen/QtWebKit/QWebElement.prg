$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBELEMENT
REQUEST QVARIANT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QRECT
REQUEST QWEBFRAME
#endif

CLASS QWebElement

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addClass
   METHOD appendInside1
   METHOD appendInside2
   METHOD appendInside
   METHOD appendOutside1
   METHOD appendOutside2
   METHOD appendOutside
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNames
   METHOD classes
   METHOD clone
   METHOD document
   METHOD encloseContentsWith1
   METHOD encloseContentsWith2
   METHOD encloseContentsWith
   METHOD encloseWith1
   METHOD encloseWith2
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
   METHOD prependInside1
   METHOD prependInside2
   METHOD prependInside
   METHOD prependOutside1
   METHOD prependOutside2
   METHOD prependOutside
   METHOD previousSibling
   METHOD removeAllChildren
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeClass
   METHOD removeFromDocument
   METHOD render1
   METHOD render2
   METHOD render
   METHOD replace1
   METHOD replace2
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

$destructor

#pragma BEGINDUMP

#include <QWebElement>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWebElement ()
*/
HB_FUNC_STATIC( QWEBELEMENT_NEW1 )
{
  QWebElement * o = new QWebElement ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QWebElement ( const QWebElement & other )
*/
HB_FUNC_STATIC( QWEBELEMENT_NEW2 )
{
  QWebElement * o = new QWebElement ( *PQWEBELEMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QWebElement ()
//[2]QWebElement ( const QWebElement & other )

HB_FUNC_STATIC( QWEBELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addClass ( const QString & name )
*/
$method=|void|addClass|const QString &

/*
void appendInside ( const QString & markup )
*/
$method=|void|appendInside,appendInside1|const QString &

/*
void appendInside ( const QWebElement & element )
*/
$method=|void|appendInside,appendInside2|const QWebElement &

//[1]void appendInside ( const QString & markup )
//[2]void appendInside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDINSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDINSIDE2 );
  }
}

/*
void appendOutside ( const QString & markup )
*/
$method=|void|appendOutside,appendOutside1|const QString &

/*
void appendOutside ( const QWebElement & element )
*/
$method=|void|appendOutside,appendOutside2|const QWebElement &

//[1]void appendOutside ( const QString & markup )
//[2]void appendOutside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDOUTSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDOUTSIDE2 );
  }
}

/*
QString attribute ( const QString & name, const QString & defaultValue = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->attribute ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
}

/*
QString attributeNS ( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->attributeNS ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) ) );
  }
}

/*
QStringList attributeNames ( const QString & namespaceUri = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTENAMES )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->attributeNames ( OPQSTRING(1,QString()) ) );
  }
}

/*
QStringList classes () const
*/
HB_FUNC_STATIC( QWEBELEMENT_CLASSES )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->classes () );
  }
}

/*
QWebElement clone () const
*/
HB_FUNC_STATIC( QWEBELEMENT_CLONE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->clone () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}

/*
QWebElement document () const
*/
HB_FUNC_STATIC( QWEBELEMENT_DOCUMENT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->document () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}

/*
void encloseContentsWith ( const QWebElement & element )
*/
$method=|void|encloseContentsWith,encloseContentsWith1|const QWebElement &

/*
void encloseContentsWith ( const QString & markup )
*/
$method=|void|encloseContentsWith,encloseContentsWith2|const QString &

//[1]void encloseContentsWith ( const QWebElement & element )
//[2]void encloseContentsWith ( const QString & markup )

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH )
{
  if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSECONTENTSWITH1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSECONTENTSWITH2 );
  }
}

/*
void encloseWith ( const QString & markup )
*/
$method=|void|encloseWith,encloseWith1|const QString &

/*
void encloseWith ( const QWebElement & element )
*/
$method=|void|encloseWith,encloseWith2|const QWebElement &

//[1]void encloseWith ( const QString & markup )
//[2]void encloseWith ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSEWITH1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSEWITH2 );
  }
}

/*
QVariant evaluateJavaScript ( const QString & scriptSource )
*/
$method=|QVariant|evaluateJavaScript|const QString &

/*
QWebElementCollection findAll ( const QString & selectorQuery ) const
*/
$method=|QWebElementCollection|findAll|const QString &

/*
QWebElement findFirst ( const QString & selectorQuery ) const
*/
$method=|QWebElement|findFirst|const QString &

/*
QWebElement firstChild () const
*/
$method=|QWebElement|firstChild|

/*
QRect geometry () const
*/
$method=|QRect|geometry|

/*
bool hasAttribute ( const QString & name ) const
*/
$method=|bool|hasAttribute|const QString &

/*
bool hasAttributeNS ( const QString & namespaceUri, const QString & name ) const
*/
$method=|bool|hasAttributeNS|const QString &,const QString &

/*
bool hasAttributes () const
*/
$method=|bool|hasAttributes|

/*
bool hasClass ( const QString & name ) const
*/
$method=|bool|hasClass|const QString &

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QWebElement lastChild () const
*/
$method=|QWebElement|lastChild|

/*
QString localName () const
*/
$method=|QString|localName|

/*
QString namespaceUri () const
*/
$method=|QString|namespaceUri|

/*
QWebElement nextSibling () const
*/
HB_FUNC_STATIC( QWEBELEMENT_NEXTSIBLING )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->nextSibling () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement parent () const
*/
HB_FUNC_STATIC( QWEBELEMENT_PARENT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->parent () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
void prependInside ( const QString & markup )
*/
$method=|void|prependInside,prependInside1|const QString &

/*
void prependInside ( const QWebElement & element )
*/
$method=|void|prependInside,prependInside2|const QWebElement &

//[1]void prependInside ( const QString & markup )
//[2]void prependInside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDINSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDINSIDE2 );
  }
}

/*
void prependOutside ( const QString & markup )
*/
$method=|void|prependOutside,prependOutside1|const QString &

/*
void prependOutside ( const QWebElement & element )
*/
$method=|void|prependOutside,prependOutside2|const QWebElement &

//[1]void prependOutside ( const QString & markup )
//[2]void prependOutside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDOUTSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDOUTSIDE2 );
  }
}

/*
QWebElement previousSibling () const
*/
HB_FUNC_STATIC( QWEBELEMENT_PREVIOUSSIBLING )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->previousSibling () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
void removeAllChildren ()
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEALLCHILDREN )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAllChildren ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAttribute ( const QString & name )
*/
$method=|void|removeAttribute|const QString &

/*
void removeAttributeNS ( const QString & namespaceUri, const QString & name )
*/
$method=|void|removeAttributeNS|const QString &,const QString &

/*
void removeClass ( const QString & name )
*/
$method=|void|removeClass|const QString &

/*
void removeFromDocument ()
*/
$method=|void|removeFromDocument|

/*
void render ( QPainter * painter )
*/
HB_FUNC_STATIC( QWEBELEMENT_RENDER1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->render ( PQPAINTER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QRect & clip )
*/
HB_FUNC_STATIC( QWEBELEMENT_RENDER2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->render ( PQPAINTER(1), *PQRECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRect & clip )

HB_FUNC_STATIC( QWEBELEMENT_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_RENDER1 );
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECT(2) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_RENDER2 );
  }
}

/*
void replace ( const QString & markup )
*/
$method=|void|replace,replace1|const QString &

/*
void replace ( const QWebElement & element )
*/
$method=|void|replace,replace2|const QWebElement &

//[1]void replace ( const QString & markup )
//[2]void replace ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_REPLACE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_REPLACE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_REPLACE2 );
  }
}

/*
void setAttribute ( const QString & name, const QString & value )
*/
$method=|void|setAttribute|const QString &,const QString &

/*
void setAttributeNS ( const QString & namespaceUri, const QString & name, const QString & value )
*/
$method=|void|setAttributeNS|const QString &,const QString &,const QString &

/*
void setFocus ()
*/
$method=|void|setFocus|

/*
void setInnerXml ( const QString & markup )
*/
$method=|void|setInnerXml|const QString &

/*
void setOuterXml ( const QString & markup )
*/
$method=|void|setOuterXml|const QString &

/*
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void setStyleProperty ( const QString & name, const QString & value )
*/
$method=|void|setStyleProperty|const QString &,const QString &

/*
QString styleProperty ( const QString & name, StyleResolveStrategy strategy ) const
*/
$method=|QString|styleProperty|const QString &,QWebElement::StyleResolveStrategy

/*
QString tagName () const
*/
$method=|QString|tagName|

/*
QWebElement & takeFromDocument ()
*/
HB_FUNC_STATIC( QWEBELEMENT_TAKEFROMDOCUMENT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = &obj->takeFromDocument ();
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT" );
  }
}

/*
QString toInnerXml () const
*/
$method=|QString|toInnerXml|

/*
QString toOuterXml () const
*/
$method=|QString|toOuterXml|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
void toggleClass ( const QString & name )
*/
$method=|void|toggleClass|const QString &

/*
QWebFrame * webFrame () const
*/
$method=|QWebFrame *|webFrame|

$extraMethods

#pragma ENDDUMP
