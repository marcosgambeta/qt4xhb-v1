$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject

   METHOD new
   METHOD actionText
   METHOD childAt
   METHOD childCount
   METHOD doAction
   METHOD indexOfChild
   METHOD rect
   METHOD relationTo
   METHOD role
   METHOD state
   METHOD text
   METHOD userActionCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAccessibleWidget ( QWidget * w, Role role = Client, const QString & name = QString() )
*/
$constructor=|new|QWidget *,QAccessible::Role=QAccessible::Client,const QString &=QString()

/*
virtual QString actionText ( int action, Text t, int child ) const
*/
$virtualMethod=|QString|actionText|int,QAccessible::Text,int

/*
virtual int childAt ( int x, int y ) const
*/
$virtualMethod=|int|childAt|int,int

/*
virtual int childCount () const
*/
$virtualMethod=|int|childCount|

/*
virtual bool doAction ( int action, int child, const QVariantList & params )
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_DOACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual int indexOfChild ( const QAccessibleInterface * child ) const
*/
$virtualMethod=|int|indexOfChild|const QAccessibleInterface *

/*
virtual QRect rect ( int child ) const
*/
$virtualMethod=|QRect|rect|int

/*
virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const
*/
$virtualMethod=|QAccessible::Relation|relationTo|int,const QAccessibleInterface *,int

/*
virtual Role role ( int child ) const
*/
$virtualMethod=|QAccessible::Role|role|int

/*
virtual State state ( int child ) const
*/
$virtualMethod=|QAccessible::State|state|int

/*
virtual QString text ( Text t, int child ) const
*/
$virtualMethod=|QString|text|QAccessible::Text,int

/*
virtual int userActionCount ( int child ) const
*/
$virtualMethod=|int|userActionCount|int

#pragma ENDDUMP
