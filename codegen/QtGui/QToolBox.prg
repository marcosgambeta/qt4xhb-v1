$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QToolBox INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertItem1
   METHOD insertItem2
   METHOD insertItem
   METHOD isItemEnabled
   METHOD itemIcon
   METHOD itemText
   METHOD itemToolTip
   METHOD removeItem
   METHOD setItemEnabled
   METHOD setItemIcon
   METHOD setItemText
   METHOD setItemToolTip
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QToolBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QToolBox ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QTOOLBOX_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QToolBox * o = new QToolBox ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
*/
$method=|int|addItem,addItem1|QWidget *,const QIcon &,const QString &

/*
int addItem ( QWidget * w, const QString & text )
*/
$method=|int|addItem,addItem2|QWidget *,const QString &

//[1]int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
//[2]int addItem ( QWidget * w, const QString & text )

HB_FUNC_STATIC( QTOOLBOX_ADDITEM )
{
  if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTOOLBOX_ADDITEM1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTOOLBOX_ADDITEM2 );
  }
}

/*
int count () const
*/
$method=|int|count|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
QWidget * currentWidget () const
*/
$method=|QWidget *|currentWidget|

/*
int indexOf ( QWidget * widget ) const
*/
$method=|int|indexOf|QWidget *

/*
int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
*/
$method=|int|insertItem,insertItem1|int,QWidget *,const QIcon &,const QString &

/*
int insertItem ( int index, QWidget * widget, const QString & text )
*/
$method=|int|insertItem,insertItem2|int,QWidget *,const QString &

//[1]int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
//[2]int insertItem ( int index, QWidget * widget, const QString & text )

HB_FUNC_STATIC( QTOOLBOX_INSERTITEM )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTOOLBOX_INSERTITEM1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTOOLBOX_INSERTITEM2 );
  }
}

/*
bool isItemEnabled ( int index ) const
*/
$method=|bool|isItemEnabled|int

/*
QIcon itemIcon ( int index ) const
*/
$method=|QIcon|itemIcon|int

/*
QString itemText ( int index ) const
*/
$method=|QString|itemText|int

/*
QString itemToolTip ( int index ) const
*/
$method=|QString|itemToolTip|int

/*
void removeItem ( int index )
*/
$method=|void|removeItem|int

/*
void setItemEnabled ( int index, bool enabled )
*/
$method=|void|setItemEnabled|int,bool

/*
void setItemIcon ( int index, const QIcon & icon )
*/
$method=|void|setItemIcon|int,const QIcon &

/*
void setItemText ( int index, const QString & text )
*/
$method=|void|setItemText|int,const QString &

/*
void setItemToolTip ( int index, const QString & toolTip )
*/
$method=|void|setItemToolTip|int,const QString &

/*
QWidget * widget ( int index ) const
*/
$method=|QWidget *|widget|int

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setCurrentWidget ( QWidget * widget )
*/
$method=|void|setCurrentWidget|QWidget *

#pragma ENDDUMP
