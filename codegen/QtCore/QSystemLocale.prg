$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVARIANT
#endif

CLASS QSystemLocale

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD fallbackLocale
   METHOD query
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSystemLocale>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSystemLocale ()
*/
HB_FUNC_STATIC( QSYSTEMLOCALE_NEW )
{
  QSystemLocale * o = new QSystemLocale ();
  _qt4xhb_storePointerAndFlag ( o, false );
}



/*
virtual QLocale fallbackLocale () const
*/
HB_FUNC_STATIC( QSYSTEMLOCALE_FALLBACKLOCALE )
{
  QSystemLocale * obj = (QSystemLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->fallbackLocale () );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
virtual QVariant query ( QueryType type, QVariant in ) const
*/
HB_FUNC_STATIC( QSYSTEMLOCALE_QUERY )
{
  QSystemLocale * obj = (QSystemLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->query ( (QSystemLocale::QueryType) hb_parni(1), *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

$extraMethods

#pragma ENDDUMP
