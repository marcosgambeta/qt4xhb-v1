$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QICON
REQUEST QSIZE
REQUEST QFONT
REQUEST QBRUSH
REQUEST QSTANDARDITEM
REQUEST QMODELINDEX
REQUEST QSTANDARDITEMMODEL
#endif

CLASS QStandardItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD data
   METHOD setData
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD toolTip
   METHOD setToolTip
   METHOD statusTip
   METHOD setStatusTip
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD setSizeHint
   METHOD font
   METHOD setFont
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD background
   METHOD setBackground
   METHOD foreground
   METHOD setForeground
   METHOD checkState
   METHOD setCheckState
   METHOD accessibleText
   METHOD setAccessibleText
   METHOD accessibleDescription
   METHOD setAccessibleDescription
   METHOD flags
   METHOD setFlags
   METHOD isEnabled
   METHOD setEnabled
   METHOD isEditable
   METHOD setEditable
   METHOD isSelectable
   METHOD setSelectable
   METHOD isCheckable
   METHOD setCheckable
   METHOD isTristate
   METHOD setTristate
   METHOD isDragEnabled
   METHOD setDragEnabled
   METHOD isDropEnabled
   METHOD setDropEnabled
   METHOD parent
   METHOD row
   METHOD column
   METHOD index
   METHOD model
   METHOD rowCount
   METHOD setRowCount
   METHOD columnCount
   METHOD setColumnCount
   METHOD hasChildren
   METHOD child
   METHOD setChild
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow
   METHOD insertColumn
   METHOD insertRows1
   METHOD insertRows2
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRow
   METHOD removeColumn
   METHOD removeRows
   METHOD removeColumns
   METHOD appendRow1
   METHOD appendRow2
   METHOD appendRow
   METHOD appendRows
   METHOD appendColumn
   METHOD takeChild
   METHOD takeRow
   METHOD takeColumn
   METHOD sortChildren
   METHOD clone
   METHOD type
   METHOD read
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

#include <QStandardItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QStandardItem()
$internalConstructor=|new1|

$prototype=QStandardItem(const QString &text)
$internalConstructor=|new2|const QString &

$prototype=QStandardItem(const QIcon &icon, const QString &text)
$internalConstructor=|new3|const QIcon &,const QString &

$prototype=QStandardItem(int rows, int columns = 1)
$internalConstructor=|new4|int,int=1

//[1]QStandardItem()
//[2]QStandardItem(const QString &text)
//[3]QStandardItem(const QIcon &icon, const QString &text)
//[4]QStandardItem(int rows, int columns = 1)

