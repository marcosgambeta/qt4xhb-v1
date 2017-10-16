$header

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

$destructor

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

$deleteMethod

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
$method=|QBrush|background|int

/*
Qt::CheckState checkState ( int column ) const
*/
$method=|Qt::CheckState|checkState|int

/*
QTreeWidgetItem * child ( int index ) const
*/
$method=|QTreeWidgetItem *|child|int

/*
int childCount () const
*/
$method=|int|childCount|

/*
QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy () const
*/
$method=|QTreeWidgetItem::ChildIndicatorPolicy|childIndicatorPolicy|

/*
virtual QTreeWidgetItem * clone () const
*/
$virtualMethod=|QTreeWidgetItem *|clone|

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
virtual QVariant data ( int column, int role ) const
*/
$virtualMethod=|QVariant|data|int,int

/*
Qt::ItemFlags flags () const
*/
$method=|Qt::ItemFlags|flags|

/*
QFont font ( int column ) const
*/
$method=|QFont|font|int

/*
QBrush foreground ( int column ) const
*/
$method=|QBrush|foreground|int

/*
QIcon icon ( int column ) const
*/
$method=|QIcon|icon|int

/*
int indexOfChild ( QTreeWidgetItem * child ) const
*/
$method=|int|indexOfChild|QTreeWidgetItem *

/*
void insertChild ( int index, QTreeWidgetItem * child )
*/
$method=|void|insertChild|int,QTreeWidgetItem *

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
      par2 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertChildren ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDisabled () const
*/
$method=|bool|isDisabled|

/*
bool isExpanded () const
*/
$method=|bool|isExpanded|

/*
bool isFirstColumnSpanned () const
*/
$method=|bool|isFirstColumnSpanned|

/*
bool isHidden () const
*/
$method=|bool|isHidden|

/*
bool isSelected () const
*/
$method=|bool|isSelected|

/*
QTreeWidgetItem * parent () const
*/
$method=|QTreeWidgetItem *|parent|

/*
virtual void read ( QDataStream & in )
*/
$virtualMethod=|void|read|QDataStream &

/*
void removeChild ( QTreeWidgetItem * child )
*/
$method=|void|removeChild|QTreeWidgetItem *

/*
void setBackground ( int column, const QBrush & brush )
*/
$method=|void|setBackground|int,const QBrush &

/*
void setCheckState ( int column, Qt::CheckState state )
*/
$method=|void|setCheckState|int,Qt::CheckState

/*
void setChildIndicatorPolicy ( QTreeWidgetItem::ChildIndicatorPolicy policy )
*/
$method=|void|setChildIndicatorPolicy|QTreeWidgetItem::ChildIndicatorPolicy

/*
virtual void setData ( int column, int role, const QVariant & value )
*/
$virtualMethod=|void|setData|int,int,const QVariant &

/*
void setDisabled ( bool disabled )
*/
$method=|void|setDisabled|bool

/*
void setExpanded ( bool expand )
*/
$method=|void|setExpanded|bool

/*
void setFirstColumnSpanned ( bool span )
*/
$method=|void|setFirstColumnSpanned|bool

/*
void setFlags ( Qt::ItemFlags flags )
*/
$method=|void|setFlags|Qt::ItemFlags

/*
void setFont ( int column, const QFont & font )
*/
$method=|void|setFont|int,const QFont &

/*
void setForeground ( int column, const QBrush & brush )
*/
$method=|void|setForeground|int,const QBrush &

/*
void setHidden ( bool hide )
*/
$method=|void|setHidden|bool

/*
void setIcon ( int column, const QIcon & icon )
*/
$method=|void|setIcon|int,const QIcon &

/*
void setSelected ( bool select )
*/
$method=|void|setSelected|bool

/*
void setSizeHint ( int column, const QSize & size )
*/
$method=|void|setSizeHint|int,const QSize &

/*
void setStatusTip ( int column, const QString & statusTip )
*/
$method=|void|setStatusTip|int,const QString &

/*
void setText ( int column, const QString & text )
*/
$method=|void|setText|int,const QString &

/*
void setTextAlignment ( int column, int alignment )
*/
$method=|void|setTextAlignment|int,int

/*
void setToolTip ( int column, const QString & toolTip )
*/
$method=|void|setToolTip|int,const QString &

/*
void setWhatsThis ( int column, const QString & whatsThis )
*/
$method=|void|setWhatsThis|int,const QString &

/*
QSize sizeHint ( int column ) const
*/
$method=|QSize|sizeHint|int

/*
void sortChildren ( int column, Qt::SortOrder order )
*/
$method=|void|sortChildren|int,Qt::SortOrder

/*
QString statusTip ( int column ) const
*/
$method=|QString|statusTip|int

/*
QTreeWidgetItem * takeChild ( int index )
*/
$method=|QTreeWidgetItem *|takeChild|int

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
$method=|QString|text|int

/*
int textAlignment ( int column ) const
*/
$method=|int|textAlignment|int

/*
QString toolTip ( int column ) const
*/
$method=|QString|toolTip|int

/*
QTreeWidget * treeWidget () const
*/
$method=|QTreeWidget *|treeWidget|

/*
int type () const
*/
$method=|int|type|

/*
QString whatsThis ( int column ) const
*/
$method=|QString|whatsThis|int

/*
virtual void write ( QDataStream & out ) const
*/
$virtualMethod=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
