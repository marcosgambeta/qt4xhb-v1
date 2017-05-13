/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject

   DATA class_id INIT Class_Id_QAccessibleWidget
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
  QAccessibleWidget * o = NULL;
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QAccessible::Client : hb_parni(2);
  o = new QAccessibleWidget ( par1,  (QAccessible::Role) par2, OPQSTRING(3,QString()) );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QString str1 = obj->actionText ( par1,  (QAccessible::Text) par2, par3 );
    hb_retc( RQSTRING(str1) );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    hb_retni( obj->childAt ( par1, par2 ) );
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
    hb_retni( obj->childCount () );
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
virtual int indexOfChild ( const QAccessibleInterface * child ) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INDEXOFCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->indexOfChild ( par1 ) );
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
    int par1 = hb_parni(1);
    QRect * ptr = new QRect( obj->rect ( par1 ) );
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
    int par1 = hb_parni(1);
    const QAccessibleInterface * par2 = (const QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    hb_retni( (int) obj->relationTo ( par1, par2, par3 ) );
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
    int par1 = hb_parni(1);
    hb_retni( (int) obj->role ( par1 ) );
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
    int par1 = hb_parni(1);
    hb_retni( (int) obj->state ( par1 ) );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QString str1 = obj->text (  (QAccessible::Text) par1, par2 );
    hb_retc( RQSTRING(str1) );
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
    int par1 = hb_parni(1);
    hb_retni( obj->userActionCount ( par1 ) );
  }
}




#pragma ENDDUMP
