$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
#endif

CLASS QDomElement INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNode
   METHOD attributeNodeNS
   METHOD attributes
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD hasAttribute
   METHOD hasAttributeNS
   METHOD nodeType
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeAttributeNode
   METHOD setAttribute1
   METHOD setAttribute2
   METHOD setAttribute3
   METHOD setAttribute4
   METHOD setAttribute5
   METHOD setAttribute6
   METHOD setAttribute7
   METHOD setAttribute
   METHOD setAttributeNS1
   METHOD setAttributeNS2
   METHOD setAttributeNS3
   METHOD setAttributeNS4
   METHOD setAttributeNS5
   METHOD setAttributeNS6
   METHOD setAttributeNS
   METHOD setAttributeNode
   METHOD setAttributeNodeNS
   METHOD setTagName
   METHOD tagName
   METHOD text
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomElement>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomElement ()
*/
HB_FUNC_STATIC( QDOMELEMENT_NEW1 )
{
  QDomElement * o = new QDomElement ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomElement ( const QDomElement & x )
*/
HB_FUNC_STATIC( QDOMELEMENT_NEW2 )
{
  QDomElement * o = new QDomElement ( *PQDOMELEMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomElement ()
//[2]QDomElement ( const QDomElement & x )

HB_FUNC_STATIC( QDOMELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMELEMENT(1) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QString attribute ( const QString & name, const QString & defValue = QString() ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->attribute ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString attributeNS ( const QString nsURI, const QString & localName, const QString & defValue = QString() ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENS )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->attributeNS ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) ) );
  }
}

/*
QDomAttr attributeNode ( const QString & name )
*/
$method=|QDomAttr|attributeNode|const QString &

/*
QDomAttr attributeNodeNS ( const QString & nsURI, const QString & localName )
*/
$method=|QDomAttr|attributeNodeNS|const QString &,const QString &

/*
QDomNamedNodeMap attributes () const
*/
$method=|QDomNamedNodeMap|attributes|

/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
$method=|QDomNodeList|elementsByTagName|const QString &

/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName ) const
*/
$method=|QDomNodeList|elementsByTagNameNS|const QString &,const QString &

/*
bool hasAttribute ( const QString & name ) const
*/
$method=|bool|hasAttribute|const QString &

/*
bool hasAttributeNS ( const QString & nsURI, const QString & localName ) const
*/
$method=|bool|hasAttributeNS|const QString &,const QString &

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

/*
void removeAttribute ( const QString & name )
*/
$method=|void|removeAttribute|const QString &

/*
void removeAttributeNS ( const QString & nsURI, const QString & localName )
*/
$method=|void|removeAttributeNS|const QString &,const QString &

/*
QDomAttr removeAttributeNode ( const QDomAttr & oldAttr )
*/
$method=|QDomAttr|removeAttributeNode|const QDomAttr &

/*
void setAttribute ( const QString & name, const QString & value )
*/
$method=|void|setAttribute,setAttribute1|const QString &,const QString &

/*
void setAttribute ( const QString & name, int value )
*/
$method=|void|setAttribute,setAttribute2|const QString &,int

/*
void setAttribute ( const QString & name, uint value )
*/
$method=|void|setAttribute,setAttribute3|const QString &,uint

/*
void setAttribute ( const QString & name, qlonglong value )
*/
$method=|void|setAttribute,setAttribute4|const QString &,qlonglong

/*
void setAttribute ( const QString & name, qulonglong value )
*/
$method=|void|setAttribute,setAttribute5|const QString &,qulonglong

/*
void setAttribute ( const QString & name, float value )
*/
$method=|void|setAttribute,setAttribute6|const QString &,float

/*
void setAttribute ( const QString & name, double value )
*/
$method=|void|setAttribute,setAttribute7|const QString &,double

//[1]void setAttribute ( const QString & name, const QString & value )
//[2]void setAttribute ( const QString & name, int value )
//[3]void setAttribute ( const QString & name, uint value )
//[4]void setAttribute ( const QString & name, qlonglong value )
//[5]void setAttribute ( const QString & name, qulonglong value )
//[6]void setAttribute ( const QString & name, float value )
//[7]void setAttribute ( const QString & name, double value )

// TODO: implementar reconhecimento de int e double
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
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, const QString & value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS1 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString nsURI, const QString & qName, int value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS2 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString nsURI, const QString & qName, uint value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS3 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), PUINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString nsURI, const QString & qName, qlonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS4 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), PQLONGLONG(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString nsURI, const QString & qName, qulonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS5 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), PQULONGLONG(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString nsURI, const QString & qName, double value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS6 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), PDOUBLE(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAttributeNS ( const QString nsURI, const QString & qName, const QString & value )
//[2]void setAttributeNS ( const QString nsURI, const QString & qName, int value )
//[3]void setAttributeNS ( const QString nsURI, const QString & qName, uint value )
//[4]void setAttributeNS ( const QString nsURI, const QString & qName, qlonglong value )
//[5]void setAttributeNS ( const QString nsURI, const QString & qName, qulonglong value )
//[6]void setAttributeNS ( const QString nsURI, const QString & qName, double value )

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
}

/*
QDomAttr setAttributeNode ( const QDomAttr & newAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENODE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomAttr * ptr = new QDomAttr( obj->setAttributeNode ( *PQDOMATTR(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomAttr setAttributeNodeNS ( const QDomAttr & newAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENODENS )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomAttr * ptr = new QDomAttr( obj->setAttributeNodeNS ( *PQDOMATTR(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}

/*
void setTagName ( const QString & name )
*/
$method=|void|setTagName|const QString &

/*
QString tagName () const
*/
$method=|QString|tagName|

/*
QString text () const
*/
$method=|QString|text|

#pragma ENDDUMP
