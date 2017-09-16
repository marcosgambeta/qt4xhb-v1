$header

#include "hbclass.ch"

CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerWidgetBoxInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString fileName () const = 0
*/
$virtualMethod=|QString|fileName|

/*
virtual bool load () = 0
*/
$virtualMethod=|bool|load|

/*
virtual bool save () = 0
*/
$virtualMethod=|bool|save|

/*
virtual void setFileName ( const QString & fileName ) = 0
*/
$virtualMethod=|void|setFileName|const QString &

#pragma ENDDUMP
