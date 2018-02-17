%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QUUID
#endif

CLASS QUuid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD toString
   METHOD toByteArray
   METHOD toRfc4122
   METHOD isNull
   METHOD variant
   METHOD version
   METHOD fromRfc4122
   METHOD createUuid

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QUuid()
$constructor=|new1|

$prototype=QUuid(uint l, ushort w1, ushort w2, uchar b1, uchar b2, uchar b3, uchar b4, uchar b5, uchar b6, uchar b7, uchar b8)
$constructor=|new2|uint,ushort,ushort,uchar,uchar,uchar,uchar,uchar,uchar,uchar,uchar

$prototype=QUuid(const QString &)
$constructor=|new3|const QString &

$prototype=QUuid(const char *)
$constructor=|new4|const char *

$prototype=QUuid(const QByteArray &)
$constructor=|new5|const QByteArray &

$prototype=QUuid(const GUID &guid)
%% TOOD: implementar
%% $constructor=|new6|const GUID &

//[1]QUuid()
//[2]QUuid(uint l, ushort w1, ushort w2, uchar b1, uchar b2, uchar b3, uchar b4, uchar b5, uchar b6, uchar b7, uchar b8)
//[3]QUuid(const QString &)
//[4]QUuid(const char *)
//[5]QUuid(const QByteArray &)
//[6]QUuid(const GUID &guid)

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QUUID_NEW1 );
  }
  else if( ISNUMPAR(11) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) && ISNUM(10) && ISNUM(11) )
  {
    HB_FUNC_EXEC( QUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW3 );
    //HB_FUNC_EXEC( QUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString toString() const;
$method=|QString|toString|

$prototype=QByteArray toByteArray() const
$method=|QByteArray|toByteArray|

$prototype=QByteArray toRfc4122() const
$method=|QByteArray|toRfc4122|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QUuid::Variant variant() const
$method=|QUuid::Variant|variant|

$prototype=QUuid::Version version() const
$method=|QUuid::Version|version|

$prototype=static QUuid fromRfc4122(const QByteArray &)
$staticMethod=|QUuid|fromRfc4122|const QByteArray &

$prototype=static QUuid createUuid()
$staticMethod=|QUuid|createUuid|

$extraMethods

#pragma ENDDUMP
