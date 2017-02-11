/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSslKey>

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
QSslKey ()
*/
HB_FUNC( QSSLKEY_NEW1 )
{
  QSslKey * o = NULL;
  o = new QSslKey (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC( QSSLKEY_NEW2 )
{
  QSslKey * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSsl::PrivateKey : hb_parni(4);
  QByteArray par5 = ISNIL(5)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSslKey ( *par1,  (QSsl::KeyAlgorithm) par2,  (QSsl::EncodingFormat) par3,  (QSsl::KeyType) par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC( QSSLKEY_NEW3 )
{
  QSslKey * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSsl::PrivateKey : hb_parni(4);
  QByteArray par5 = ISNIL(5)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSslKey ( par1,  (QSsl::KeyAlgorithm) par2,  (QSsl::EncodingFormat) par3,  (QSsl::KeyType) par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSslKey ( const QSslKey & other )
*/
HB_FUNC( QSSLKEY_NEW4 )
{
  QSslKey * o = NULL;
  QSslKey * par1 = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSslKey ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSslKey ()
//[2]QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[3]QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[4]QSslKey ( const QSslKey & other )

HB_FUNC( QSSLKEY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW1 );
  }
  else if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISQBYTEARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW2 );
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISQBYTEARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSSLKEY_DELETE )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSsl::KeyAlgorithm algorithm () const
*/
HB_FUNC( QSSLKEY_ALGORITHM )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->algorithm (  );
    hb_retni( i );
  }
}


/*
void clear ()
*/
HB_FUNC( QSSLKEY_CLEAR )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool isNull () const
*/
HB_FUNC( QSSLKEY_ISNULL )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
int length () const
*/
HB_FUNC( QSSLKEY_LENGTH )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->length (  );
    hb_retni( i );
  }
}


/*
QByteArray toDer ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC( QSSLKEY_TODER )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QByteArray * ptr = new QByteArray( obj->toDer ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
QByteArray toPem ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC( QSSLKEY_TOPEM )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QByteArray * ptr = new QByteArray( obj->toPem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
QSsl::KeyType type () const
*/
HB_FUNC( QSSLKEY_TYPE )
{
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}




