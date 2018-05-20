%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGEIOHANDLER
#endif

$beginClassFrom=QObject

   METHOD delete
   METHOD capabilities
   METHOD create
   METHOD keys

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual Capabilities capabilities ( QIODevice * device, const QByteArray & format ) const = 0
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CAPABILITIES )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->capabilities ( PQIODEVICE(1), *PQBYTEARRAY(2) ) );
  }
}

$prototype=virtual QImageIOHandler * create ( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CREATE )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QImageIOHandler * ptr = obj->create ( PQIODEVICE(1), par2 );
    _qt4xhb_createReturnClass ( ptr, "QIMAGEIOHANDLER" );
  }
}

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
