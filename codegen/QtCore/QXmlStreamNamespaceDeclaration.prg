$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamNamespaceDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD namespaceUri
   METHOD prefix
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamNamespaceDeclaration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamNamespaceDeclaration()
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW1 )
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW2 )
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ( *PQXMLSTREAMNAMESPACEDECLARATION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW3 )
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ( PQSTRING(1), PQSTRING(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlStreamNamespaceDeclaration()
//[2]QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
//[3]QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNAMESPACEDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNAMESPACEDECLARATION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NAMESPACEURI )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_PREFIX )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
