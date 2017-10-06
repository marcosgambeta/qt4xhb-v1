$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
REQUEST QWIDGET
#endif

CLASS QShortcut INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD autoRepeat
   METHOD context
   METHOD id
   METHOD isEnabled
   METHOD key
   METHOD parentWidget
   METHOD setAutoRepeat
   METHOD setContext
   METHOD setEnabled
   METHOD setKey
   METHOD setWhatsThis
   METHOD whatsThis

   METHOD onActivated
   METHOD onActivatedAmbiguously

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QShortcut>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QShortcut(QWidget * parent)
*/
HB_FUNC_STATIC( QSHORTCUT_NEW1 )
{
  QShortcut * o = new QShortcut ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
*/
HB_FUNC_STATIC( QSHORTCUT_NEW2 )
{
  int par5 = ISNIL(5)? (int) Qt::WindowShortcut : hb_parni(5);
  QShortcut * o = new QShortcut ( *PQKEYSEQUENCE(1), PQWIDGET(2), (const char *) ISNIL(3)? 0 : hb_parc(3), (const char *) ISNIL(4)? 0 : hb_parc(4), (Qt::ShortcutContext) par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QShortcut(QWidget * parent)
//[2]QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)

HB_FUNC_STATIC( QSHORTCUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSHORTCUT_NEW1 );
  }
  else if( ISBETWEEN(2,5) && ISQKEYSEQUENCE(1) && ISQWIDGET(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSHORTCUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoRepeat() const
*/
$method=|bool|autoRepeat|

/*
Qt::ShortcutContext context() const
*/
$method=|Qt::ShortcutContext|context|

/*
int id() const
*/
$method=|int|id|

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
QKeySequence key() const
*/
$method=|QKeySequence|key|

/*
QWidget * parentWidget() const
*/
$method=|QWidget *|parentWidget|

/*
void setAutoRepeat(bool on)
*/
$method=|void|setAutoRepeat|bool

/*
void setContext(Qt::ShortcutContext context)
*/
$method=|void|setContext|Qt::ShortcutContext

/*
void setEnabled(bool enable)
*/
$method=|void|setEnabled|bool

/*
void setKey(const QKeySequence & key)
*/
$method=|void|setKey|const QKeySequence &

/*
void setWhatsThis(const QString & text)
*/
$method=|void|setWhatsThis|const QString &

/*
QString whatsThis() const
*/
$method=|QString|whatsThis|

#pragma ENDDUMP
