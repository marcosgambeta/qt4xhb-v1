$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QWebPluginFactory INHERIT QObject

   METHOD delete
   METHOD create
   METHOD refreshPlugins

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebPluginFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QObject * create ( const QString & mimeType, const QUrl & url, const QStringList & argumentNames, const QStringList & argumentValues ) const = 0
*/
$virtualMethod=|QObject *|create|const QString &,const QUrl &,const QStringList &,const QStringList &

/*
virtual void refreshPlugins ()
*/
$virtualMethod=|void|refreshPlugins|

#pragma ENDDUMP
