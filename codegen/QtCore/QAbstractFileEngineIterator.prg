$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
#endif

CLASS QAbstractFileEngineIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentFileInfo
   METHOD currentFileName
   METHOD currentFilePath
   METHOD filters
   METHOD hasNext
   METHOD nameFilters
   METHOD next
   METHOD path

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractFileEngineIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QFileInfo currentFileInfo () const
$virtualMethod=|QFileInfo|currentFileInfo|

$prototype=virtual QString currentFileName () const = 0
$virtualMethod=|QString|currentFileName|

$prototype=QString currentFilePath () const
$method=|QString|currentFilePath|

$prototype=QDir::Filters filters () const
$method=|QDir::Filters|filters|

$prototype=virtual bool hasNext () const = 0
$virtualMethod=|bool|hasNext|

$prototype=QStringList nameFilters () const
$method=|QStringList|nameFilters|

$prototype=virtual QString next () = 0
$virtualMethod=|QString|next|

$prototype=QString path () const
$method=|QString|path|

$extraMethods

#pragma ENDDUMP
