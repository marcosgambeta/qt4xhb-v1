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
$virtualMethod=|bool|isValid|

/*
virtual QObject * object () const
*/
$virtualMethod=|QObject *|object|

/*
virtual QRect rect ( int child ) const
*/
$virtualMethod=|QRect|rect|int

/*
virtual void setText ( Text t, int child, const QString & text )
*/
$virtualMethod=|void|setText|QAccessibleObject::Text,int,const QString &

/*
virtual int userActionCount ( int child ) const
*/
$virtualMethod=|int|userActionCount|int

#pragma ENDDUMP