HB_FUNC_STATIC( QSTANDARDITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStandardItem_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStandardItem_new2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QStandardItem_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QStandardItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QVariant data(int role = Qt::UserRole + 1) const
$virtualMethod=|QVariant|data|int=Qt::UserRole + 1

$prototype=virtual void setData(const QVariant &value, int role = Qt::UserRole + 1)
$virtualMethod=|void|setData|const QVariant &,int=Qt::UserRole + 1

$prototype=QString text() const
$method=|QString|text|

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototype=QIcon icon() const
$method=|QIcon|icon|

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototype=QString toolTip() const
$method=|QString|toolTip|

$prototype=void setToolTip(const QString &toolTip)
$method=|void|setToolTip|const QString &

$prototype=QString statusTip() const
$method=|QString|statusTip|

$prototype=void setStatusTip(const QString &statusTip)
$method=|void|setStatusTip|const QString &

$prototype=QString whatsThis() const
$method=|QString|whatsThis|

$prototype=void setWhatsThis(const QString &whatsThis)
$method=|void|setWhatsThis|const QString &

$prototype=QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=void setSizeHint(const QSize &sizeHint)
$method=|void|setSizeHint|const QSize &

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

$prototype=Qt::Alignment textAlignment() const
$method=|Qt::Alignment|textAlignment|

$prototype=void setTextAlignment(Qt::Alignment textAlignment)
$method=|void|setTextAlignment|Qt::Alignment

$prototype=QBrush background() const
$method=|QBrush|background|

$prototype=void setBackground(const QBrush &brush)
$method=|void|setBackground|const QBrush &

$prototype=QBrush foreground() const
$method=|QBrush|foreground|

$prototype=void setForeground(const QBrush &brush)
$method=|void|setForeground|const QBrush &

$prototype=Qt::CheckState checkState() const
$method=|Qt::CheckState|checkState|

$prototype=void setCheckState(Qt::CheckState checkState)
$method=|void|setCheckState|Qt::CheckState

$prototype=QString accessibleText() const
$method=|QString|accessibleText|

$prototype=void setAccessibleText(const QString &accessibleText)
$method=|void|setAccessibleText|const QString &

$prototype=QString accessibleDescription() const
$method=|QString|accessibleDescription|

$prototype=void setAccessibleDescription(const QString &accessibleDescription)
$method=|void|setAccessibleDescription|const QString &

$prototype=Qt::ItemFlags flags() const
$method=|Qt::ItemFlags|flags|

$prototype=void setFlags(Qt::ItemFlags flags)
$method=|void|setFlags|Qt::ItemFlags

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=void setEnabled(bool enabled)
$method=|void|setEnabled|bool

$prototype=bool isEditable() const
$method=|bool|isEditable|

$prototype=void setEditable(bool editable)
$method=|void|setEditable|bool

$prototype=bool isSelectable() const
$method=|bool|isSelectable|

$prototype=void setSelectable(bool selectable)
$method=|void|setSelectable|bool

$prototype=bool isCheckable() const
$method=|bool|isCheckable|

$prototype=void setCheckable(bool checkable)
$method=|void|setCheckable|bool

$prototype=bool isTristate() const
$method=|bool|isTristate|

$prototype=void setTristate(bool tristate)
$method=|void|setTristate|bool

$prototype=bool isDragEnabled() const
$method=|bool|isDragEnabled|

$prototype=void setDragEnabled(bool dragEnabled)
$method=|void|setDragEnabled|bool

$prototype=bool isDropEnabled() const
$method=|bool|isDropEnabled|

$prototype=void setDropEnabled(bool dropEnabled)
$method=|void|setDropEnabled|bool

$prototype=QStandardItem *parent() const
$method=|QStandardItem *|parent|

$prototype=int row() const
$method=|int|row|

$prototype=int column() const
$method=|int|column|

$prototype=QModelIndex index() const
$method=|QModelIndex|index|

$prototype=QStandardItemModel *model() const
$method=|QStandardItemModel *|model|

$prototype=int rowCount() const
$method=|int|rowCount|

$prototype=void setRowCount(int rows)
$method=|void|setRowCount|int

$prototype=int columnCount() const
$method=|int|columnCount|

$prototype=void setColumnCount(int columns)
$method=|void|setColumnCount|int

$prototype=bool hasChildren() const
$method=|bool|hasChildren|

$prototype=QStandardItem *child(int row, int column = 0) const
$method=|QStandardItem *|child|int,int=0

$prototype=void setChild(int row, int column, QStandardItem *item)
$internalMethod=|void|setChild,setChild1|int,int,QStandardItem *

$prototype=void setChild(int row, QStandardItem *item)
$internalMethod=|void|setChild,setChild2|int,QStandardItem *

//[1]void setChild(int row, int column, QStandardItem *item)
//[2]void setChild(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_SETCHILD )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    QStandardItem_setChild1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItem_setChild2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertRow(int row, const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertRow ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void insertRow(int row, QStandardItem *item)
$method=|void|insertRow,insertRow2|int,QStandardItem *

//[1]void insertRow(int row, const QList<QStandardItem*> &items)
//[2]void insertRow(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertColumn(int column, const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEM_INSERTCOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertColumn ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void insertRows(int row, const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertRows ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void insertRows(int row, int count)
$method=|void|insertRows,insertRows2|int,int

//[1]void insertRows(int row, const QList<QStandardItem*> &items)
//[2]void insertRows(int row, int count)

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROWS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROWS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertColumns(int column, int count)
$method=|void|insertColumns|int,int

$prototype=void removeRow(int row)
$method=|void|removeRow|int

$prototype=void removeColumn(int column)
$method=|void|removeColumn|int

$prototype=void removeRows(int row, int count)
$method=|void|removeRows|int,int

$prototype=void removeColumns(int column, int count)
$method=|void|removeColumns|int,int

$prototype=void appendRow(const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendRow ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void appendRow(QStandardItem *item)
$method=|void|appendRow,appendRow2|QStandardItem *

//[1]void appendRow(const QList<QStandardItem*> &items)
//[2]void appendRow(QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_APPENDROW1 );
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_APPENDROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void appendRows(const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROWS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendRows ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void appendColumn(const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEM_APPENDCOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendColumn ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=QStandardItem *takeChild(int row, int column = 0)
$method=|QStandardItem *|takeChild|int,int=0

$prototype=QList<QStandardItem*> takeRow(int row)
HB_FUNC_STATIC( QSTANDARDITEM_TAKEROW )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> list = obj->takeRow ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QStandardItem*> takeColumn(int column)
HB_FUNC_STATIC( QSTANDARDITEM_TAKECOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> list = obj->takeColumn ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void sortChildren(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sortChildren|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=QStandardItem *clone() const
$method=|QStandardItem *|clone|

$prototype=virtual int type() const
$virtualMethod=|int|type|

$prototype=virtual void read(QDataStream &in)
$virtualMethod=|void|read|QDataStream &

$prototype=virtual void write(QDataStream &out) const
$virtualMethod=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
