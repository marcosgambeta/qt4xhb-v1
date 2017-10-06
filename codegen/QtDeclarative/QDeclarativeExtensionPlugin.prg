$header

#include "hbclass.ch"

CLASS QDeclarativeExtensionPlugin INHERIT QObject

   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeExtensionPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
virtual void initializeEngine ( QDeclarativeEngine * engine, const char * uri )
*/
$virtualMethod=|void|initializeEngine|QDeclarativeEngine *,const char *

/*
virtual void registerTypes ( const char * uri ) = 0
*/
$virtualMethod=|void|registerTypes|const char *

#pragma ENDDUMP
