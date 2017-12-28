$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QPOINT
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QDropEvent INHERIT QEvent,QMimeSource

   METHOD new
   METHOD delete
   METHOD acceptProposedAction
   METHOD dropAction
   METHOD keyboardModifiers
   METHOD mimeData
   METHOD mouseButtons
   METHOD pos
   METHOD possibleActions
   METHOD proposedAction
   METHOD setDropAction
   METHOD source
   METHOD encodedData
   METHOD format
   METHOD provides

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDropEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDropEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = Drop )
HB_FUNC_STATIC( QDROPEVENT_NEW )
{
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) QDropEvent::Drop : hb_parni(6);
  QDropEvent * o = new QDropEvent ( *PQPOINT(1), (Qt::DropActions) par2, par3, (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5, (QDropEvent::Type) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=void acceptProposedAction ()
$method=|void|acceptProposedAction|

$prototype=Qt::DropAction dropAction () const
$method=|Qt::DropAction|dropAction|

$prototype=Qt::KeyboardModifiers keyboardModifiers () const
$method=|Qt::KeyboardModifiers|keyboardModifiers|

$prototype=const QMimeData * mimeData () const
$method=|const QMimeData *|mimeData|

$prototype=Qt::MouseButtons mouseButtons () const
$method=|Qt::MouseButtons|mouseButtons|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=Qt::DropActions possibleActions () const
$method=|Qt::DropActions|possibleActions|

$prototype=Qt::DropAction proposedAction () const
$method=|Qt::DropAction|proposedAction|

$prototype=void setDropAction ( Qt::DropAction action )
$method=|void|setDropAction|Qt::DropAction

$prototype=QWidget * source () const
$method=|QWidget *|source|

$prototype=virtual QByteArray encodedData ( const char * format ) const
$virtualMethod=|QByteArray|encodedData|const char *

$prototype=virtual const char * format ( int n = 0 ) const
$virtualMethod=|const char *|format|int=0

$prototype=virtual bool provides ( const char * mimeType ) const
$virtualMethod=|bool|provides|const char *

#pragma ENDDUMP
