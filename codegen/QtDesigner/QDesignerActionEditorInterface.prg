$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerActionEditorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD manageAction
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerActionEditorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDesignerFormEditorInterface>

$deleteMethod

/*
virtual QDesignerFormEditorInterface * core () const
*/
$virtualMethod=|QDesignerFormEditorInterface *|core|

/*
virtual void manageAction ( QAction * action ) = 0
*/
$virtualMethod=|void|manageAction|QAction *

/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
$virtualMethod=|void|setFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
