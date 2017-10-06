$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QWhatsThis

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createAction
   METHOD enterWhatsThisMode
   METHOD hideText
   METHOD inWhatsThisMode
   METHOD leaveWhatsThisMode
   METHOD showText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWhatsThis>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
static QAction * createAction ( QObject * parent = 0 )
*/
$staticMethod=|QAction *|createAction|QObject *=0

/*
static void enterWhatsThisMode ()
*/
$staticMethod=|void|enterWhatsThisMode|

/*
static void hideText ()
*/
$staticMethod=|void|hideText|

/*
static bool inWhatsThisMode ()
*/
$staticMethod=|bool|inWhatsThisMode|

/*
static void leaveWhatsThisMode ()
*/
$staticMethod=|void|leaveWhatsThisMode|

/*
static void showText ( const QPoint & pos, const QString & text, QWidget * w = 0 )
*/
$staticMethod=|void|showText|const QPoint &,const QString &,QWidget *=0

$extraMethods

#pragma ENDDUMP
