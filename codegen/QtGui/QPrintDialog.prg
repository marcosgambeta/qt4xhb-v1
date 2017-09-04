$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintDialog INHERIT QAbstractPrintDialog

   DATA self_destruction INIT .F.

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

HB_FUNC_STATIC( QPRINTDIALOG_DELETE )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QPRINTDIALOG_PRINTER )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * ptr = obj->printer ();
    _qt4xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}

/*
void setOption ( PrintDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETOPTION )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QPrintDialog::PrintDialogOption) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptions ( PrintDialogOptions options )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETOPTIONS )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions ( (QPrintDialog::PrintDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption ( PrintDialogOption option ) const
*/
HB_FUNC_STATIC( QPRINTDIALOG_TESTOPTION )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QPrintDialog::PrintDialogOption) par1 ) );
  }
}

/*
virtual void done ( int result )
*/
HB_FUNC_STATIC( QPRINTDIALOG_DONE )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->done ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int exec ()
*/
HB_FUNC_STATIC( QPRINTDIALOG_EXEC )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->exec () );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETVISIBLE )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
