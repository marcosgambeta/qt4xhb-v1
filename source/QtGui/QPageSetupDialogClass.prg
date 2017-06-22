/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QPageSetupDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
HB_FUNC_STATIC( QPAGESETUPDIALOG_OPEN )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1), (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PageSetupDialogOptions options () const
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_OPTIONS )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->options () );
  }
}


/*
QPrinter * printer ()
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_PRINTER )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * ptr = obj->printer ();
    _qt4xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}


/*
void setOption ( PageSetupDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETOPTION )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QPageSetupDialog::PageSetupDialogOption) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( PageSetupDialogOptions options )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETOPTIONS )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QPageSetupDialog::PageSetupDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( PageSetupDialogOption option ) const
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_TESTOPTION )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption (  (QPageSetupDialog::PageSetupDialogOption) par1 ) );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETVISIBLE )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
