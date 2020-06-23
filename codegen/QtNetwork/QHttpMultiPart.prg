%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHttpMultiPart ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
$internalConstructor=|new2|QHttpMultiPart::ContentType,QObject *=0

/*
[1]QHttpMultiPart ( QObject * parent = 0 )
[2]QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHttpMultiPart_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHttpMultiPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void append( const QHttpPart & httpPart )

$prototypeV2=QByteArray boundary() const

$prototypeV2=void setBoundary( const QByteArray & boundary )

$prototypeV2=void setContentType( QHttpMultiPart::ContentType contentType )

#pragma ENDDUMP
