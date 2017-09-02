/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QERRORMESSAGE
#endif

CLASS QErrorMessage INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD showMessage1
   METHOD showMessage2
   METHOD showMessage
   METHOD qtHandler

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QErrorMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QErrorMessage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QErrorMessage ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QERRORMESSAGE_NEW )
{
  QErrorMessage * o = new QErrorMessage ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QERRORMESSAGE_DELETE )
{
  QErrorMessage * obj = (QErrorMessage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void showMessage ( const QString & message )
*/
HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE1 )
{
  QErrorMessage * obj = (QErrorMessage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showMessage ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage ( const QString & message, const QString & type )
*/
HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE2 )
{
  QErrorMessage * obj = (QErrorMessage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showMessage ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void showMessage ( const QString & message )
//[2]void showMessage ( const QString & message, const QString & type )

HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QERRORMESSAGE_SHOWMESSAGE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QERRORMESSAGE_SHOWMESSAGE2 );
  }
}

/*
QErrorMessage * qtHandler ()
*/
HB_FUNC_STATIC( QERRORMESSAGE_QTHANDLER )
{
  QErrorMessage * ptr = QErrorMessage::qtHandler ();
  _qt4xhb_createReturnClass ( ptr, "QERRORMESSAGE" );
}

#pragma ENDDUMP
