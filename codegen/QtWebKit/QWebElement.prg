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

#include <QWebFrame>

/*
QWebElement ()
*/
$constructor=|new1|

/*
QWebElement ( const QWebElement & other )
*/
$constructor=|new2|const QWebElement &

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
$method=|QString|attribute|const QString &,const QString &=QString()

/*
QString attributeNS ( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const
*/
$method=|QString|attributeNS|const QString &,const QString &,const QString &=QString()

/*
QStringList attributeNames ( const QString & namespaceUri = QString() ) const
*/
$method=|QStringList|attributeNames|const QString &=QString()

/*
QStringList classes () const
*/
$method=|QStringList|classes|

/*
QWebElement clone () const
*/
$method=|QWebElement|clone|

/*
QWebElement document () const
*/
$method=|QWebElement|document|

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
$method=|QWebElement|nextSibling|

/*
QWebElement parent () const
*/
$method=|QWebElement|parent|

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
$method=|QWebElement|previousSibling|

/*
void removeAllChildren ()
*/
$method=|void|removeAllChildren|

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
$method=|void|render,render1|QPainter *

/*
void render ( QPainter * painter, const QRect & clip )
*/
$method=|void|render,render2|QPainter *,const QRect &

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
$method=|QWebElement &|takeFromDocument|

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
