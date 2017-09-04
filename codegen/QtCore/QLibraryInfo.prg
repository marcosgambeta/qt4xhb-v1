$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QLibraryInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD licensee
   METHOD licensedProducts
   METHOD buildKey
   METHOD buildDate
   METHOD location
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLibraryInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLibraryInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"




/*
static QString licensee()
*/
HB_FUNC_STATIC( QLIBRARYINFO_LICENSEE )
{
  RQSTRING( QLibraryInfo::licensee () );
}


/*
static QString licensedProducts()
*/
HB_FUNC_STATIC( QLIBRARYINFO_LICENSEDPRODUCTS )
{
  RQSTRING( QLibraryInfo::licensedProducts () );
}


/*
static QString buildKey()
*/
HB_FUNC_STATIC( QLIBRARYINFO_BUILDKEY )
{
  RQSTRING( QLibraryInfo::buildKey () );
}


/*
static QDate buildDate()
*/
HB_FUNC_STATIC( QLIBRARYINFO_BUILDDATE )
{
  QDate * ptr = new QDate( QLibraryInfo::buildDate () );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
static QString location(LibraryLocation)
*/
HB_FUNC_STATIC( QLIBRARYINFO_LOCATION )
{
  RQSTRING( QLibraryInfo::location ( (QLibraryInfo::LibraryLocation) hb_parni(1) ) );
}

$extraMethods

#pragma ENDDUMP
