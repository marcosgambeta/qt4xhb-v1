$header

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

$destructor

#pragma BEGINDUMP

#include <QFontEnginePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QList<QFontEngineInfo> availableFontEngines () const = 0
*/
HB_FUNC_STATIC( QFONTENGINEPLUGIN_AVAILABLEFONTENGINES )
{
  QFontEnginePlugin * obj = (QFontEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QFontEngineInfo> list = obj->availableFontEngines ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFONTENGINEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFONTENGINEINFO" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
