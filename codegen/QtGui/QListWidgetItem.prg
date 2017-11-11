$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QLISTWIDGETITEM
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QLISTWIDGET
REQUEST QSIZE
#endif

CLASS QListWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isHidden
   METHOD isSelected
   METHOD listWidget
   METHOD read
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
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
   METHOD statusTip
   METHOD text
   METHOD textAlignment
   METHOD toolTip
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

#include <QListWidgetItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QListWidgetItem ( QListWidget * parent = 0, int type = Type )
*/
$internalConstructor=|new1|QListWidget *=0,int=QListWidgetItem::Type

/*
QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
*/
$internalConstructor=|new2|const QString &,QListWidget *=0,int=QListWidgetItem::Type

/*
QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
*/
$internalConstructor=|new3|const QIcon &,const QString &,QListWidget *=0,int=QListWidgetItem::Type

/*
QListWidgetItem ( const QListWidgetItem & other )
*/
$internalConstructor=|new4|const QListWidgetItem &

//[1]QListWidgetItem ( QListWidget * parent = 0, int type = Type )
//[2]QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
//[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
//[4]QListWidgetItem ( const QListWidgetItem & other )

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

$deleteMethod

/*
QBrush background () const
*/
$method=|QBrush|background|

/*
Qt::CheckState checkState () const
*/
$method=|Qt::CheckState|checkState|

/*
virtual QListWidgetItem * clone () const
*/
$virtualMethod=|QListWidgetItem *|clone|

/*
virtual QVariant data ( int role ) const
*/
$virtualMethod=|QVariant|data|int

/*
Qt::ItemFlags flags () const
*/
$method=|Qt::ItemFlags|flags|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QBrush foreground () const
*/
$method=|QBrush|foreground|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
bool isHidden () const
*/
$method=|bool|isHidden|

/*
bool isSelected () const
*/
$method=|bool|isSelected|

/*
QListWidget * listWidget () const
*/
$method=|QListWidget *|listWidget|

/*
virtual void read ( QDataStream & in )
*/
$virtualMethod=|void|read|QDataStream &

/*
void setBackground ( const QBrush & brush )
*/
$method=|void|setBackground|const QBrush &

/*
void setCheckState ( Qt::CheckState state )
*/
$method=|void|setCheckState|Qt::CheckState

/*
virtual void setData ( int role, const QVariant & value )
*/
$virtualMethod=|void|setData|int,const QVariant &

/*
void setFlags ( Qt::ItemFlags flags )
*/
$method=|void|setFlags|Qt::ItemFlags

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setForeground ( const QBrush & brush )
*/
$method=|void|setForeground|const QBrush &

/*
void setHidden ( bool hide )
*/
$method=|void|setHidden|bool

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setSelected ( bool select )
*/
$method=|void|setSelected|bool

/*
void setSizeHint ( const QSize & size )
*/
$method=|void|setSizeHint|const QSize &

/*
void setStatusTip ( const QString & statusTip )
*/
$method=|void|setStatusTip|const QString &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setTextAlignment ( int alignment )
*/
$method=|void|setTextAlignment|int

/*
void setToolTip ( const QString & toolTip )
*/
$method=|void|setToolTip|const QString &

/*
void setWhatsThis ( const QString & whatsThis )
*/
$method=|void|setWhatsThis|const QString &

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
QString statusTip () const
*/
$method=|QString|statusTip|

/*
QString text () const
*/
$method=|QString|text|

/*
int textAlignment () const
*/
$method=|int|textAlignment|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
int type () const
*/
$method=|int|type|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
virtual void write ( QDataStream & out ) const
*/
$virtualMethod=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
