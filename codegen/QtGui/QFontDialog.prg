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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontDialog(QWidget *parent = 0)
$internalConstructor=|new1|QWidget *=0

$prototype=QFontDialog(const QFont &initial, QWidget *parent = 0)
$internalConstructor=|new2|const QFont &,QWidget *=0

/*
[1]QFontDialog(QWidget *parent = 0)
[2]QFontDialog(const QFont &initial, QWidget *parent = 0)
*/

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QFontDialog_new1();
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QFontDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=QFont currentFont() const

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=QFontDialog::FontDialogOptions options() const

$prototypeV2=QFont selectedFont() const

$prototypeV2=void setCurrentFont( const QFont & font )

$prototypeV2=void setOption( QFontDialog::FontDialogOption option, bool on = true )

$prototypeV2=void setOptions( QFontDialog::FontDialogOptions options )

$prototypeV2=bool testOption( QFontDialog::FontDialogOption option ) const

$prototypeV2=virtual void setVisible( bool visible )

$prototype=static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
$internalStaticMethod=|QFont|getFont,getFont1|bool *,const QFont &,QWidget *,const QString &,QFontDialog::FontDialogOptions

$prototype=static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
$internalStaticMethod=|QFont|getFont,getFont2|bool *,const QFont &,QWidget *,const QString &

$prototype=static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
$internalStaticMethod=|QFont|getFont,getFont3|bool *,const QFont &,QWidget *=0

$prototype=static QFont getFont(bool *ok, QWidget *parent = 0)
$internalStaticMethod=|QFont|getFont,getFont4|bool *,QWidget *=0

/*
[1]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
[3]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
[4]static QFont getFont(bool *ok, QWidget *parent = 0)
*/

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISNUMPAR(5) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) && ISNUM(5) )
  {
    QFontDialog_getFont1();
  }
  else if( ISNUMPAR(4) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) )
  {
    QFontDialog_getFont2();
  }
  else if( ISBETWEEN(2,3) && ISLOG(1) && ISQFONT(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QFontDialog_getFont3();
  }
  else if( ISBETWEEN(1,2) && ISLOG(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QFontDialog_getFont4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=getFont

$beginSignals
$signal=|currentFontChanged(QFont)
$signal=|fontSelected(QFont)
$endSignals

#pragma ENDDUMP
