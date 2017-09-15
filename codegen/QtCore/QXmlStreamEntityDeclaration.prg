$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamEntityDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD notationName
   METHOD publicId
   METHOD systemId
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamEntityDeclaration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamEntityDeclaration()
*/
$constructor=|new1|

/*
QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
*/
$constructor=|new2|const QXmlStreamEntityDeclaration &

//[1]QXmlStreamEntityDeclaration()
//[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QStringRef name() const
*/
$method=|QStringRef|name|

/*
QStringRef notationName() const
*/
$method=|QStringRef|notationName|

/*
QStringRef publicId() const
*/
$method=|QStringRef|publicId|

/*
QStringRef systemId() const
*/
$method=|QStringRef|systemId|

/*
QStringRef value() const
*/
$method=|QStringRef|value|

$extraMethods

#pragma ENDDUMP
