$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QExtensionFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QExtensionFactory ( QExtensionManager * parent = 0 )
*/
$constructor=|new|QExtensionManager *=0

$deleteMethod

/*
QExtensionManager * extensionManager () const
*/
$method=|QExtensionManager *|extensionManager|

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
$virtualMethod=|QObject *|extension|QObject *,const QString &

#pragma ENDDUMP
