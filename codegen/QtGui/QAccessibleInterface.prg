$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QOBJECT
REQUEST QRECT
#endif

CLASS QAccessibleInterface INHERIT QAccessible

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actionText
   METHOD childAt
   METHOD childCount
   METHOD doAction
   METHOD indexOfChild
   METHOD invokeMethod
   METHOD isValid
   METHOD object
   METHOD rect
   METHOD relationTo
   METHOD role
   METHOD setText
   METHOD state
   METHOD text
   METHOD userActionCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString actionText ( int action, Text t, int child ) const = 0
*/
$virtualMethod=|QString|actionText|int,QAccessibleInterface::Text,int

/*
virtual int childAt ( int x, int y ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDAT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->childAt ( PINT(1), PINT(2) ) );
  }
}

/*
virtual int childCount () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDCOUNT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->childCount () );
  }
}

/*
virtual bool doAction ( int action, int child, const QVariantList & params = QVariantList() ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_DOACTION )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int indexOfChild ( const QAccessibleInterface * child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INDEXOFCHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAccessibleInterface * par1 = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->indexOfChild ( par1 ) );
  }
}

/*
QVariant invokeMethod ( Method method, int child = 0, const QVariantList & params = QVariantList() )
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INVOKEMETHOD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QVariantList par3;
PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
int i3;
int nLen3 = hb_arrayLen(aList3);
for (i3=0;i3<nLen3;i3++)
{
par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
}
    QVariant * ptr = new QVariant( obj->invokeMethod ( (QAccessibleInterface::Method) par1, OPINT(2,0), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual bool isValid () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ISVALID )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
virtual QObject * object () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_OBJECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
virtual QRect rect ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_RECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_RELATIONTO )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAccessibleInterface * par2 = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->relationTo ( PINT(1), par2, PINT(3) ) );
  }
}

/*
virtual Role role ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ROLE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->role ( PINT(1) ) );
  }
}

/*
virtual void setText ( Text t, int child, const QString & text ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_SETTEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setText ( (QAccessibleInterface::Text) hb_parni(1), PINT(2), PQSTRING(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual State state ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_STATE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state ( PINT(1) ) );
  }
}

/*
virtual QString text ( Text t, int child ) const = 0
*/
$virtualMethod=|QString|text|QAccessibleInterface::Text,int

/*
virtual int userActionCount ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_USERACTIONCOUNT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( (int) obj->userActionCount ( PINT(1) ) );
  }
}

#pragma ENDDUMP
