/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QPlatformFontDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPlatformFontDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QPLATFORMFONTDATABASE_DELETE )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QStringList addApplicationFont ( const QByteArray & fontData, const QString & fileName )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_ADDAPPLICATIONFONT )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->addApplicationFont ( *PQBYTEARRAY(1), PQSTRING(2) );
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
virtual QString fontDir () const
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_FONTDIR )
{
  QPlatformFontDatabase * obj = (QPlatformFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fontDir ();
    hb_retc( RQSTRING(str1) );
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


HB_FUNC_STATIC( QPLATFORMFONTDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLATFORMFONTDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLATFORMFONTDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_SETSELFDESTRUCTION )
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
