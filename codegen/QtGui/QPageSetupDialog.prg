$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   METHOD new
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPageSetupDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW )
{
  QPageSetupDialog * o = new QPageSetupDialog ( PQPRINTER(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
PageSetupDialogOptions options () const
*/
$method=|QPageSetupDialog::PageSetupDialogOptions|options|

/*
QPrinter * printer ()
*/
$method=|QPrinter *|printer|

/*
void setOption ( PageSetupDialogOption option, bool on = true )
*/
$method=|void|setOption|QPageSetupDialog::PageSetupDialogOption,bool=true

/*
void setOptions ( PageSetupDialogOptions options )
*/
$method=|void|setOptions|QPageSetupDialog::PageSetupDialogOptions

/*
bool testOption ( PageSetupDialogOption option ) const
*/
$method=|bool|testOption|QPageSetupDialog::PageSetupDialogOption

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

#pragma ENDDUMP
