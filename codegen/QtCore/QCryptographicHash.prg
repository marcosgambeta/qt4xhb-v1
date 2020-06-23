%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCryptographicHash ( Algorithm method )
$constructor=|new|QCryptographicHash::Algorithm

$deleteMethod

$prototype=void addData ( const char * data, int length )
$internalMethod=|void|addData,addData1|const char *,int

$prototype=void addData ( const QByteArray & data )
$internalMethod=|void|addData,addData2|const QByteArray &

/*
[1]void addData ( const char * data, int length )
[2]void addData ( const QByteArray & data )
*/

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QCryptographicHash_addData1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QCryptographicHash_addData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addData

$prototypeV2=void reset()

$prototypeV2=QByteArray result() const

$prototypeV2=static QByteArray hash( const QByteArray & data, QCryptographicHash::Algorithm method )

$extraMethods

#pragma ENDDUMP
