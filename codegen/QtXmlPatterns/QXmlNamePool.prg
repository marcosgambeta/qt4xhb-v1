$header

#include "hbclass.ch"


CLASS QXmlNamePool

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlNamePool>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlNamePool ()
*/
HB_FUNC_STATIC( QXMLNAMEPOOL_NEW1 )
{
  QXmlNamePool * o = new QXmlNamePool ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlNamePool ( const QXmlNamePool & other )
*/
HB_FUNC_STATIC( QXMLNAMEPOOL_NEW2 )
{
  QXmlNamePool * o = new QXmlNamePool ( *PQXMLNAMEPOOL(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlNamePool ()
//[2]QXmlNamePool ( const QXmlNamePool & other )

HB_FUNC_STATIC( QXMLNAMEPOOL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAMEPOOL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    HB_FUNC_EXEC( QXMLNAMEPOOL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLNAMEPOOL_DELETE )
{
  QXmlNamePool * obj = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

$extraMethods

#pragma ENDDUMP
