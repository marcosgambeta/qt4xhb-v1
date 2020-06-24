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

$beginClassFrom=QAbstractPrintDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
$internalConstructor=|new1|QPrinter *,QWidget *=0

$prototype=QPrintDialog ( QWidget * parent = 0 )
$internalConstructor=|new2|QWidget *=0

/*
[1]QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
[2]QPrintDialog ( QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPrintDialog_new1();
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPrintDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=QPrintDialog::PrintDialogOptions options() const

$prototypeV2=QPrinter * printer()

$prototypeV2=void setOption( QPrintDialog::PrintDialogOption option, bool on = true )

$prototypeV2=void setOptions( QPrintDialog::PrintDialogOptions options )

$prototypeV2=bool testOption( QPrintDialog::PrintDialogOption option ) const

$prototypeV2=virtual void done( int result )

$prototypeV2=virtual int exec()

$prototypeV2=virtual void setVisible( bool visible )

$beginSignals
$signal=|accepted(QPrinter*)
$endSignals

#pragma ENDDUMP
