$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
REQUEST QICON
#endif

CLASS QTabWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addTab1
   METHOD addTab2
   METHOD addTab
   METHOD clear
   METHOD cornerWidget
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD documentMode
   METHOD elideMode
   METHOD iconSize
   METHOD indexOf
   METHOD insertTab1
   METHOD insertTab2
   METHOD insertTab
   METHOD isMovable
   METHOD isTabEnabled
   METHOD removeTab
   METHOD setCornerWidget
   METHOD setDocumentMode
   METHOD setElideMode
   METHOD setIconSize
   METHOD setMovable
   METHOD setTabEnabled
   METHOD setTabIcon
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setTabText
   METHOD setTabToolTip
   METHOD setTabWhatsThis
   METHOD setTabsClosable
   METHOD setUsesScrollButtons
   METHOD tabIcon
   METHOD tabPosition
   METHOD tabShape
   METHOD tabText
   METHOD tabToolTip
   METHOD tabWhatsThis
   METHOD tabsClosable
   METHOD usesScrollButtons
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged
   METHOD onTabCloseRequested

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTabWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTabWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABWIDGET_NEW )
{
  QTabWidget * o = new QTabWidget ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int addTab ( QWidget * page, const QString & label )
*/
$method=|int|addTab,addTab1|QWidget *,const QString &

/*
int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/
$method=|int|addTab,addTab2|QWidget *,const QIcon &,const QString &

//[1]int addTab ( QWidget * page, const QString & label )
//[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTABWIDGET_ADDTAB1 );
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABWIDGET_ADDTAB2 );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTABWIDGET_CLEAR )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
*/
HB_FUNC_STATIC( QTABWIDGET_CORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TopRightCorner : hb_parni(1);
    QWidget * ptr = obj->cornerWidget ( (Qt::Corner) par1 );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
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
HB_FUNC_STATIC( QTABWIDGET_CURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->currentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
Qt::TextElideMode elideMode () const
*/
$method=|Qt::TextElideMode|elideMode|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
int indexOf ( QWidget * w ) const
*/
$method=|int|indexOf|QWidget *

/*
int insertTab ( int index, QWidget * page, const QString & label )
*/
$method=|int|insertTab,insertTab1|int,QWidget *,const QString &

/*
int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/
$method=|int|insertTab,insertTab2|int,QWidget *,const QIcon &,const QString &

//[1]int insertTab ( int index, QWidget * page, const QString & label )
//[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABWIDGET_INSERTTAB1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTABWIDGET_INSERTTAB2 );
  }
}

/*
bool isMovable () const
*/
$method=|bool|isMovable|

/*
bool isTabEnabled ( int index ) const
*/
$method=|bool|isTabEnabled|int

/*
void removeTab ( int index )
*/
$method=|void|removeTab|int

/*
void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
*/
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

/*
void setDocumentMode ( bool set )
*/
$method=|void|setDocumentMode|bool

/*
void setElideMode ( Qt::TextElideMode )
*/
$method=|void|setElideMode|Qt::TextElideMode

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
void setMovable ( bool movable )
*/
$method=|void|setMovable|bool

/*
void setTabEnabled ( int index, bool enable )
*/
$method=|void|setTabEnabled|int,bool

/*
void setTabIcon ( int index, const QIcon & icon )
*/
$method=|void|setTabIcon|int,const QIcon &

/*
void setTabPosition ( TabPosition )
*/
$method=|void|setTabPosition|QTabWidget::TabPosition

/*
void setTabShape ( TabShape s )
*/
$method=|void|setTabShape|QTabWidget::TabShape

/*
void setTabText ( int index, const QString & label )
*/
$method=|void|setTabText|int,const QString &

/*
void setTabToolTip ( int index, const QString & tip )
*/
$method=|void|setTabToolTip|int,const QString &

/*
void setTabWhatsThis ( int index, const QString & text )
*/
$method=|void|setTabWhatsThis|int,const QString &

/*
void setTabsClosable ( bool closeable )
*/
$method=|void|setTabsClosable|bool

/*
void setUsesScrollButtons ( bool useButtons )
*/
$method=|void|setUsesScrollButtons|bool

/*
QIcon tabIcon ( int index ) const
*/
$method=|QIcon|tabIcon|int

/*
TabPosition tabPosition () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->tabPosition () );
  }
}

/*
TabShape tabShape () const
*/
HB_FUNC_STATIC( QTABWIDGET_TABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->tabShape () );
  }
}

/*
QString tabText ( int index ) const
*/
$method=|QString|tabText|int

/*
QString tabToolTip ( int index ) const
*/
$method=|QString|tabToolTip|int

/*
QString tabWhatsThis ( int index ) const
*/
$method=|QString|tabWhatsThis|int

/*
bool tabsClosable () const
*/
$method=|bool|tabsClosable|

/*
bool usesScrollButtons () const
*/
$method=|bool|usesScrollButtons|

/*
QWidget * widget ( int index ) const
*/
$method=|QWidget *|widget|int

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setCurrentWidget ( QWidget * widget )
*/
$method=|void|setCurrentWidget|QWidget *

#pragma ENDDUMP
