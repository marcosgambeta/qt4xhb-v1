$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerObjectInspectorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDesignerFormEditorInterface>

$deleteMethod

prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

prototype=virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
$virtualMethod=|void|setFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
