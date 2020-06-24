%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKit/QWebFrame>

$prototype=QWebElement ()
$internalConstructor=|new1|

$prototype=QWebElement ( const QWebElement & other )
$internalConstructor=|new2|const QWebElement &

/*
[1]QWebElement ()
[2]QWebElement ( const QWebElement & other )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=void addClass( const QString & name )

$prototype=void appendInside ( const QString & markup )
$internalMethod=|void|appendInside,appendInside1|const QString &

$prototype=void appendInside ( const QWebElement & element )
$internalMethod=|void|appendInside,appendInside2|const QWebElement &

/*
[1]void appendInside ( const QString & markup )
[2]void appendInside ( const QWebElement & element )
*/

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
$addMethod=appendInside

$prototype=void appendOutside ( const QString & markup )
$internalMethod=|void|appendOutside,appendOutside1|const QString &

$prototype=void appendOutside ( const QWebElement & element )
$internalMethod=|void|appendOutside,appendOutside2|const QWebElement &

/*
[1]void appendOutside ( const QString & markup )
[2]void appendOutside ( const QWebElement & element )
*/

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
$addMethod=appendOutside

$prototypeV2=QString attribute( const QString & name, const QString & defaultValue = QString() ) const

$prototypeV2=QString attributeNS( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const

$prototypeV2=QStringList attributeNames( const QString & namespaceUri = QString() ) const

$prototypeV2=QStringList classes() const

$prototypeV2=QWebElement clone() const

$prototypeV2=QWebElement document() const

$prototype=void encloseContentsWith ( const QWebElement & element )
$internalMethod=|void|encloseContentsWith,encloseContentsWith1|const QWebElement &

$prototype=void encloseContentsWith ( const QString & markup )
$internalMethod=|void|encloseContentsWith,encloseContentsWith2|const QString &

/*
[1]void encloseContentsWith ( const QWebElement & element )
[2]void encloseContentsWith ( const QString & markup )
*/

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
$addMethod=encloseContentsWith

$prototype=void encloseWith ( const QString & markup )
$internalMethod=|void|encloseWith,encloseWith1|const QString &

$prototype=void encloseWith ( const QWebElement & element )
$internalMethod=|void|encloseWith,encloseWith2|const QWebElement &

/*
[1]void encloseWith ( const QString & markup )
[2]void encloseWith ( const QWebElement & element )
*/

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
$addMethod=encloseWith

$prototypeV2=QVariant evaluateJavaScript( const QString & scriptSource )

$prototypeV2=QWebElementCollection findAll( const QString & selectorQuery ) const

$prototypeV2=QWebElement findFirst( const QString & selectorQuery ) const

$prototypeV2=QWebElement firstChild() const

$prototypeV2=QRect geometry() const

$prototypeV2=bool hasAttribute( const QString & name ) const

$prototypeV2=bool hasAttributeNS( const QString & namespaceUri, const QString & name ) const

$prototypeV2=bool hasAttributes() const

$prototypeV2=bool hasClass( const QString & name ) const

$prototypeV2=bool hasFocus() const

$prototypeV2=bool isNull() const

$prototypeV2=QWebElement lastChild() const

$prototypeV2=QString localName() const

$prototypeV2=QString namespaceUri() const

$prototypeV2=QWebElement nextSibling() const

$prototypeV2=QWebElement parent() const

$prototypeV2=QString prefix() const

$prototype=void prependInside ( const QString & markup )
$internalMethod=|void|prependInside,prependInside1|const QString &

$prototype=void prependInside ( const QWebElement & element )
$internalMethod=|void|prependInside,prependInside2|const QWebElement &

/*
[1]void prependInside ( const QString & markup )
[2]void prependInside ( const QWebElement & element )
*/

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
$addMethod=prependInside

$prototype=void prependOutside ( const QString & markup )
$internalMethod=|void|prependOutside,prependOutside1|const QString &

$prototype=void prependOutside ( const QWebElement & element )
$internalMethod=|void|prependOutside,prependOutside2|const QWebElement &

/*
[1]void prependOutside ( const QString & markup )
[2]void prependOutside ( const QWebElement & element )
*/

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
$addMethod=prependOutside

$prototypeV2=QWebElement previousSibling() const

$prototypeV2=void removeAllChildren()

$prototypeV2=void removeAttribute( const QString & name )

$prototypeV2=void removeAttributeNS( const QString & namespaceUri, const QString & name )

$prototypeV2=void removeClass( const QString & name )

$prototypeV2=void removeFromDocument()

$prototype=void render ( QPainter * painter )
$internalMethod=|void|render,render1|QPainter *

$prototype=void render ( QPainter * painter, const QRect & clip )
$internalMethod=|void|render,render2|QPainter *,const QRect &

/*
[1]void render ( QPainter * painter )
[2]void render ( QPainter * painter, const QRect & clip )
*/

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
$addMethod=render

$prototype=void replace ( const QString & markup )
$internalMethod=|void|replace,replace1|const QString &

$prototype=void replace ( const QWebElement & element )
$internalMethod=|void|replace,replace2|const QWebElement &

/*
[1]void replace ( const QString & markup )
[2]void replace ( const QWebElement & element )
*/

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
$addMethod=replace

$prototypeV2=void setAttribute( const QString & name, const QString & value )

$prototypeV2=void setAttributeNS( const QString & namespaceUri, const QString & name, const QString & value )

$prototypeV2=void setFocus()

$prototypeV2=void setInnerXml( const QString & markup )

$prototypeV2=void setOuterXml( const QString & markup )

$prototypeV2=void setPlainText( const QString & text )

$prototypeV2=void setStyleProperty( const QString & name, const QString & value )

$prototypeV2=QString styleProperty( const QString & name, QWebElement::StyleResolveStrategy strategy ) const

$prototypeV2=QString tagName() const

$prototypeV2=QWebElement & takeFromDocument()

$prototypeV2=QString toInnerXml() const

$prototypeV2=QString toOuterXml() const

$prototypeV2=QString toPlainText() const

$prototypeV2=void toggleClass( const QString & name )

$prototypeV2=QWebFrame * webFrame() const

$extraMethods

#pragma ENDDUMP
