/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFONTENGINE

CLASS QPlatformFontDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QPlatformFontDatabase
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QPlatformFontDatabase
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPlatformFontDatabase
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPlatformFontDatabase
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPlatformFontDatabase
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPlatformFontDatabase
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPlatformFontDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPlatformFontDatabase>

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
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QStringList strl = obj->addApplicationFont ( *par1, par2 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
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
    QString str1 = obj->fontDir (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    QFontEngine * ptr = obj->fontEngine ( *par1, par2,  (QFont::HintingPreference) par3 );
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
    obj->populateFontDatabase (  );
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
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  bool par6 = hb_parl(6);
  bool par7 = hb_parl(7);
  int par8 = hb_parni(8);
  QSupportedWritingSystems * par9 = (QSupportedWritingSystems *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
  void * par10 = (void *) hb_parptr(10);
  QPlatformFontDatabase::registerFont ( par1, par2,  (QFont::Weight) par3,  (QFont::Style) par4,  (QFont::Stretch) par5, par6, par7, par8, *par9, par10 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void registerQPF2Font ( const QByteArray & dataArray, void * handle )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_REGISTERQPF2FONT )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  void * par2 = (void *) hb_parptr(2);
  QPlatformFontDatabase::registerQPF2Font ( *par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
