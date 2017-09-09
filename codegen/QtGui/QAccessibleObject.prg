$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QRECT
#endif

CLASS QAccessibleObject INHERIT QAccessibleInterface

   DATA self_destruction INIT .F.

   METHOD actionText
   METHOD doAction
   METHOD isValid
   METHOD object
   METHOD rect
   METHOD setText
   METHOD userActionCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
virtual QString actionText ( int action, Text t, int child ) const
*/
$virtualMethod=|QString|actionText|int,QAccessibleObject::Text,int

/*
virtual bool doAction ( int action, int child, const QVariantList & params )
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_DOACTION )
{
  QAccessibleObject * obj = (QAccessibleObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QVariantList par3;
PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
int i3;
int nLen3 = hb_arrayLen(aList3);
for (i3=0;i3<nLen3;i3++)
{
par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
}
    RBOOL( obj->doAction ( PINT(1), PINT(2), par3 ) );
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
    RBOOL( obj->isValid () );
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
    QObject * ptr = obj->object ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
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
    QRect * ptr = new QRect( obj->rect ( PINT(1) ) );
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
    obj->setText ( (QAccessibleObject::Text) hb_parni(1), PINT(2), PQSTRING(3) );
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
    RINT( (int) obj->userActionCount ( PINT(1) ) );
  }
}

#pragma ENDDUMP
