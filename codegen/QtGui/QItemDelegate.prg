$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QItemDelegate ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QITEMDELEGATE_NEW )
{
  QItemDelegate * o = new QItemDelegate ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
bool hasClipping () const
*/
$method=|bool|hasClipping|

/*
QItemEditorFactory * itemEditorFactory () const
*/
$method=|QItemEditorFactory *|itemEditorFactory|

/*
void setClipping ( bool clip )
*/
$method=|void|setClipping|bool

/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
$method=|void|setItemEditorFactory|QItemEditorFactory *

#pragma ENDDUMP
