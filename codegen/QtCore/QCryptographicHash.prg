$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QCryptographicHash

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addData1
   METHOD addData2
   METHOD addData
   METHOD reset
   METHOD result
   METHOD hash

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCryptographicHash>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCryptographicHash ( Algorithm method )
*/
$constructor=|new|QCryptographicHash::Algorithm

$deleteMethod

/*
void addData ( const char * data, int length )
*/
$method=|void|addData,addData1|const char *,int

/*
void addData ( const QByteArray & data )
*/
$method=|void|addData,addData2|const QByteArray &

//[1]void addData ( const char * data, int length )
//[2]void addData ( const QByteArray & data )

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA2 );
  }
}

/*
void reset ()
*/
$method=|void|reset|

/*
QByteArray result () const
*/
$method=|QByteArray|result|

/*
static QByteArray hash ( const QByteArray & data, Algorithm method )
*/
$staticMethod=|QByteArray|hash|const QByteArray &,QCryptographicHash::Algorithm

$extraMethods

#pragma ENDDUMP
