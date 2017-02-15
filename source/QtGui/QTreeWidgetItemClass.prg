/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QTREEWIDGETITEM
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QSIZE
REQUEST QTREEWIDGET

CLASS QTreeWidgetItem

   DATA pointer
   DATA class_id INIT Class_Id_QTreeWidgetItem
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QTreeWidgetItem
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTreeWidgetItem
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTreeWidgetItem
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTreeWidgetItem
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTreeWidgetItem
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTreeWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTreeWidgetItem>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItem ( int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW1 )
{
  QTreeWidgetItem * o = NULL;
  int par1 = ISNIL(1)? QTreeWidgetItem::Type : hb_parni(1);
  o = new QTreeWidgetItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( const QStringList & strings, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW2 )
{
  QTreeWidgetItem * o = NULL;
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
  int par2 = ISNIL(2)? QTreeWidgetItem::Type : hb_parni(2);
  o = new QTreeWidgetItem ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW3 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidget * par1 = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? QTreeWidgetItem::Type : hb_parni(2);
  o = new QTreeWidgetItem ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW4 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidget * par1 = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  o = new QTreeWidgetItem ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW5 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidget * par1 = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTreeWidgetItem * par2 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  o = new QTreeWidgetItem ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW6 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? QTreeWidgetItem::Type : hb_parni(2);
  o = new QTreeWidgetItem ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW7 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  o = new QTreeWidgetItem ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW8 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTreeWidgetItem * par2 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  o = new QTreeWidgetItem ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItem ( const QTreeWidgetItem & other )
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_NEW9 )
{
  QTreeWidgetItem * o = NULL;
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTreeWidgetItem ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    int par1 = hb_parni(1);
    QBrush * ptr = new QBrush( obj->background ( par1 ) );
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
    int par1 = hb_parni(1);
    int i = obj->checkState ( par1 );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    QTreeWidgetItem * ptr = obj->child ( par1 );
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
    int i = obj->childCount (  );
    hb_retni( i );
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
    int i = obj->childIndicatorPolicy (  );
    hb_retni( i );
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
    QTreeWidgetItem * ptr = obj->clone (  );
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
    int i = obj->columnCount (  );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->data ( par1, par2 ) );
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
    int i = obj->flags (  );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    QFont * ptr = new QFont( obj->font ( par1 ) );
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
    int par1 = hb_parni(1);
    QBrush * ptr = new QBrush( obj->foreground ( par1 ) );
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
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->icon ( par1 ) );
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
    int i = obj->indexOfChild ( par1 );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    QTreeWidgetItem * par2 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertChild ( par1, par2 );
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
    int par1 = hb_parni(1);
QList<QTreeWidgetItem *> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertChildren ( par1, par2 );
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
    bool b = obj->isDisabled (  );
    hb_retl( b );
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
    bool b = obj->isExpanded (  );
    hb_retl( b );
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
    bool b = obj->isFirstColumnSpanned (  );
    hb_retl( b );
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
    bool b = obj->isHidden (  );
    hb_retl( b );
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
    bool b = obj->isSelected (  );
    hb_retl( b );
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
    QTreeWidgetItem * ptr = obj->parent (  );
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
    int par1 = hb_parni(1);
    QBrush * par2 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackground ( par1, *par2 );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setCheckState ( par1,  (Qt::CheckState) par2 );
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
    obj->setChildIndicatorPolicy (  (QTreeWidgetItem::ChildIndicatorPolicy) par1 );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setData ( par1, par2, *par3 );
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
    bool par1 = hb_parl(1);
    obj->setDisabled ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setExpanded ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setFirstColumnSpanned ( par1 );
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
    obj->setFlags (  (Qt::ItemFlags) par1 );
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
    int par1 = hb_parni(1);
    QFont * par2 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFont ( par1, *par2 );
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
    int par1 = hb_parni(1);
    QBrush * par2 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setForeground ( par1, *par2 );
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
    bool par1 = hb_parl(1);
    obj->setHidden ( par1 );
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
    int par1 = hb_parni(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    obj->setIcon ( par1, par2 );
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
    bool par1 = hb_parl(1);
    obj->setSelected ( par1 );
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
    int par1 = hb_parni(1);
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSizeHint ( par1, *par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setStatusTip ( par1, par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setText ( par1, par2 );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setTextAlignment ( par1, par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setToolTip ( par1, par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setWhatsThis ( par1, par2 );
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
    int par1 = hb_parni(1);
    QSize * ptr = new QSize( obj->sizeHint ( par1 ) );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->sortChildren ( par1,  (Qt::SortOrder) par2 );
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
    int par1 = hb_parni(1);
    QString str1 = obj->statusTip ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    int par1 = hb_parni(1);
    QTreeWidgetItem * ptr = obj->takeChild ( par1 );
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
    QList<QTreeWidgetItem *> list = obj->takeChildren (  );
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
    int par1 = hb_parni(1);
    QString str1 = obj->text ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    int par1 = hb_parni(1);
    int i = obj->textAlignment ( par1 );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    QString str1 = obj->toolTip ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QTreeWidget * ptr = obj->treeWidget (  );
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
    int i = obj->type (  );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    QString str1 = obj->whatsThis ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
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





#pragma ENDDUMP
