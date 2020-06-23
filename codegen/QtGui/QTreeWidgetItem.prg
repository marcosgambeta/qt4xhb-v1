%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTreeWidgetItem ( int type = Type )
$internalConstructor=|new1|int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( const QStringList & strings, int type = Type )
$internalConstructor=|new2|const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
$internalConstructor=|new3|QTreeWidget *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
$internalConstructor=|new4|QTreeWidget *,const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
$internalConstructor=|new5|QTreeWidget *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
$internalConstructor=|new6|QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
$internalConstructor=|new7|QTreeWidgetItem *,const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
$internalConstructor=|new8|QTreeWidgetItem *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem ( const QTreeWidgetItem & other )
$internalConstructor=|new9|const QTreeWidgetItem &

/*
[1]QTreeWidgetItem ( int type = Type )
[2]QTreeWidgetItem ( const QStringList & strings, int type = Type )
[3]QTreeWidgetItem ( QTreeWidget * parent, int type = Type )
[4]QTreeWidgetItem ( QTreeWidget * parent, const QStringList & strings, int type = Type )
[5]QTreeWidgetItem ( QTreeWidget * parent, QTreeWidgetItem * preceding, int type = Type )
[6]QTreeWidgetItem ( QTreeWidgetItem * parent, int type = Type )
[7]QTreeWidgetItem ( QTreeWidgetItem * parent, const QStringList & strings, int type = Type )
[8]QTreeWidgetItem ( QTreeWidgetItem * parent, QTreeWidgetItem * preceding, int type = Type )
[9]QTreeWidgetItem ( const QTreeWidgetItem & other )
*/

HB_FUNC_STATIC( QTREEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QTreeWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItem_new2();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItem_new3();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new4();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISQTREEWIDGETITEM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new5();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTreeWidgetItem_new6();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new7();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISQTREEWIDGETITEM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTreeWidgetItem_new8();
  }
  else if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    QTreeWidgetItem_new9(); // WARNING: conflita com [6] quando é apenas 1 parâmetro
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void addChild( QTreeWidgetItem * child )

$prototypeV2=void addChildren( const QList<QTreeWidgetItem *> & children )

$prototypeV2=QBrush background( int column ) const

$prototypeV2=Qt::CheckState checkState( int column ) const

$prototypeV2=QTreeWidgetItem * child( int index ) const

$prototypeV2=int childCount() const

$prototypeV2=QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy() const

$prototypeV2=virtual QTreeWidgetItem * clone() const

$prototypeV2=int columnCount() const

$prototypeV2=virtual QVariant data( int column, int role ) const

$prototypeV2=Qt::ItemFlags flags() const

$prototypeV2=QFont font( int column ) const

$prototypeV2=QBrush foreground( int column ) const

$prototypeV2=QIcon icon( int column ) const

$prototypeV2=int indexOfChild( QTreeWidgetItem * child ) const

$prototypeV2=void insertChild( int index, QTreeWidgetItem * child )

$prototypeV2=void insertChildren( int index, const QList<QTreeWidgetItem *> & children )

$prototypeV2=bool isDisabled() const

$prototypeV2=bool isExpanded() const

$prototypeV2=bool isFirstColumnSpanned() const

$prototypeV2=bool isHidden() const

$prototypeV2=bool isSelected() const

$prototypeV2=QTreeWidgetItem * parent() const

$prototypeV2=virtual void read( QDataStream & in )

$prototypeV2=void removeChild( QTreeWidgetItem * child )

$prototypeV2=void setBackground( int column, const QBrush & brush )

$prototypeV2=void setCheckState( int column, Qt::CheckState state )

$prototypeV2=void setChildIndicatorPolicy( QTreeWidgetItem::ChildIndicatorPolicy policy )

$prototypeV2=virtual void setData( int column, int role, const QVariant & value )

$prototypeV2=void setDisabled( bool disabled )

$prototypeV2=void setExpanded( bool expand )

$prototypeV2=void setFirstColumnSpanned( bool span )

$prototypeV2=void setFlags( Qt::ItemFlags flags )

$prototypeV2=void setFont( int column, const QFont & font )

$prototypeV2=void setForeground( int column, const QBrush & brush )

$prototypeV2=void setHidden( bool hide )

$prototypeV2=void setIcon( int column, const QIcon & icon )

$prototypeV2=void setSelected( bool select )

$prototypeV2=void setSizeHint( int column, const QSize & size )

$prototypeV2=void setStatusTip( int column, const QString & statusTip )

$prototypeV2=void setText( int column, const QString & text )

$prototypeV2=void setTextAlignment( int column, int alignment )

$prototypeV2=void setToolTip( int column, const QString & toolTip )

$prototypeV2=void setWhatsThis( int column, const QString & whatsThis )

$prototypeV2=QSize sizeHint( int column ) const

$prototypeV2=void sortChildren( int column, Qt::SortOrder order )

$prototypeV2=QString statusTip( int column ) const

$prototypeV2=QTreeWidgetItem * takeChild( int index )

$prototypeV2=QList<QTreeWidgetItem *> takeChildren()

$prototypeV2=QString text( int column ) const

$prototypeV2=int textAlignment( int column ) const

$prototypeV2=QString toolTip( int column ) const

$prototypeV2=QTreeWidget * treeWidget() const

$prototypeV2=int type() const

$prototypeV2=QString whatsThis( int column ) const

$prototypeV2=virtual void write( QDataStream & out ) const

$extraMethods

#pragma ENDDUMP
