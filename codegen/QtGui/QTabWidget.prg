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

$prototype=QTabWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int addTab ( QWidget * page, const QString & label )
$method=|int|addTab,addTab1|QWidget *,const QString &

$prototype=int addTab ( QWidget * page, const QIcon & icon, const QString & label )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void clear ()
$method=|void|clear|

$prototype=QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

$prototype=int count () const
$method=|int|count|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=QWidget * currentWidget () const
$method=|QWidget *|currentWidget|

$prototype=bool documentMode () const
$method=|bool|documentMode|

$prototype=Qt::TextElideMode elideMode () const
$method=|Qt::TextElideMode|elideMode|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=int indexOf ( QWidget * w ) const
$method=|int|indexOf|QWidget *

$prototype=int insertTab ( int index, QWidget * page, const QString & label )
$method=|int|insertTab,insertTab1|int,QWidget *,const QString &

$prototype=int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isMovable () const
$method=|bool|isMovable|

$prototype=bool isTabEnabled ( int index ) const
$method=|bool|isTabEnabled|int

$prototype=void removeTab ( int index )
$method=|void|removeTab|int

$prototype=void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

$prototype=void setDocumentMode ( bool set )
$method=|void|setDocumentMode|bool

$prototype=void setElideMode ( Qt::TextElideMode )
$method=|void|setElideMode|Qt::TextElideMode

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=void setMovable ( bool movable )
$method=|void|setMovable|bool

$prototype=void setTabEnabled ( int index, bool enable )
$method=|void|setTabEnabled|int,bool

$prototype=void setTabIcon ( int index, const QIcon & icon )
$method=|void|setTabIcon|int,const QIcon &

$prototype=void setTabPosition ( TabPosition )
$method=|void|setTabPosition|QTabWidget::TabPosition

$prototype=void setTabShape ( TabShape s )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=void setTabText ( int index, const QString & label )
$method=|void|setTabText|int,const QString &

$prototype=void setTabToolTip ( int index, const QString & tip )
$method=|void|setTabToolTip|int,const QString &

$prototype=void setTabWhatsThis ( int index, const QString & text )
$method=|void|setTabWhatsThis|int,const QString &

$prototype=void setTabsClosable ( bool closeable )
$method=|void|setTabsClosable|bool

$prototype=void setUsesScrollButtons ( bool useButtons )
$method=|void|setUsesScrollButtons|bool

$prototype=QIcon tabIcon ( int index ) const
$method=|QIcon|tabIcon|int

$prototype=TabPosition tabPosition () const
$method=|QTabWidget::TabPosition|tabPosition|

$prototype=TabShape tabShape () const
$method=|QTabWidget::TabShape|tabShape|

$prototype=QString tabText ( int index ) const
$method=|QString|tabText|int

$prototype=QString tabToolTip ( int index ) const
$method=|QString|tabToolTip|int

$prototype=QString tabWhatsThis ( int index ) const
$method=|QString|tabWhatsThis|int

$prototype=bool tabsClosable () const
$method=|bool|tabsClosable|

$prototype=bool usesScrollButtons () const
$method=|bool|usesScrollButtons|

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

#pragma ENDDUMP
