$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QCryptographicHash

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addData1
   METHOD addData2
   METHOD addData
   METHOD reset
   METHOD result
   METHOD hash
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCryptographicHash>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCryptographicHash ( Algorithm method )
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_NEW )
{
  QCryptographicHash * o = new QCryptographicHash ( (QCryptographicHash::Algorithm) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_DELETE )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addData ( const char * data, int length )
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA1 )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addData ( (const char *) hb_parc(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addData ( const QByteArray & data )
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA2 )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addData ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addData ( const char * data, int length )
//[2]void addData ( const QByteArray & data )

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA2 );
  }
}

/*
void reset ()
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_RESET )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray result () const
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_RESULT )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->result () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QByteArray hash ( const QByteArray & data, Algorithm method )
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_HASH )
{
  QByteArray * ptr = new QByteArray( QCryptographicHash::hash ( *PQBYTEARRAY(1), (QCryptographicHash::Algorithm) hb_parni(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}

$extraMethods

#pragma ENDDUMP
