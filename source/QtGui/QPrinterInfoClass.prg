/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTERINFO
#endif

CLASS QPrinterInfo

   DATA pointer
   DATA class_id INIT Class_Id_QPrinterInfo
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QPrinterInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QPrinterInfo * o = NULL;
  o = new QPrinterInfo (  );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QPrinterInfo ( const QPrinterInfo & src )
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW2 )
{
  QPrinterInfo * o = NULL;
  QPrinterInfo * par1 = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPrinterInfo ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QPrinterInfo ( const QPrinter & printer )
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW3 )
{
  QPrinterInfo * o = NULL;
  QPrinter * par1 = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPrinterInfo ( *par1 );
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

HB_FUNC_STATIC( QPRINTERINFO_DELETE )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isDefault () const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISDEFAULT )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDefault (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISNULL )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString printerName () const
*/
HB_FUNC_STATIC( QPRINTERINFO_PRINTERNAME )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->printerName (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QList<QPrinter::PaperSize> supportedPaperSizes () const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAPERSIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QPrinter::PaperSize> list = obj->supportedPaperSizes (  );
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
  QList<QPrinterInfo> list = QPrinterInfo::availablePrinters (  );
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
  QPrinterInfo * ptr = new QPrinterInfo( QPrinterInfo::defaultPrinter (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPRINTERINFO", true );
}


HB_FUNC_STATIC( QPRINTERINFO_NEWFROM )
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

HB_FUNC_STATIC( QPRINTERINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPRINTERINFO_NEWFROM );
}

HB_FUNC_STATIC( QPRINTERINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPRINTERINFO_NEWFROM );
}

HB_FUNC_STATIC( QPRINTERINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPRINTERINFO_SETSELFDESTRUCTION )
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
