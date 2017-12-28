$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QOBJECT
REQUEST QRECT
#endif

CLASS QAccessibleInterface INHERIT QAccessible

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

$prototype=virtual QString actionText ( int action, Text t, int child ) const = 0
$virtualMethod=|QString|actionText|int,QAccessibleInterface::Text,int

$prototype=virtual int childAt ( int x, int y ) const = 0
$virtualMethod=|int|childAt|int,int

$prototype=virtual int childCount () const = 0
$virtualMethod=|int|childCount|

$prototype=virtual bool doAction ( int action, int child, const QVariantList & params = QVariantList() ) = 0
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

$prototype=virtual int indexOfChild ( const QAccessibleInterface * child ) const = 0
$virtualMethod=|int|indexOfChild|const QAccessibleInterface *

$prototype=QVariant invokeMethod ( Method method, int child = 0, const QVariantList & params = QVariantList() )
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

$prototype=virtual bool isValid () const = 0
$virtualMethod=|bool|isValid|

$prototype=virtual QObject * object () const = 0
$virtualMethod=|QObject *|object|

$prototype=virtual QRect rect ( int child ) const = 0
$virtualMethod=|QRect|rect|int

$prototype=virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const = 0
$virtualMethod=|QAccessible::Relation|relationTo|int,const QAccessibleInterface *,int

$prototype=virtual Role role ( int child ) const = 0
$virtualMethod=|QAccessible::Role|role|int

$prototype=virtual void setText ( Text t, int child, const QString & text ) = 0
$virtualMethod=|void|setText|QAccessibleInterface::Text,int,const QString &

$prototype=virtual State state ( int child ) const = 0
$virtualMethod=|QAccessible::State|state|int

$prototype=virtual QString text ( Text t, int child ) const = 0
$virtualMethod=|QString|text|QAccessibleInterface::Text,int

$prototype=virtual int userActionCount ( int child ) const = 0
$virtualMethod=|int|userActionCount|int

#pragma ENDDUMP
