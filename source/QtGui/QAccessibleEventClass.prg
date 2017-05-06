/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAccessibleEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QAccessibleEvent
   DATA self_destruction INIT .F.

   METHOD new
   METHOD child
   METHOD setValue
   METHOD value
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAccessibleEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QAccessibleEvent ( Type type, int child )
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_NEW )
{
  QAccessibleEvent * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  o = new QAccessibleEvent (  (QAccessibleEvent::Type) par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}



/*
int child () const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_CHILD )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->child (  ) );
  }
}


/*
void setValue ( const QString & text )
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_SETVALUE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString value () const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_VALUE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->value (  );
    hb_retc( RQSTRING(str1) );
  }
}




#pragma ENDDUMP
