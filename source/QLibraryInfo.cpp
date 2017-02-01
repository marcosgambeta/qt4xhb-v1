/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLibraryInfo>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"




/*
static QString licensee()
*/
HB_FUNC( QLIBRARYINFO_LICENSEE )
{
  QString str1 = QLibraryInfo::licensee (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static QString licensedProducts()
*/
HB_FUNC( QLIBRARYINFO_LICENSEDPRODUCTS )
{
  QString str1 = QLibraryInfo::licensedProducts (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static QString buildKey()
*/
HB_FUNC( QLIBRARYINFO_BUILDKEY )
{
  QString str1 = QLibraryInfo::buildKey (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
static QDate buildDate()
*/
HB_FUNC( QLIBRARYINFO_BUILDDATE )
{
  QDate * ptr = new QDate( QLibraryInfo::buildDate (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );}


/*
static QString location(LibraryLocation)
*/
HB_FUNC( QLIBRARYINFO_LOCATION )
{
  int par1 = hb_parni(1);
  QString str1 = QLibraryInfo::location (  (QLibraryInfo::LibraryLocation) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}



