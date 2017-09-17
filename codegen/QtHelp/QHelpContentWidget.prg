$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpContentWidget INHERIT QTreeView

   DATA self_destruction INIT .F.

   METHOD indexOf

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpContentWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QModelIndex indexOf ( const QUrl & link )
*/
$method=|QModelIndex|indexOf|const QUrl &

#pragma ENDDUMP
