%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QExtensionManager INHERIT QObject,QAbstractExtensionManager

   METHOD new
   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QExtensionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QExtensionManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual QObject * extension ( QObject * object, const QString & iid ) const
$virtualMethod=|QObject *|extension|QObject *,const QString &

$prototype=virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
$virtualMethod=|void|registerExtensions|QAbstractExtensionFactory *,const QString &=QString()

$prototype=virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
$virtualMethod=|void|unregisterExtensions|QAbstractExtensionFactory *,const QString &=QString()

#pragma ENDDUMP
