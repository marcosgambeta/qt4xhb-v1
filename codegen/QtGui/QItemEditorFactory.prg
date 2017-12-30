$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemEditorFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD registerEditor
   METHOD valuePropertyName
   METHOD defaultFactory
   METHOD setDefaultFactory

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QItemEditorFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QItemEditorFactory ()
$constructor=|new|

$deleteMethod

$prototype=virtual QWidget * createEditor ( QVariant::Type type, QWidget * parent ) const
$virtualMethod=|QWidget *|createEditor|QVariant::Type,QWidget *

$prototype=void registerEditor ( QVariant::Type type, QItemEditorCreatorBase * creator )
$method=|void|registerEditor|QVariant::Type,QItemEditorCreatorBase *

$prototype=virtual QByteArray valuePropertyName ( QVariant::Type type ) const
$virtualMethod=|QByteArray|valuePropertyName|QVariant::Type

$prototype=static const QItemEditorFactory * defaultFactory ()
$staticMethod=|const QItemEditorFactory *|defaultFactory|

$prototype=static void setDefaultFactory ( QItemEditorFactory * factory )
$staticMethod=|void|setDefaultFactory|QItemEditorFactory *

$extraMethods

#pragma ENDDUMP
