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

$prototype=QListWidgetItem ( QListWidget * parent = 0, int type = Type )
$internalConstructor=|new1|QListWidget *=0,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
$internalConstructor=|new2|const QString &,QListWidget *=0,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
$internalConstructor=|new3|const QIcon &,const QString &,QListWidget *=0,int=QListWidgetItem::Type

$prototype=QListWidgetItem ( const QListWidgetItem & other )
$internalConstructor=|new4|const QListWidgetItem &

/*
[1]QListWidgetItem ( QListWidget * parent = 0, int type = Type )
[2]QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
[4]QListWidgetItem ( const QListWidgetItem & other )
*/

HB_FUNC_STATIC( QLISTWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,2) && (ISQLISTWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QListWidgetItem_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQLISTWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QListWidgetItem_new2();
  }
  else if( ISBETWEEN(2,4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQLISTWIDGET(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QListWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=Qt::CheckState checkState () const
$method=|Qt::CheckState|checkState|

$prototype=virtual QListWidgetItem * clone () const
$virtualMethod=|QListWidgetItem *|clone|

$prototype=virtual QVariant data ( int role ) const
$virtualMethod=|QVariant|data|int

$prototype=Qt::ItemFlags flags () const
$method=|Qt::ItemFlags|flags|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QBrush foreground () const
$method=|QBrush|foreground|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=bool isHidden () const
$method=|bool|isHidden|

$prototype=bool isSelected () const
$method=|bool|isSelected|

$prototype=QListWidget * listWidget () const
$method=|QListWidget *|listWidget|

$prototype=virtual void read ( QDataStream & in )
$virtualMethod=|void|read|QDataStream &

$prototype=void setBackground ( const QBrush & brush )
$method=|void|setBackground|const QBrush &

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototype=virtual void setData ( int role, const QVariant & value )
$virtualMethod=|void|setData|int,const QVariant &

$prototype=void setFlags ( Qt::ItemFlags flags )
$method=|void|setFlags|Qt::ItemFlags

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setForeground ( const QBrush & brush )
$method=|void|setForeground|const QBrush &

$prototype=void setHidden ( bool hide )
$method=|void|setHidden|bool

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setSelected ( bool select )
$method=|void|setSelected|bool

$prototype=void setSizeHint ( const QSize & size )
$method=|void|setSizeHint|const QSize &

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextAlignment ( int alignment )
$method=|void|setTextAlignment|int

$prototype=void setToolTip ( const QString & toolTip )
$method=|void|setToolTip|const QString &

$prototype=void setWhatsThis ( const QString & whatsThis )
$method=|void|setWhatsThis|const QString &

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=QString statusTip () const
$method=|QString|statusTip|

$prototype=QString text () const
$method=|QString|text|

$prototypeV2=int textAlignment() const

$prototype=QString toolTip () const
$method=|QString|toolTip|

$prototypeV2=int type() const

$prototype=QString whatsThis () const
$method=|QString|whatsThis|

$prototype=virtual void write ( QDataStream & out ) const
$virtualMethod=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
