%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
$constructor=|new|QPrinter *,QWidget *=0

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=QPageSetupDialog::PageSetupDialogOptions options() const

$prototypeV2=QPrinter * printer()

$prototype=void setOption ( PageSetupDialogOption option, bool on = true )
$method=|void|setOption|QPageSetupDialog::PageSetupDialogOption,bool=true

$prototypeV2=void setOptions( QPageSetupDialog::PageSetupDialogOptions options )

$prototypeV2=bool testOption( QPageSetupDialog::PageSetupDialogOption option ) const

$prototypeV2=virtual void setVisible( bool visible )

#pragma ENDDUMP
