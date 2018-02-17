%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIconEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD paint
   METHOD pixmap

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

$deleteMethod

$prototype=virtual QSize actualSize ( const QSize & size, QIcon::Mode mode, QIcon::State state )
$virtualMethod=|QSize|actualSize|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addFile ( const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state )
$virtualMethod=|void|addFile|const QString &,const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addPixmap ( const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state )
$virtualMethod=|void|addPixmap|const QPixmap &,QIcon::Mode,QIcon::State

$prototype=virtual void paint ( QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state ) = 0
$virtualMethod=|void|paint|QPainter *,const QRect &,QIcon::Mode,QIcon::State

$prototype=virtual QPixmap pixmap ( const QSize & size, QIcon::Mode mode, QIcon::State state )
$virtualMethod=|QPixmap|pixmap|const QSize &,QIcon::Mode,QIcon::State

$extraMethods

#pragma ENDDUMP
