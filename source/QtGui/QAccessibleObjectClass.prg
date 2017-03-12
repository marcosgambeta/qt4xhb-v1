/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QRECT
#endif

CLASS QAccessibleObject INHERIT QAccessibleInterface

   DATA class_id INIT Class_Id_QAccessibleObject
   DATA self_destruction INIT .f.

   METHOD actionText
   METHOD doAction
   METHOD isValid
   METHOD object
   METHOD rect
   METHOD setText
   METHOD userActionCount
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAccessibleObject>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"



/*
virtual QString actionText ( int action, Text t, int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_ACTIONTEXT )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QString str1 = obj->actionText ( par1,  (QAccessibleObject::Text) par2, par3 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool doAction ( int action, int child, const QVariantList & params )
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_DOACTION )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
QVariantList par3;
PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
int i3;
int nLen3 = hb_arrayLen(aList3);
for (i3=0;i3<nLen3;i3++)
{
par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
}
    hb_retl( obj->doAction ( par1, par2, par3 ) );
  }
}


/*
virtual bool isValid () const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_ISVALID )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
virtual QObject * object () const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_OBJECT )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual QRect rect ( int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_RECT )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QRect * ptr = new QRect( obj->rect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void setText ( Text t, int child, const QString & text )
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_SETTEXT )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QString par3 = hb_parc(3);
    obj->setText (  (QAccessibleObject::Text) par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int userActionCount ( int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_USERACTIONCOUNT )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( (int) obj->userActionCount ( par1 ) );
  }
}




#pragma ENDDUMP
