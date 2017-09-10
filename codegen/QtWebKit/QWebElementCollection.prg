$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBELEMENT
#endif

CLASS QWebElementCollection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD count
   METHOD first
   METHOD last
   METHOD toList

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebElementCollection>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWebElementCollection ()
*/
$constructor=|new1|

/*
QWebElementCollection ( const QWebElement & contextElement, const QString & query )
*/
$constructor=|new2|const QWebElement &,const QString &

/*
QWebElementCollection ( const QWebElementCollection & other )
*/
$constructor=|new3|const QWebElementCollection &

//[1]QWebElementCollection ()
//[2]QWebElementCollection ( const QWebElement & contextElement, const QString & query )
//[3]QWebElementCollection ( const QWebElementCollection & other )

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQWEBELEMENT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENTCOLLECTION(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QWebElementCollection & other )
*/
$method=|void|append|const QWebElementCollection &

/*
QWebElement at ( int i ) const
*/
$method=|QWebElement|at|int

/*
int count () const
*/
$method=|int|count|

/*
QWebElement first () const
*/
$method=|QWebElement|first|

/*
QWebElement last () const
*/
$method=|QWebElement|last|

/*
QList<QWebElement> toList () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_TOLIST )
{
  QWebElementCollection * obj = (QWebElementCollection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QWebElement> list = obj->toList ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBELEMENT" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBELEMENT" );
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
        hb_itemPutPtr( pItem, (QWebElement *) new QWebElement ( list[i] ) );
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
}

$extraMethods

#pragma ENDDUMP
