$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLNAME
#endif

CLASS QXmlName

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD isNull
   METHOD localName
   METHOD namespaceUri
   METHOD prefix
   METHOD toClarkName
   METHOD fromClarkName
   METHOD isNCName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlName>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QXmlNamePool>

/*
QXmlName ()
*/
HB_FUNC_STATIC( QXMLNAME_NEW1 )
{
  QXmlName * o = new QXmlName ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
*/
HB_FUNC_STATIC( QXMLNAME_NEW2 )
{
  QXmlName * o = new QXmlName ( *PQXMLNAMEPOOL(1), PQSTRING(2), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlName ()
//[2]QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )

HB_FUNC_STATIC( QXMLNAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISQXMLNAMEPOOL(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool isNull () const
*/
HB_FUNC_STATIC( QXMLNAME_ISNULL )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
QString localName ( const QXmlNamePool & namePool ) const
*/
$method=|QString|localName|const QXmlNamePool &

/*
QString namespaceUri ( const QXmlNamePool & namePool ) const
*/
$method=|QString|namespaceUri|const QXmlNamePool &

/*
QString prefix ( const QXmlNamePool & namePool ) const
*/
$method=|QString|prefix|const QXmlNamePool &

/*
QString toClarkName ( const QXmlNamePool & namePool ) const
*/
$method=|QString|toClarkName|const QXmlNamePool &

/*
static QXmlName fromClarkName ( const QString & clarkName, const QXmlNamePool & namePool )
*/
$staticMethod=|QXmlName|fromClarkName|const QString &,const QXmlNamePool &

/*
static bool isNCName ( const QString & candidate )
*/
$staticMethod=|bool|isNCName|const QString &

$extraMethods

#pragma ENDDUMP
