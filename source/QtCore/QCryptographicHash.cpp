/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCryptographicHash>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QCryptographicHash ( Algorithm method )
*/
HB_FUNC( QCRYPTOGRAPHICHASH_NEW )
{
  QCryptographicHash * o = NULL;
  int par1 = hb_parni(1);
  o = new QCryptographicHash (  (QCryptographicHash::Algorithm) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCryptographicHash *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QCRYPTOGRAPHICHASH_DELETE )
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
HB_FUNC( QCRYPTOGRAPHICHASH_ADDDATA1 )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int par2 = hb_parni(2);
    obj->addData (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addData ( const QByteArray & data )
*/
HB_FUNC( QCRYPTOGRAPHICHASH_ADDDATA2 )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addData ( const char * data, int length )
//[2]void addData ( const QByteArray & data )

HB_FUNC( QCRYPTOGRAPHICHASH_ADDDATA )
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
HB_FUNC( QCRYPTOGRAPHICHASH_RESET )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray result () const
*/
HB_FUNC( QCRYPTOGRAPHICHASH_RESULT )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->result (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}



/*
QByteArray hash ( const QByteArray & data, Algorithm method )
*/
HB_FUNC( QCRYPTOGRAPHICHASH_HASH )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  QByteArray * ptr = new QByteArray( QCryptographicHash::hash ( *par1,  (QCryptographicHash::Algorithm) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );}



