$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONTENGINE
#endif

CLASS QPlatformFontDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addApplicationFont
   METHOD fontDir
   METHOD fontEngine
   METHOD populateFontDatabase
   METHOD releaseHandle
   METHOD registerFont
   METHOD registerQPF2Font

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPlatformFontDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QStringList addApplicationFont ( const QByteArray & fontData, const QString & fileName )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_ADDAPPLICATIONFONT )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->addApplicationFont ( *PQBYTEARRAY(1), PQSTRING(2) ) );
  }
}

/*
virtual QString fontDir () const
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_FONTDIR )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fontDir () );
  }
}

/*
virtual QFontEngine * fontEngine ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_FONTENGINE )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    QFontEngine * ptr = obj->fontEngine ( *PQBYTEARRAY(1), PQREAL(2), (QFont::HintingPreference) par3 );
    _qt4xhb_createReturnClass ( ptr, "QFONTENGINE" );
  }
}

/*
virtual void populateFontDatabase ()
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_POPULATEFONTDATABASE )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->populateFontDatabase ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void releaseHandle ( void * handle )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_RELEASEHANDLE )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * par1 = (void *) hb_parptr(1);
    obj->releaseHandle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void registerFont ( const QString & familyName, const QString & foundryName, QFont::Weight weight, QFont::Style style, QFont::Stretch stretch, bool antialiased, bool scalable, int pixelSize, const QSupportedWritingSystems & writingSystems, void * usrPtr )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_REGISTERFONT )
{
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par8 = hb_parni(8);
  QSupportedWritingSystems * par9 = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
  void * par10 = (void *) hb_parptr(10);
  QPlatformFontDatabase::registerFont ( PQSTRING(1), PQSTRING(2), (QFont::Weight) par3, (QFont::Style) par4, (QFont::Stretch) par5, PBOOL(6), PBOOL(7), par8, *par9, par10 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void registerQPF2Font ( const QByteArray & dataArray, void * handle )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_REGISTERQPF2FONT )
{
  void * par2 = (void *) hb_parptr(2);
  QPlatformFontDatabase::registerQPF2Font ( *PQBYTEARRAY(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
