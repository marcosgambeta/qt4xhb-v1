$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QICON
REQUEST QRECT
REQUEST QCOLOR
#endif

CLASS QTabBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addTab1
   METHOD addTab2
   METHOD addTab
   METHOD count
   METHOD currentIndex
   METHOD documentMode
   METHOD drawBase
   METHOD elideMode
   METHOD expanding
   METHOD iconSize
   METHOD insertTab1
   METHOD insertTab2
   METHOD insertTab
   METHOD isMovable
   METHOD isTabEnabled
   METHOD moveTab
   METHOD removeTab
   METHOD selectionBehaviorOnRemove
   METHOD setDocumentMode
   METHOD setDrawBase
   METHOD setElideMode
   METHOD setExpanding
   METHOD setIconSize
   METHOD setMovable
   METHOD setSelectionBehaviorOnRemove
   METHOD setShape
   METHOD setTabButton
   METHOD setTabData
   METHOD setTabEnabled
   METHOD setTabIcon
   METHOD setTabText
   METHOD setTabTextColor
   METHOD setTabToolTip
   METHOD setTabWhatsThis
   METHOD setTabsClosable
   METHOD setUsesScrollButtons
   METHOD shape
   METHOD tabAt
   METHOD tabButton
   METHOD tabData
   METHOD tabIcon
   METHOD tabRect
   METHOD tabText
   METHOD tabTextColor
   METHOD tabToolTip
   METHOD tabWhatsThis
   METHOD tabsClosable
   METHOD usesScrollButtons
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentIndex

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabMoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTabBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QIcon>

/*
QTabBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABBAR_NEW )
{
  QTabBar * o = new QTabBar ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int addTab ( const QString & text )
*/
$method=|int|addTab,addTab1|const QString &

/*
int addTab ( const QIcon & icon, const QString & text )
*/
$method=|int|addTab,addTab2|const QIcon &,const QString &

//[1]int addTab ( const QString & text )
//[2]int addTab ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QTABBAR_ADDTAB )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTABBAR_ADDTAB1 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTABBAR_ADDTAB2 );
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
bool documentMode () const
*/
$method=|bool|documentMode|

/*
bool drawBase () const
*/
$method=|bool|drawBase|

/*
Qt::TextElideMode elideMode () const
*/
$method=|Qt::TextElideMode|elideMode|

/*
bool expanding () const
*/
$method=|bool|expanding|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
int insertTab ( int index, const QString & text )
*/
$method=|int|insertTab,insertTab1|int,const QString &

/*
int insertTab ( int index, const QIcon & icon, const QString & text )
*/
$method=|int|insertTab,insertTab2|int,const QIcon &,const QString &

//[1]int insertTab ( int index, const QString & text )
//[2]int insertTab ( int index, const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QTABBAR_INSERTTAB )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTABBAR_INSERTTAB1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTABBAR_INSERTTAB2 );
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
void moveTab ( int from, int to )
*/
HB_FUNC_STATIC( QTABBAR_MOVETAB )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveTab ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeTab ( int index )
*/
HB_FUNC_STATIC( QTABBAR_REMOVETAB )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeTab ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
SelectionBehavior selectionBehaviorOnRemove () const
*/
HB_FUNC_STATIC( QTABBAR_SELECTIONBEHAVIORONREMOVE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->selectionBehaviorOnRemove () );
  }
}

/*
void setDocumentMode ( bool set )
*/
HB_FUNC_STATIC( QTABBAR_SETDOCUMENTMODE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDocumentMode ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDrawBase ( bool drawTheBase )
*/
HB_FUNC_STATIC( QTABBAR_SETDRAWBASE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDrawBase ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setElideMode ( Qt::TextElideMode )
*/
HB_FUNC_STATIC( QTABBAR_SETELIDEMODE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setElideMode ( (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExpanding ( bool enabled )
*/
HB_FUNC_STATIC( QTABBAR_SETEXPANDING )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExpanding ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QTABBAR_SETICONSIZE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIconSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTABBAR_SETMOVABLE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMovable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectionBehaviorOnRemove ( SelectionBehavior behavior )
*/
HB_FUNC_STATIC( QTABBAR_SETSELECTIONBEHAVIORONREMOVE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionBehaviorOnRemove ( (QTabBar::SelectionBehavior) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShape ( Shape shape )
*/
HB_FUNC_STATIC( QTABBAR_SETSHAPE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShape ( (QTabBar::Shape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabButton ( int index, ButtonPosition position, QWidget * widget )
*/
HB_FUNC_STATIC( QTABBAR_SETTABBUTTON )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setTabButton ( PINT(1), (QTabBar::ButtonPosition) par2, PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabData ( int index, const QVariant & data )
*/
HB_FUNC_STATIC( QTABBAR_SETTABDATA )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabData ( PINT(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabEnabled ( int index, bool enabled )
*/
HB_FUNC_STATIC( QTABBAR_SETTABENABLED )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabEnabled ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QTABBAR_SETTABICON )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    obj->setTabIcon ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabText ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_SETTABTEXT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabText ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabTextColor ( int index, const QColor & color )
*/
HB_FUNC_STATIC( QTABBAR_SETTABTEXTCOLOR )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setTabTextColor ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabToolTip ( int index, const QString & tip )
*/
HB_FUNC_STATIC( QTABBAR_SETTABTOOLTIP )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabToolTip ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabWhatsThis ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_SETTABWHATSTHIS )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabWhatsThis ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabsClosable ( bool closable )
*/
HB_FUNC_STATIC( QTABBAR_SETTABSCLOSABLE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabsClosable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUsesScrollButtons ( bool useButtons )
*/
HB_FUNC_STATIC( QTABBAR_SETUSESSCROLLBUTTONS )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUsesScrollButtons ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Shape shape () const
*/
HB_FUNC_STATIC( QTABBAR_SHAPE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->shape () );
  }
}

/*
int tabAt ( const QPoint & position ) const
*/
$method=|int|tabAt|const QPoint &

/*
QWidget * tabButton ( int index, ButtonPosition position ) const
*/
HB_FUNC_STATIC( QTABBAR_TABBUTTON )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    QWidget * ptr = obj->tabButton ( PINT(1), (QTabBar::ButtonPosition) par2 );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QVariant tabData ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABDATA )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->tabData ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QIcon tabIcon ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABICON )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->tabIcon ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QRect tabRect ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABRECT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->tabRect ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QString tabText ( int index ) const
*/
$method=|QString|tabText|int

/*
QColor tabTextColor ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTEXTCOLOR )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->tabTextColor ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

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
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTABBAR_MINIMUMSIZEHINT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QTABBAR_SIZEHINT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QTABBAR_SETCURRENTINDEX )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
