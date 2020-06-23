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

$prototype=QTableWidgetItem ( int type = Type )
$internalConstructor=|new1|int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QString & text, int type = Type )
$internalConstructor=|new2|const QString &,int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
$internalConstructor=|new3|const QIcon &,const QString &,int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QTableWidgetItem & other )
$internalConstructor=|new4|const QTableWidgetItem &

/*
[1]QTableWidgetItem ( int type = Type )
[2]QTableWidgetItem ( const QString & text, int type = Type )
[3]QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
[4]QTableWidgetItem ( const QTableWidgetItem & other )
*/

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QTableWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTableWidgetItem_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTableWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QBrush background() const

$prototypeV2=Qt::CheckState checkState() const

$prototypeV2=virtual QTableWidgetItem * clone() const

$prototypeV2=int column() const

$prototypeV2=virtual QVariant data( int role ) const

$prototypeV2=Qt::ItemFlags flags() const

$prototypeV2=QFont font() const

$prototypeV2=QBrush foreground() const

$prototypeV2=QIcon icon() const

$prototypeV2=bool isSelected() const

$prototypeV2=virtual void read( QDataStream & in )

$prototypeV2=int row() const

$prototypeV2=void setBackground( const QBrush & brush )

$prototypeV2=void setCheckState( Qt::CheckState state )

$prototypeV2=virtual void setData( int role, const QVariant & value )

$prototypeV2=void setFlags( Qt::ItemFlags flags )

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=void setForeground( const QBrush & brush )

$prototypeV2=void setIcon( const QIcon & icon )

$prototypeV2=void setSelected( bool select )

$prototypeV2=void setSizeHint( const QSize & size )

$prototypeV2=void setStatusTip( const QString & statusTip )

$prototypeV2=void setText( const QString & text )

$prototypeV2=void setTextAlignment( int alignment )

$prototypeV2=void setToolTip( const QString & toolTip )

$prototypeV2=void setWhatsThis( const QString & whatsThis )

$prototypeV2=QSize sizeHint() const

$prototypeV2=QString statusTip() const

$prototypeV2=QTableWidget * tableWidget() const

$prototypeV2=QString text() const

$prototypeV2=int textAlignment() const

$prototypeV2=QString toolTip() const

$prototypeV2=int type() const

$prototypeV2=QString whatsThis() const

$prototypeV2=virtual void write( QDataStream & out ) const

$extraMethods

#pragma ENDDUMP
