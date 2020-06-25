%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomNode ()
$internalConstructor=|new1|

$prototype=QDomNode ( const QDomNode & n )
$internalConstructor=|new2|const QDomNode &

/*
[1]QDomNode ()
[2]QDomNode ( const QDomNode & n )
*/

HB_FUNC_STATIC( QDOMNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNode_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNODE(1) )
  {
    QDomNode_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QDomNode appendChild( const QDomNode & newChild )

$prototypeV2=QDomNamedNodeMap attributes() const

$prototypeV2=QDomNodeList childNodes() const

$prototypeV2=void clear()

$prototypeV2=QDomNode cloneNode( bool deep = true ) const

$prototypeV2=int columnNumber() const

$prototypeV2=QDomNode firstChild() const

$prototypeV2=QDomElement firstChildElement( const QString & tagName = QString() ) const

$prototypeV2=bool hasAttributes() const

$prototypeV2=bool hasChildNodes() const

$prototypeV2=QDomNode insertAfter( const QDomNode & newChild, const QDomNode & refChild )

$prototypeV2=QDomNode insertBefore( const QDomNode & newChild, const QDomNode & refChild )

$prototypeV2=bool isAttr() const

$prototypeV2=bool isCDATASection() const

$prototypeV2=bool isCharacterData() const

$prototypeV2=bool isComment() const

$prototypeV2=bool isDocument() const

$prototypeV2=bool isDocumentFragment() const

$prototypeV2=bool isDocumentType() const

$prototypeV2=bool isElement() const

$prototypeV2=bool isEntity() const

$prototypeV2=bool isEntityReference() const

$prototypeV2=bool isNotation() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isProcessingInstruction() const

$prototypeV2=bool isSupported( const QString & feature, const QString & version ) const

$prototypeV2=bool isText() const

$prototypeV2=QDomNode lastChild() const

$prototypeV2=QDomElement lastChildElement( const QString & tagName = QString() ) const

$prototypeV2=int lineNumber() const

$prototypeV2=QString localName() const

$prototypeV2=QDomNode namedItem( const QString & name ) const

$prototypeV2=QString namespaceURI() const

$prototypeV2=QDomNode nextSibling() const

$prototypeV2=QDomElement nextSiblingElement( const QString & tagName = QString() ) const

$prototypeV2=QString nodeName() const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=QString nodeValue() const

$prototypeV2=void normalize()

$prototypeV2=QDomDocument ownerDocument() const

$prototypeV2=QDomNode parentNode() const

$prototypeV2=QString prefix() const

$prototypeV2=QDomNode previousSibling() const

$prototypeV2=QDomElement previousSiblingElement( const QString & tagName = QString() ) const

$prototypeV2=QDomNode removeChild( const QDomNode & oldChild )

$prototypeV2=QDomNode replaceChild( const QDomNode & newChild, const QDomNode & oldChild )

$prototype=void save ( QTextStream & str, int indent ) const
$internalMethod=|void|save,save1|QTextStream &,int

$prototype=void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
$internalMethod=|void|save,save2|QTextStream &,int,QDomNode::EncodingPolicy

/*
[1]void save ( QTextStream & str, int indent ) const
[2]void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/

HB_FUNC_STATIC( QDOMNODE_SAVE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QDomNode_save1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISNUM(3) )
  {
    QDomNode_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=save

$prototypeV2=void setNodeValue( const QString & v )

$prototypeV2=void setPrefix( const QString & pre )

$prototypeV2=QDomAttr toAttr() const

$prototypeV2=QDomCDATASection toCDATASection() const

$prototypeV2=QDomCharacterData toCharacterData() const

$prototypeV2=QDomComment toComment() const

$prototypeV2=QDomDocument toDocument() const

$prototypeV2=QDomDocumentFragment toDocumentFragment() const

$prototypeV2=QDomDocumentType toDocumentType() const

$prototypeV2=QDomElement toElement() const

$prototypeV2=QDomEntity toEntity() const

$prototypeV2=QDomEntityReference toEntityReference() const

$prototypeV2=QDomNotation toNotation() const

$prototypeV2=QDomProcessingInstruction toProcessingInstruction() const

$prototypeV2=QDomText toText() const

$extraMethods

#pragma ENDDUMP
