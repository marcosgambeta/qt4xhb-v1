/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractPrintDialog>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"



/*
virtual int exec () = 0
*/
HB_FUNC( QABSTRACTPRINTDIALOG_EXEC )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->exec (  );
    hb_retni( i );
  }
}


/*
int fromPage () const
*/
HB_FUNC( QABSTRACTPRINTDIALOG_FROMPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fromPage (  );
    hb_retni( i );
  }
}


/*
int maxPage () const
*/
HB_FUNC( QABSTRACTPRINTDIALOG_MAXPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->maxPage (  );
    hb_retni( i );
  }
}


/*
int minPage () const
*/
HB_FUNC( QABSTRACTPRINTDIALOG_MINPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->minPage (  );
    hb_retni( i );
  }
}


/*
PrintRange printRange () const
*/
HB_FUNC( QABSTRACTPRINTDIALOG_PRINTRANGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->printRange (  );
    hb_retni( i );
  }
}


/*
QPrinter * printer () const
*/
HB_FUNC( QABSTRACTPRINTDIALOG_PRINTER )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * ptr = obj->printer (  );
    _qt4xhb_createReturnClass ( ptr, "QPRINTER" );  }
}


/*
void setFromTo ( int from, int to )
*/
HB_FUNC( QABSTRACTPRINTDIALOG_SETFROMTO )
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
HB_FUNC( QABSTRACTPRINTDIALOG_SETMINMAX )
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
HB_FUNC( QABSTRACTPRINTDIALOG_SETPRINTRANGE )
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
HB_FUNC( QABSTRACTPRINTDIALOG_TOPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->toPage (  );
    hb_retni( i );
  }
}



