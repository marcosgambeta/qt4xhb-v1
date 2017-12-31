/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONTENGINEINFO
REQUEST QABSTRACTFONTENGINE
#endif

CLASS QFontEnginePlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availableFontEngines
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontEnginePlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFontEnginePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QFONTENGINEPLUGIN_DELETE )
{
  QFontEnginePlugin * obj = (QFontEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QList<QFontEngineInfo> availableFontEngines () const = 0
*/
HB_FUNC_STATIC( QFONTENGINEPLUGIN_AVAILABLEFONTENGINES )
{
  QFontEnginePlugin * obj = (QFontEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QFontEngineInfo> list = obj->availableFontEngines ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QFONTENGINEINFO" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFontEngineInfo *) new QFontEngineInfo ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
virtual QAbstractFontEngine * create ( const QFontEngineInfo & info ) = 0
*/
HB_FUNC_STATIC( QFONTENGINEPLUGIN_CREATE )
{
  QFontEnginePlugin * obj = (QFontEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractFontEngine * ptr = obj->create ( *PQFONTENGINEINFO(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTFONTENGINE" );
  }
}

/*
virtual QStringList keys () const
*/
HB_FUNC_STATIC( QFONTENGINEPLUGIN_KEYS )
{
  QFontEnginePlugin * obj = (QFontEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

#pragma ENDDUMP
