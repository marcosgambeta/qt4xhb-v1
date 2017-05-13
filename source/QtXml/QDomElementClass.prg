/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
#endif

CLASS QDomElement INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomElement
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QDomElement
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QDomElement * o = NULL;
  o = new QDomElement ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomElement ( const QDomElement & x )
*/
HB_FUNC_STATIC( QDOMELEMENT_NEW2 )
{
  QDomElement * o = NULL;
  QDomElement * par1 = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomElement ( *par1 );
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
    QString str1 = obj->attribute ( PQSTRING(1), OPQSTRING(2,QString()) );
    hb_retc( RQSTRING(str1) );
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
    QString str1 = obj->attributeNS ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QDomAttr attributeNode ( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENODE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomAttr * ptr = new QDomAttr( obj->attributeNode ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomAttr attributeNodeNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENODENS )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomAttr * ptr = new QDomAttr( obj->attributeNodeNS ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomNamedNodeMap attributes () const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTES )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->attributes () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}


/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ELEMENTSBYTAGNAME )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagName ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ELEMENTSBYTAGNAMENS )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagNameNS ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
bool hasAttribute ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_HASATTRIBUTE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasAttribute ( PQSTRING(1) ) );
  }
}


/*
bool hasAttributeNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_HASATTRIBUTENS )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasAttributeNS ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMELEMENT_NODETYPE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
void removeAttribute ( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAttribute ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAttributeNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTENS )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAttributeNS ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDomAttr removeAttributeNode ( const QDomAttr & oldAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTENODE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomAttr * par1 = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDomAttr * ptr = new QDomAttr( obj->removeAttributeNode ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
void setAttribute ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE1 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttribute ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( const QString & name, int value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE2 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setAttribute ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( const QString & name, uint value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE3 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttribute ( PQSTRING(1), PUINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( const QString & name, qlonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE4 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qlonglong par2 = hb_parnl(2);
    obj->setAttribute ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( const QString & name, qulonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE5 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qulonglong par2 = hb_parnl(2);
    obj->setAttribute ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( const QString & name, float value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE6 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttribute ( PQSTRING(1), PFLOAT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( const QString & name, double value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE7 )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttribute ( PQSTRING(1), PDOUBLE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
    qlonglong par3 = hb_parnl(3);
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), par3 );
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
    qulonglong par3 = hb_parnl(3);
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), par3 );
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
    QDomAttr * par1 = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDomAttr * ptr = new QDomAttr( obj->setAttributeNode ( *par1 ) );
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
    QDomAttr * par1 = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDomAttr * ptr = new QDomAttr( obj->setAttributeNodeNS ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
void setTagName ( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETTAGNAME )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTagName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tagName () const
*/
HB_FUNC_STATIC( QDOMELEMENT_TAGNAME )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->tagName ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QDOMELEMENT_TEXT )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text ();
    hb_retc( RQSTRING(str1) );
  }
}




#pragma ENDDUMP
