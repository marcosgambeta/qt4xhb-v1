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

PROCEDURE destroyObject () CLASS QSystemLocale
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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


HB_FUNC_STATIC( QSYSTEMLOCALE_NEWFROM )
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

HB_FUNC_STATIC( QSYSTEMLOCALE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSYSTEMLOCALE_NEWFROM );
}

HB_FUNC_STATIC( QSYSTEMLOCALE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSYSTEMLOCALE_NEWFROM );
}

HB_FUNC_STATIC( QSYSTEMLOCALE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSYSTEMLOCALE_SETSELFDESTRUCTION )
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
