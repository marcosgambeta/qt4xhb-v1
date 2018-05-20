%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
%% TODO: corrigir
%% REQUEST UCHAR
#endif

$beginClass

   METHOD delete
   METHOD handle
   METHOD handleType
%%   METHOD map
   METHOD mapMode
   METHOD unmap

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$deleteMethod

$prototype=virtual QVariant handle () const
$virtualMethod=|QVariant|handle|

$prototype=HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototype=virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
%% TODO: implementar 'uchar *'
%% $virtualMethod=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

$prototype=virtual MapMode mapMode () const = 0
$virtualMethod=|QAbstractVideoBuffer::MapMode|mapMode|

$prototype=virtual void unmap () = 0
$virtualMethod=|void|unmap|

$extraMethods

#pragma ENDDUMP
