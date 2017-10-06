$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBHISTORYINTERFACE
#endif

CLASS QWebHistoryInterface INHERIT QObject

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebHistoryInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void addHistoryEntry ( const QString & url ) = 0
*/
$virtualMethod=|void|addHistoryEntry|const QString &

/*
virtual bool historyContains ( const QString & url ) const = 0
*/
$virtualMethod=|bool|historyContains|const QString &

/*
static QWebHistoryInterface * defaultInterface ()
*/
$staticMethod=|QWebHistoryInterface *|defaultInterface|

/*
static void setDefaultInterface ( QWebHistoryInterface * defaultInterface )
*/
$staticMethod=|void|setDefaultInterface|QWebHistoryInterface *

#pragma ENDDUMP
