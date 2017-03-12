/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QAbstractPrintDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QAbstractPrintDialog
   DATA self_destruction INIT .F.

   METHOD exec
   METHOD fromPage
   METHOD maxPage
   METHOD minPage
   METHOD printRange
   METHOD printer
   METHOD setFromTo
   METHOD setMinMax
   METHOD setPrintRange
   METHOD toPage
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractPrintDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractPrintDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"



/*
virtual int exec () = 0
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_EXEC )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->exec (  ) );
  }
}


/*
int fromPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_FROMPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->fromPage (  ) );
  }
}


/*
int maxPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_MAXPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maxPage (  ) );
  }
}


/*
int minPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_MINPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->minPage (  ) );
  }
}


/*
PrintRange printRange () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_PRINTRANGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->printRange (  ) );
  }
}


/*
QPrinter * printer () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_PRINTER )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * ptr = obj->printer (  );
    _qt4xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}


/*
void setFromTo ( int from, int to )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETFROMTO )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setFromTo ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinMax ( int min, int max )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETMINMAX )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setMinMax ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setPrintRange ( PrintRange range )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETPRINTRANGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrintRange (  (QAbstractPrintDialog::PrintRange) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int toPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_TOPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->toPage (  ) );
  }
}




#pragma ENDDUMP
