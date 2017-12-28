$header

#include "hbclass.ch"

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractMessageHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
$method=|void|message|QtMsgType,const QString &,const QUrl &=QUrl(),const QSourceLocation &=QSourceLocation()

#pragma ENDDUMP
