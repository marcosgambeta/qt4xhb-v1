$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append
   METHOD hasAttribute1
   METHOD hasAttribute2
   METHOD hasAttribute3
   METHOD hasAttribute
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value5
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

#include <QXmlStreamAttributes>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamAttributes()
*/
$constructor=|new|

$deleteMethod

/*
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
$method=|void|append,append1|const QString &,const QString &,const QString &

/*
void append(const QXmlStreamAttribute & attribute)
*/
$method=|void|append,append2|const QXmlStreamAttribute &

/*
void append(const QString & qualifiedName, const QString & value)
*/
$method=|void|append,append3|const QString &,const QString &

//[1]void append(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void append(const QXmlStreamAttribute & attribute)
//[3]void append(const QString & qualifiedName, const QString & value)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND3 );
  }
}

/*
bool hasAttribute(const QString & qualifiedName) const
*/
$method=|bool|hasAttribute,hasAttribute1|const QString &

/*
bool hasAttribute(QLatin1String qualifiedName) const
*/
$method=|bool|hasAttribute,hasAttribute2|QLatin1String

/*
bool hasAttribute(const QString & namespaceUri, const QString & name) const
*/
$method=|bool|hasAttribute,hasAttribute3|const QString &,const QString &

//[1]bool hasAttribute(const QString & qualifiedName) const
//[2]bool hasAttribute(QLatin1String qualifiedName) const
//[3]bool hasAttribute(const QString & namespaceUri, const QString & name) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 );
  }
}

/*
QStringRef value(const QString & namespaceUri, const QString & name) const
*/
$method=|QStringRef|value,value1|const QString &,const QString &

/*
QStringRef value(const QString & namespaceUri, QLatin1String name) const
*/
$method=|QStringRef|value,value2|const QString &,QLatin1String

/*
QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
*/
$method=|QStringRef|value,value3|QLatin1String,QLatin1String

/*
QStringRef value(const QString & qualifiedName) const
*/
$method=|QStringRef|value,value4|const QString &

/*
QStringRef value(QLatin1String qualifiedName) const
*/
$method=|QStringRef|value,value5|QLatin1String

//[1]QStringRef value(const QString & namespaceUri, const QString & name) const
//[2]QStringRef value(const QString & namespaceUri, QLatin1String name) const
//[3]QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
//[4]QStringRef value(const QString & qualifiedName) const
//[5]QStringRef value(QLatin1String qualifiedName) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLATIN1STRING(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE2 );
  }
  else if( ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE4 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE5 );
  }
}

$extraMethods

#pragma ENDDUMP
