$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintPreviewDialog INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD done
   METHOD setVisible

   METHOD onPaintRequested

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintPreviewDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPrintPreviewDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_NEW1 )
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QPrintPreviewDialog * o = new QPrintPreviewDialog ( PQPRINTER(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_NEW2 )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QPrintPreviewDialog * o = new QPrintPreviewDialog ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPRINTPREVIEWDIALOG_NEW1 );
  }
  else if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPRINTPREVIEWDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_DELETE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_OPEN )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1), (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPrinter * printer ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_PRINTER )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * ptr = obj->printer ();
    _qt4xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}

/*
virtual void done ( int result )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_DONE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->done ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_SETVISIBLE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
