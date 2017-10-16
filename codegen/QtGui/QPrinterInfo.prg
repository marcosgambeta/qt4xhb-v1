$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTERINFO
#endif

CLASS QPrinterInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD isNull
   METHOD printerName
   METHOD supportedPaperSizes
   METHOD availablePrinters
   METHOD defaultPrinter

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPrinterInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPrinterInfo ()
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW1 )
{
  QPrinterInfo * o = new QPrinterInfo ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPrinterInfo ( const QPrinterInfo & src )
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW2 )
{
  QPrinterInfo * o = new QPrinterInfo ( *PQPRINTERINFO(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPrinterInfo ( const QPrinter & printer )
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW3 )
{
  QPrinterInfo * o = new QPrinterInfo ( *PQPRINTER(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPrinterInfo ()
//[2]QPrinterInfo ( const QPrinterInfo & src )
//[3]QPrinterInfo ( const QPrinter & printer )

HB_FUNC_STATIC( QPRINTERINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTERINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPRINTERINFO(1) )
  {
    HB_FUNC_EXEC( QPRINTERINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPRINTER(1) )
  {
    HB_FUNC_EXEC( QPRINTERINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isDefault () const
*/
$method=|bool|isDefault|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QString printerName () const
*/
$method=|QString|printerName|

/*
QList<QPrinter::PaperSize> supportedPaperSizes () const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAPERSIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QPrinter::PaperSize> list = obj->supportedPaperSizes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QPrinterInfo> availablePrinters ()
*/
HB_FUNC_STATIC( QPRINTERINFO_AVAILABLEPRINTERS )
{
  QList<QPrinterInfo> list = QPrinterInfo::availablePrinters ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QPRINTERINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QPRINTERINFO" );
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
      hb_itemPutPtr( pItem, (QPrinterInfo *) new QPrinterInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
QPrinterInfo defaultPrinter ()
*/
HB_FUNC_STATIC( QPRINTERINFO_DEFAULTPRINTER )
{
  QPrinterInfo * ptr = new QPrinterInfo( QPrinterInfo::defaultPrinter () );
  _qt4xhb_createReturnClass ( ptr, "QPRINTERINFO", true );
}

$extraMethods

#pragma ENDDUMP
