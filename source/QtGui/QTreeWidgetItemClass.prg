/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTREEWIDGETITEM
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QSIZE
REQUEST QTREEWIDGET
#endif

CLASS QTreeWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new
   METHOD delete
   METHOD addChild
   METHOD addChildren
   METHOD background
   METHOD checkState
   METHOD child
   METHOD childCount
   METHOD childIndicatorPolicy
   METHOD clone
   METHOD columnCount
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD indexOfChild
   METHOD insertChild
   METHOD insertChildren
   METHOD isDisabled
   METHOD isExpanded
   METHOD isFirstColumnSpanned
   METHOD isHidden
   METHOD isSelected
   METHOD parent
   METHOD read
   METHOD removeChild
   METHOD setBackground
   METHOD setCheckState
   METHOD setChildIndicatorPolicy
   METHOD setData
   METHOD setDisabled
   METHOD setExpanded
   METHOD setFirstColumnSpanned
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setHidden
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD sortChildren
   METHOD statusTip
   METHOD takeChild
   METHOD takeChildren
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD treeWidget
   METHOD type
   METHOD whatsThis
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTreeWidgetItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItem ( int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW1 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( OPINT(1,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( const QStringList & strings, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW2 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQSTRINGLIST(1), OPINT(2,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW3 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGET(1), OPINT(2,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW4 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGET(1), PQSTRINGLIST(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW5 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGET(1), PQTREEWIDGETITEM(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW6 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGETITEM(1), OPINT(2,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW7 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGETITEM(1), PQSTRINGLIST(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW8 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGETITEM(1), PQTREEWIDGETITEM(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItem ( const QTreeWidgetItem & other )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW9 )
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( *PQTREEWIDGETITEM(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTreeWidgetItem ( int type = Type )
//[2]QTreeWidgetItem ( const QStringList & strings, int type = Type )
//[3]QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
//[4]QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
//[5]QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
//[6]QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
//[7]QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
//[8]QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
//[9]QTreeWidgetItem ( const QTreeWidgetItem & other )

HB_FUNC_STATIC( QTREEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW4 );
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISQTREEWIDGETITEM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW5 );
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW6 );
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW7 );
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISQTREEWIDGETITEM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW8 );
  }
  else if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEM_NEW9 ); // WARNING: conflita com [6] quando é apenas 1 parâmetro
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTREEWIDGETITEM_DELETE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addChild ( QTreeWidgetItem * child )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ADDCHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addChild ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addChildren ( const QList<QTreeWidgetItem *> & children )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ADDCHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QTreeWidgetItem *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->addChildren ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush background ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_BACKGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
Qt::CheckState checkState ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHECKSTATE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->checkState ( PINT(1) ) );
  }
}

/*
QTreeWidgetItem * child ( int index ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->child ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
int childCount () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHILDCOUNT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->childCount () );
  }
}

/*
QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHILDINDICATORPOLICY )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->childIndicatorPolicy () );
  }
}

/*
virtual QTreeWidgetItem * clone () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CLONE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->clone ();
    _qt4xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
int columnCount () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_COLUMNCOUNT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}

/*
virtual QVariant data ( int column, int role ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_DATA )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_FLAGS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}

/*
QFont font ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_FONT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QBrush foreground ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_FOREGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
QIcon icon ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ICON )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
int indexOfChild ( QTreeWidgetItem * child ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_INDEXOFCHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->indexOfChild ( par1 ) );
  }
}

/*
void insertChild ( int index, QTreeWidgetItem * child )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_INSERTCHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * par2 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertChild ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertChildren ( int index, const QList<QTreeWidgetItem *> & children )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_INSERTCHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QTreeWidgetItem *> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertChildren ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDisabled () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISDISABLED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDisabled () );
  }
}

/*
bool isExpanded () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISEXPANDED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isExpanded () );
  }
}

/*
bool isFirstColumnSpanned () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISFIRSTCOLUMNSPANNED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFirstColumnSpanned () );
  }
}

/*
bool isHidden () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISHIDDEN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isHidden () );
  }
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISSELECTED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSelected () );
  }
}

/*
QTreeWidgetItem * parent () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_PARENT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->parent ();
    _qt4xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
virtual void read ( QDataStream & in )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_READ )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->read ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeChild ( QTreeWidgetItem * child )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_REMOVECHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeChild ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackground ( int column, const QBrush & brush )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETBACKGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackground ( PINT(1), *PQBRUSH(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckState ( int column, Qt::CheckState state )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETCHECKSTATE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCheckState ( PINT(1), (Qt::CheckState) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChildIndicatorPolicy ( QTreeWidgetItem::ChildIndicatorPolicy policy )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETCHILDINDICATORPOLICY )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setChildIndicatorPolicy ( (QTreeWidgetItem::ChildIndicatorPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( int column, int role, const QVariant & value )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETDATA )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( PINT(1), PINT(2), *PQVARIANT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled ( bool disabled )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETDISABLED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDisabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExpanded ( bool expand )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETEXPANDED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExpanded ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFirstColumnSpanned ( bool span )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFIRSTCOLUMNSPANNED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFirstColumnSpanned ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( Qt::ItemFlags flags )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFLAGS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags ( (Qt::ItemFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( int column, const QFont & font )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFONT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( PINT(1), *PQFONT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForeground ( int column, const QBrush & brush )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFOREGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForeground ( PINT(1), *PQBRUSH(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHidden ( bool hide )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETHIDDEN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHidden ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon ( int column, const QIcon & icon )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETICON )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    obj->setIcon ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelected ( bool select )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETSELECTED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelected ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeHint ( int column, const QSize & size )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETSIZEHINT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeHint ( PINT(1), *PQSIZE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusTip ( int column, const QString & statusTip )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETSTATUSTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStatusTip ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( int column, const QString & text )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTEXT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setText ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextAlignment ( int column, int alignment )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTEXTALIGNMENT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextAlignment ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( int column, const QString & toolTip )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTOOLTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToolTip ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis ( int column, const QString & whatsThis )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETWHATSTHIS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWhatsThis ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SIZEHINT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void sortChildren ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SORTCHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->sortChildren ( PINT(1), (Qt::SortOrder) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString statusTip ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_STATUSTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->statusTip ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTreeWidgetItem * takeChild ( int index )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TAKECHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidgetItem * ptr = obj->takeChild ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
QList<QTreeWidgetItem *> takeChildren ()
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TAKECHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QTreeWidgetItem *> list = obj->takeChildren ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTREEWIDGETITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QTREEWIDGETITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTreeWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QString text ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TEXT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->text ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int textAlignment ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TEXTALIGNMENT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->textAlignment ( PINT(1) ) );
  }
}

/*
QString toolTip ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TOOLTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->toolTip ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTreeWidget * treeWidget () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TREEWIDGET )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTreeWidget * ptr = obj->treeWidget ();
    _qt4xhb_createReturnClass ( ptr, "QTREEWIDGET" );
  }
}

/*
int type () const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TYPE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

/*
QString whatsThis ( int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_WHATSTHIS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->whatsThis ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_WRITE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->write ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTREEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTREEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
