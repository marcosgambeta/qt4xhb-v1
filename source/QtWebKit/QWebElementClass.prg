/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QWebElement
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QWEBELEMENT_DELETE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addClass ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_ADDCLASS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addClass ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendInside ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->appendInside ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendInside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->appendInside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->appendOutside ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendOutside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->appendOutside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
    QString str1 = obj->attribute ( PQSTRING(1), OPQSTRING(2,QString()) );
    hb_retc( RQSTRING(str1) );
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
    QString str1 = obj->attributeNS ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) );
    hb_retc( RQSTRING(str1) );
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
    QStringList strl = obj->attributeNames ( OPQSTRING(1,QString()) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    QStringList strl = obj->classes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->encloseContentsWith ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void encloseContentsWith ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->encloseContentsWith ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->encloseWith ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void encloseWith ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->encloseWith ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_EVALUATEJAVASCRIPT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->evaluateJavaScript ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QWebElementCollection findAll ( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_FINDALL )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElementCollection * ptr = new QWebElementCollection( obj->findAll ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENTCOLLECTION", true );
  }
}


/*
QWebElement findFirst ( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_FINDFIRST )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->findFirst ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement firstChild () const
*/
HB_FUNC_STATIC( QWEBELEMENT_FIRSTCHILD )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->firstChild () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QRect geometry () const
*/
HB_FUNC_STATIC( QWEBELEMENT_GEOMETRY )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool hasAttribute ( const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAttribute ( PQSTRING(1) ) );
  }
}


/*
bool hasAttributeNS ( const QString & namespaceUri, const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAttributeNS ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
bool hasAttributes () const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTES )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAttributes () );
  }
}


/*
bool hasClass ( const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASCLASS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasClass ( PQSTRING(1) ) );
  }
}


/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASFOCUS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFocus () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QWEBELEMENT_ISNULL )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QWebElement lastChild () const
*/
HB_FUNC_STATIC( QWEBELEMENT_LASTCHILD )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->lastChild () );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QString localName () const
*/
HB_FUNC_STATIC( QWEBELEMENT_LOCALNAME )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->localName ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString namespaceUri () const
*/
HB_FUNC_STATIC( QWEBELEMENT_NAMESPACEURI )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->namespaceUri ();
    hb_retc( RQSTRING(str1) );
  }
}


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
HB_FUNC_STATIC( QWEBELEMENT_PREFIX )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->prefix ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
void prependInside ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->prependInside ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void prependInside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->prependInside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->prependOutside ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void prependOutside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->prependOutside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_REMOVEATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAttribute ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAttributeNS ( const QString & namespaceUri, const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAttributeNS ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeClass ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVECLASS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeClass ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeFromDocument ()
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEFROMDOCUMENT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeFromDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_REPLACE1 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->replace ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void replace ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_REPLACE2 )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->replace ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QWEBELEMENT_SETATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttribute ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString & namespaceUri, const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAttributeNS ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocus ()
*/
HB_FUNC_STATIC( QWEBELEMENT_SETFOCUS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocus ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInnerXml ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETINNERXML )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInnerXml ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOuterXml ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETOUTERXML )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOuterXml ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETPLAINTEXT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPlainText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyleProperty ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETSTYLEPROPERTY )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStyleProperty ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString styleProperty ( const QString & name, StyleResolveStrategy strategy ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_STYLEPROPERTY )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    QString str1 = obj->styleProperty ( PQSTRING(1),  (QWebElement::StyleResolveStrategy) par2 );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString tagName () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TAGNAME )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->tagName ();
    hb_retc( RQSTRING(str1) );
  }
}


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
HB_FUNC_STATIC( QWEBELEMENT_TOINNERXML )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toInnerXml ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString toOuterXml () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOOUTERXML )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toOuterXml ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOPLAINTEXT )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toPlainText ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
void toggleClass ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_TOGGLECLASS )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toggleClass ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebFrame * webFrame () const
*/
HB_FUNC_STATIC( QWEBELEMENT_WEBFRAME )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->webFrame ();
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
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

  hb_itemReturn( self );
}


#pragma ENDDUMP
