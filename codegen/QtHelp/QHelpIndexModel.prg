$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpIndexModel INHERIT QStringListModel

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex

   METHOD onIndexCreated
   METHOD onIndexCreationStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpIndexModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
void createIndex ( const QString & customFilterName )
*/
$method=|void|createIndex|const QString &

/*
QModelIndex filter ( const QString & filter, const QString & wildcard = QString() )
*/
$method=|QModelIndex|filter|const QString &,const QString &=QString()

/*
bool isCreatingIndex () const
*/
$method=|bool|isCreatingIndex|

#pragma ENDDUMP
