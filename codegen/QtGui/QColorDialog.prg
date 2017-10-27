$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD open1
   METHOD open2
   METHOD open
   METHOD options
   METHOD selectedColor
   METHOD setCurrentColor
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD customCount
   METHOD getColor1
   METHOD getColor2
   METHOD getColor
   METHOD setCustomColor
   METHOD setStandardColor

   METHOD onColorSelected
   METHOD onCurrentColorChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QColorDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QColorDialog ( QWidget * parent = 0 )
*/
$constructor=|new1|QWidget *=0

/*
QColorDialog ( const QColor & initial, QWidget * parent = 0 )
*/
$constructor=|new2|const QColor &,QWidget *=0

//[1]QColorDialog ( QWidget * parent = 0 )
//[2]QColorDialog ( const QColor & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_NEW1 );
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QColor currentColor () const
*/
$method=|QColor|currentColor|

/*
void open ()
*/
$method=|void|open,open1|

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open,open2|QObject *,const char *

//[1]void open ()
//[2]void open ( QObject * receiver, const char * member )

HB_FUNC_STATIC( QCOLORDIALOG_OPEN )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_OPEN1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_OPEN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ColorDialogOptions options () const
*/
$method=|QColorDialog::ColorDialogOptions|options|

/*
QColor selectedColor () const
*/
$method=|QColor|selectedColor|

/*
void setCurrentColor ( const QColor & color )
*/
$method=|void|setCurrentColor|const QColor &

/*
void setOption ( ColorDialogOption option, bool on = true )
*/
$method=|void|setOption|QColorDialog::ColorDialogOption,bool=true

/*
void setOptions ( ColorDialogOptions options )
*/
$method=|void|setOptions|QColorDialog::ColorDialogOptions

/*
bool testOption ( ColorDialogOption option ) const
*/
$method=|bool|testOption|QColorDialog::ColorDialogOption

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
static QRgb customColor ( int index )
*/
$staticMethod=|QRgb|customColor|int

/*
static int customCount ()
*/
$staticMethod=|int|customCount|

/*
static QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
*/
$staticMethod=|QColor|getColor,getColor1|const QColor &,QWidget *,const QString &,QColorDialog::ColorDialogOptions=0

/*
static QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )
*/
$staticMethod=|QColor|getColor,getColor2|const QColor &=Qt::white,QWidget *=0

//[1]QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
//[2]QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
{
  if( ISBETWEEN(3,4) && (ISQCOLOR(1)||ISCHAR(1)) && ISQWIDGET(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR1 );
  }
  else if( ISBETWEEN(0,2) && (ISQCOLOR(1)||ISCHAR(1)||ISNIL(1)) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setCustomColor ( int index, QRgb color )
*/
$staticMethod=|void|setCustomColor|int,QRgb

/*
static void setStandardColor ( int index, QRgb color
*/
$staticMethod=|void|setStandardColor|int,QRgb

#pragma ENDDUMP
