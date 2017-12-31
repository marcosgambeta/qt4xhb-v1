$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTERINFO
#endif

CLASS QPrinterInfo

   DATA pointer
   DATA self_destruction INIT .F.

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

$prototype=QPrinterInfo ()
$internalConstructor=|new1|

$prototype=QPrinterInfo ( const QPrinterInfo & src )
$internalConstructor=|new2|const QPrinterInfo &

$prototype=QPrinterInfo ( const QPrinter & printer )
$internalConstructor=|new3|const QPrinter &

//[1]QPrinterInfo ()
//[2]QPrinterInfo ( const QPrinterInfo & src )
//[3]QPrinterInfo ( const QPrinter & printer )

HB_FUNC_STATIC( QPRINTERINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPrinterInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQPRINTERINFO(1) )
  {
    QPrinterInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQPRINTER(1) )
  {
    QPrinterInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isDefault () const
$method=|bool|isDefault|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QString printerName () const
$method=|QString|printerName|

$prototype=QList<QPrinter::PaperSize> supportedPaperSizes () const
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAPERSIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QPrinter::PaperSize> list = obj->supportedPaperSizes ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=QList<QPrinterInfo> availablePrinters ()
HB_FUNC_STATIC( QPRINTERINFO_AVAILABLEPRINTERS )
{
  QList<QPrinterInfo> list = QPrinterInfo::availablePrinters ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QPRINTERINFO" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=static QPrinterInfo defaultPrinter ()
$staticMethod=|QPrinterInfo|defaultPrinter|

$extraMethods

#pragma ENDDUMP
