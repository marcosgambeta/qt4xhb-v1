/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSocketNotifier INHERIT QObject

   DATA class_id INIT Class_Id_QSocketNotifier
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled
   METHOD onActivated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSocketNotifier
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSocketNotifier>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSocketNotifier(int socket, Type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_NEW )
{
  QSocketNotifier * o = NULL;
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSocketNotifier ( PINT(1), (QSocketNotifier::Type) hb_parni(2), par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSOCKETNOTIFIER_DELETE )
{
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int socket() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SOCKET )
{
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->socket (  ) );
  }
}


/*
Type type() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_TYPE )
{
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type (  ) );
  }
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_ISENABLED )
{
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
void setEnabled(bool)
*/
HB_FUNC_STATIC( QSOCKETNOTIFIER_SETENABLED )
{
  QSocketNotifier * obj = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
