$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT
#endif

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly

   METHOD onPropertyChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerPropertyEditorInterface>

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
virtual QString currentPropertyName () const = 0
*/
$virtualMethod=|QString|currentPropertyName|

/*
virtual bool isReadOnly () const = 0
*/
$virtualMethod=|bool|isReadOnly|

/*
virtual QObject * object () const = 0
*/
$virtualMethod=|QObject *|object|

/*
virtual void setObject ( QObject * object ) = 0
*/
$virtualMethod=|void|setObject|QObject *

/*
virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
*/
$virtualMethod=|void|setPropertyValue|const QString &,const QVariant &,bool=true

/*
virtual void setReadOnly ( bool readOnly ) = 0
*/
$virtualMethod=|void|setReadOnly|bool

#pragma ENDDUMP
