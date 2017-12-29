/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QAccessibleWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAccessibleWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAccessibleWidget ( QWidget * w, Role role = Client, const QString & name = QString() )
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_NEW )
{
  int par2 = ISNIL(2)? (int) QAccessible::Client : hb_parni(2);
  QAccessibleWidget * o = new QAccessibleWidget ( PQWIDGET(1), (QAccessible::Role) par2, OPQSTRING(3,QString()) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
virtual QString actionText ( int action, Text t, int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ACTIONTEXT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
      RQSTRING( obj->actionText ( PINT(1), (QAccessible::Text) hb_parni(2), PINT(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int childAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILDAT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->childAt ( PINT(1), PINT(2) ) );
  }
}

/*
virtual int childCount () const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILDCOUNT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->childCount () );
  }
}

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
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INDEXOFCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->indexOfChild ( par1 ) );
  }
}

/*
virtual QRect rect ( int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_RECT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_RELATIONTO )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAccessibleInterface * par2 = (const QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->relationTo ( PINT(1), par2, PINT(3) ) );
  }
}

/*
virtual Role role ( int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ROLE )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->role ( PINT(1) ) );
  }
}

/*
virtual State state ( int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_STATE )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state ( PINT(1) ) );
  }
}

/*
virtual QString text ( Text t, int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_TEXT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      RQSTRING( obj->text ( (QAccessible::Text) hb_parni(1), PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int userActionCount ( int child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_USERACTIONCOUNT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->userActionCount ( PINT(1) ) );
  }
}

#pragma ENDDUMP
