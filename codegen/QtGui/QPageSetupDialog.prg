%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
$constructor=|new|QPrinter *,QWidget *=0

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=PageSetupDialogOptions options () const
$method=|QPageSetupDialog::PageSetupDialogOptions|options|

$prototype=QPrinter * printer ()
$method=|QPrinter *|printer|

$prototype=void setOption ( PageSetupDialogOption option, bool on = true )
$method=|void|setOption|QPageSetupDialog::PageSetupDialogOption,bool=true

$prototype=void setOptions ( PageSetupDialogOptions options )
$method=|void|setOptions|QPageSetupDialog::PageSetupDialogOptions

$prototype=bool testOption ( PageSetupDialogOption option ) const
$method=|bool|testOption|QPageSetupDialog::PageSetupDialogOption

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

#pragma ENDDUMP
