$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   METHOD new1
   METHOD new2
   METHOD new
   METHOD currentFont
   METHOD open
   METHOD options
   METHOD selectedFont
   METHOD setCurrentFont
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD getFont1
   METHOD getFont2
   METHOD getFont3
   METHOD getFont4
   METHOD getFont

   METHOD onCurrentFontChanged
   METHOD onFontSelected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontDialog(QWidget *parent = 0)
*/
$constructor=|new1|QWidget *=0

/*
QFontDialog(const QFont &initial, QWidget *parent = 0)
*/
$constructor=|new2|const QFont &,QWidget *=0

//[1]QFontDialog(QWidget *parent = 0)
//[2]QFontDialog(const QFont &initial, QWidget *parent = 0)

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QFont currentFont () const
*/
$method=|QFont|currentFont|

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
FontDialogOptions options () const
*/
$method=|QFontDialog::FontDialogOptions|options|

/*
QFont selectedFont () const
*/
$method=|QFont|selectedFont|

/*
void setCurrentFont ( const QFont & font )
*/
$method=|void|setCurrentFont|const QFont &

/*
void setOption ( FontDialogOption option, bool on = true )
*/
$method=|void|setOption|QFontDialog::FontDialogOption,bool=true

/*
void setOptions ( FontDialogOptions options )
*/
$method=|void|setOptions|QFontDialog::FontDialogOptions

/*
bool testOption ( FontDialogOption option ) const
*/
$method=|bool|testOption|QFontDialog::FontDialogOption

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
*/
$staticMethod=|QFont|getFont,getFont1|bool *,const QFont &,QWidget *,const QString &,QFontDialog::FontDialogOptions

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
*/
$staticMethod=|QFont|getFont,getFont2|bool *,const QFont &,QWidget *,const QString &

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
*/
$staticMethod=|QFont|getFont,getFont3|bool *,const QFont &,QWidget *=0

/*
static QFont getFont(bool *ok, QWidget *parent = 0)
*/
$staticMethod=|QFont|getFont,getFont4|bool *,QWidget *=0

//[1]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title,FontDialogOptions options)
//[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent, const QString &title)
//[3]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0)
//[4]static QFont getFont(bool *ok, QWidget *parent = 0)

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISNUMPAR(5) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT1 );
  }
  else if( ISNUMPAR(4) && ISLOG(1) && ISQFONT(2) && ISQWIDGET(3) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT2 );
  }
  else if( ISBETWEEN(2,3) && ISLOG(1) && ISQFONT(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT3 );
  }
  else if( ISBETWEEN(1,2) && ISLOG(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTDIALOG_GETFONT4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
