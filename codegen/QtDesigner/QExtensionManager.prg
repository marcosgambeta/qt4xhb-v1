$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QExtensionManager INHERIT QObject,QAbstractExtensionManager

   DATA self_destruction INIT .F.

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

/*
QExtensionManager ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
$virtualMethod=|QObject *|extension|QObject *,const QString &

/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
$virtualMethod=|void|registerExtensions|QAbstractExtensionFactory *,const QString &=QString()

/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
$virtualMethod=|void|unregisterExtensions|QAbstractExtensionFactory *,const QString &=QString()

#pragma ENDDUMP
