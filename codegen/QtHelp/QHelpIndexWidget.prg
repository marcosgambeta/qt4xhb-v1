$header

#include "hbclass.ch"

CLASS QHelpIndexWidget INHERIT QListView

   METHOD activateCurrentItem
   METHOD filterIndices

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpIndexWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
void activateCurrentItem ()
*/
$method=|void|activateCurrentItem|

/*
void filterIndices ( const QString & filter, const QString & wildcard = QString() )
*/
$method=|void|filterIndices|const QString &,const QString &=QString()

#pragma ENDDUMP
