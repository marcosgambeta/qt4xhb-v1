$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD codeTemplate
   METHOD createWidget
   METHOD domXml
   METHOD group
   METHOD icon
   METHOD includeFile
   METHOD initialize
   METHOD isContainer
   METHOD isInitialized
   METHOD name
   METHOD toolTip
   METHOD whatsThis

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerCustomWidgetInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString codeTemplate () const
*/
$virtualMethod=|QString|codeTemplate|

/*
virtual QWidget * createWidget ( QWidget * parent ) = 0
*/
$virtualMethod=|QWidget *|createWidget|QWidget *

/*
virtual QString domXml () const
*/
$virtualMethod=|QString|domXml|

/*
virtual QString group () const = 0
*/
$virtualMethod=|QString|group|

/*
virtual QIcon icon () const = 0
*/
$virtualMethod=|QIcon|icon|

/*
virtual QString includeFile () const = 0
*/
$virtualMethod=|QString|includeFile|

/*
virtual void initialize ( QDesignerFormEditorInterface * formEditor )
*/
$virtualMethod=|void|initialize|QDesignerFormEditorInterface *

/*
virtual bool isContainer () const = 0
*/
$virtualMethod=|bool|isContainer|

/*
virtual bool isInitialized () const
*/
$virtualMethod=|bool|isInitialized|

/*
virtual QString name () const = 0
*/
$virtualMethod=|QString|name|

/*
virtual QString toolTip () const = 0
*/
$virtualMethod=|QString|toolTip|

/*
virtual QString whatsThis () const = 0
*/
$virtualMethod=|QString|whatsThis|

$extraMethods

#pragma ENDDUMP
