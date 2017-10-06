$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintDialog INHERIT QAbstractPrintDialog

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD done
   METHOD exec
   METHOD setVisible

   METHOD onAccepted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPrintDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPRINTDIALOG_NEW1 )
{
  QPrintDialog * o = new QPrintDialog ( PQPRINTER(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPrintDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPRINTDIALOG_NEW2 )
{
  QPrintDialog * o = new QPrintDialog ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
//[2]QPrintDialog ( QWidget * parent = 0 )

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPRINTDIALOG_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPRINTDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPRINTDIALOG_OPEN )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1), (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
PrintDialogOptions options () const
*/
HB_FUNC_STATIC( QPRINTDIALOG_OPTIONS )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->options () );
  }
}

/*
QPrinter * printer ()
*/
$method=|QPrinter *|printer|

/*
void setOption ( PrintDialogOption option, bool on = true )
*/
$method=|void|setOption|QPrintDialog::PrintDialogOption,bool=true

/*
void setOptions ( PrintDialogOptions options )
*/
$method=|void|setOptions|QPrintDialog::PrintDialogOptions

/*
bool testOption ( PrintDialogOption option ) const
*/
$method=|bool|testOption|QPrintDialog::PrintDialogOption

/*
virtual void done ( int result )
*/
$virtualMethod=|void|done|int

/*
virtual int exec ()
*/
$virtualMethod=|int|exec|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

#pragma ENDDUMP
