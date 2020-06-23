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

$beginClassFrom=QDomNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomElement ()
$internalConstructor=|new1|

$prototype=QDomElement ( const QDomElement & x )
$internalConstructor=|new2|const QDomElement &

/*
[1]QDomElement ()
[2]QDomElement ( const QDomElement & x )
*/

HB_FUNC_STATIC( QDOMELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomElement_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMELEMENT(1) )
  {
    QDomElement_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototype=QString attribute ( const QString & name, const QString & defValue = QString() ) const
$method=|QString|attribute|const QString &,const QString &=QString()

$prototype=QString attributeNS ( const QString nsURI, const QString & localName, const QString & defValue = QString() ) const
$method=|QString|attributeNS|const QString,const QString &,const QString &=QString()

$prototypeV2=QDomAttr attributeNode( const QString & name )

$prototypeV2=QDomAttr attributeNodeNS( const QString & nsURI, const QString & localName )

$prototypeV2=QDomNamedNodeMap attributes() const

$prototypeV2=QDomNodeList elementsByTagName( const QString & tagname ) const

$prototypeV2=QDomNodeList elementsByTagNameNS( const QString & nsURI, const QString & localName ) const

$prototypeV2=bool hasAttribute( const QString & name ) const

$prototypeV2=bool hasAttributeNS( const QString & nsURI, const QString & localName ) const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=void removeAttribute( const QString & name )

$prototypeV2=void removeAttributeNS( const QString & nsURI, const QString & localName )

$prototypeV2=QDomAttr removeAttributeNode( const QDomAttr & oldAttr )

$prototype=void setAttribute ( const QString & name, const QString & value )
$method=|void|setAttribute,setAttribute1|const QString &,const QString &

$prototype=void setAttribute ( const QString & name, int value )
$method=|void|setAttribute,setAttribute2|const QString &,int

$prototype=void setAttribute ( const QString & name, uint value )
$method=|void|setAttribute,setAttribute3|const QString &,uint

$prototype=void setAttribute ( const QString & name, qlonglong value )
$method=|void|setAttribute,setAttribute4|const QString &,qlonglong

$prototype=void setAttribute ( const QString & name, qulonglong value )
$method=|void|setAttribute,setAttribute5|const QString &,qulonglong

$prototype=void setAttribute ( const QString & name, float value )
$method=|void|setAttribute,setAttribute6|const QString &,float

$prototype=void setAttribute ( const QString & name, double value )
$method=|void|setAttribute,setAttribute7|const QString &,double

/*
[1]void setAttribute ( const QString & name, const QString & value )
[2]void setAttribute ( const QString & name, int value )
[3]void setAttribute ( const QString & name, uint value )
[4]void setAttribute ( const QString & name, qlonglong value )
[5]void setAttribute ( const QString & name, qulonglong value )
[6]void setAttribute ( const QString & name, float value )
[7]void setAttribute ( const QString & name, double value )
*/

%% TODO: implementar reconhecimento de int e double
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAttribute

$prototype=void setAttributeNS ( const QString nsURI, const QString & qName, const QString & value )
$method=|void|setAttributeNS,setAttributeNS1|const QString,const QString &,const QString &

$prototype=void setAttributeNS ( const QString nsURI, const QString & qName, int value )
$method=|void|setAttributeNS,setAttributeNS2|const QString,const QString &,int

$prototype=void setAttributeNS ( const QString nsURI, const QString & qName, uint value )
$method=|void|setAttributeNS,setAttributeNS3|const QString,const QString &,uint

$prototype=void setAttributeNS ( const QString nsURI, const QString & qName, qlonglong value )
$method=|void|setAttributeNS,setAttributeNS4|const QString,const QString &,qlonglong

$prototype=void setAttributeNS ( const QString nsURI, const QString & qName, qulonglong value )
$method=|void|setAttributeNS,setAttributeNS5|const QString,const QString &,qulonglong

$prototype=void setAttributeNS ( const QString nsURI, const QString & qName, double value )
$method=|void|setAttributeNS,setAttributeNS6|const QString,const QString &,double

/*
[1]void setAttributeNS ( const QString nsURI, const QString & qName, const QString & value )
[2]void setAttributeNS ( const QString nsURI, const QString & qName, int value )
[3]void setAttributeNS ( const QString nsURI, const QString & qName, uint value )
[4]void setAttributeNS ( const QString nsURI, const QString & qName, qlonglong value )
[5]void setAttributeNS ( const QString nsURI, const QString & qName, qulonglong value )
[6]void setAttributeNS ( const QString nsURI, const QString & qName, double value )
*/

HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTENS1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTENS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAttributeNS

$prototypeV2=QDomAttr setAttributeNode( const QDomAttr & newAttr )

$prototypeV2=QDomAttr setAttributeNodeNS( const QDomAttr & newAttr )

$prototypeV2=void setTagName( const QString & name )

$prototypeV2=QString tagName() const

$prototypeV2=QString text() const

#pragma ENDDUMP
