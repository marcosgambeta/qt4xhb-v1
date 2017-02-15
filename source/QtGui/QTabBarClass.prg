/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QICON
REQUEST QRECT
REQUEST QCOLOR

CLASS QTabBar INHERIT QWidget

   DATA class_id INIT Class_Id_QTabBar
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QTabBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTabBar>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QIcon>

/*
QTabBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABBAR_NEW )
{
  QTabBar * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTabBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTabBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTABBAR_DELETE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int addTab ( const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_ADDTAB1 )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int i = obj->addTab ( par1 );
    hb_retni( i );
  }
}


/*
int addTab ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_ADDTAB2 )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QString par2 = hb_parc(2);
    int i = obj->addTab ( par1, par2 );
    hb_retni( i );
  }
}


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
HB_FUNC_STATIC( QTABBAR_COUNT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QTABBAR_CURRENTINDEX )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentIndex (  );
    hb_retni( i );
  }
}


/*
bool documentMode () const
*/
HB_FUNC_STATIC( QTABBAR_DOCUMENTMODE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->documentMode (  );
    hb_retl( b );
  }
}


/*
bool drawBase () const
*/
HB_FUNC_STATIC( QTABBAR_DRAWBASE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->drawBase (  );
    hb_retl( b );
  }
}


/*
Qt::TextElideMode elideMode () const
*/
HB_FUNC_STATIC( QTABBAR_ELIDEMODE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->elideMode (  );
    hb_retni( i );
  }
}


/*
bool expanding () const
*/
HB_FUNC_STATIC( QTABBAR_EXPANDING )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->expanding (  );
    hb_retl( b );
  }
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTABBAR_ICONSIZE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int insertTab ( int index, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_INSERTTAB1 )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    int i = obj->insertTab ( par1, par2 );
    hb_retni( i );
  }
}


/*
int insertTab ( int index, const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTABBAR_INSERTTAB2 )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    QString par3 = hb_parc(3);
    int i = obj->insertTab ( par1, par2, par3 );
    hb_retni( i );
  }
}


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
HB_FUNC_STATIC( QTABBAR_ISMOVABLE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isMovable (  );
    hb_retl( b );
  }
}


/*
bool isTabEnabled ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_ISTABENABLED )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isTabEnabled ( par1 );
    hb_retl( b );
  }
}


/*
void moveTab ( int from, int to )
*/
HB_FUNC_STATIC( QTABBAR_MOVETAB )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->moveTab ( par1, par2 );
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
    int par1 = hb_parni(1);
    obj->removeTab ( par1 );
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
    int i = obj->selectionBehaviorOnRemove (  );
    hb_retni( i );
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
    bool par1 = hb_parl(1);
    obj->setDocumentMode ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setDrawBase ( par1 );
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
    obj->setElideMode (  (Qt::TextElideMode) par1 );
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
    bool par1 = hb_parl(1);
    obj->setExpanding ( par1 );
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
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconSize ( *par1 );
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
    bool par1 = hb_parl(1);
    obj->setMovable ( par1 );
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
    obj->setSelectionBehaviorOnRemove (  (QTabBar::SelectionBehavior) par1 );
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
    obj->setShape (  (QTabBar::Shape) par1 );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QWidget * par3 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTabButton ( par1,  (QTabBar::ButtonPosition) par2, par3 );
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
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTabData ( par1, *par2 );
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
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setTabEnabled ( par1, par2 );
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
    int par1 = hb_parni(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    obj->setTabIcon ( par1, par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setTabText ( par1, par2 );
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
    int par1 = hb_parni(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setTabTextColor ( par1, par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setTabToolTip ( par1, par2 );
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
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setTabWhatsThis ( par1, par2 );
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
    bool par1 = hb_parl(1);
    obj->setTabsClosable ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setUsesScrollButtons ( par1 );
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
    int i = obj->shape (  );
    hb_retni( i );
  }
}


/*
int tabAt ( const QPoint & position ) const
*/
HB_FUNC_STATIC( QTABBAR_TABAT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->tabAt ( *par1 );
    hb_retni( i );
  }
}


/*
QWidget * tabButton ( int index, ButtonPosition position ) const
*/
HB_FUNC_STATIC( QTABBAR_TABBUTTON )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QWidget * ptr = obj->tabButton ( par1,  (QTabBar::ButtonPosition) par2 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
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
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->tabData ( par1 ) );
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
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->tabIcon ( par1 ) );
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
    int par1 = hb_parni(1);
    QRect * ptr = new QRect( obj->tabRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QString tabText ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTEXT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->tabText ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QColor tabTextColor ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTEXTCOLOR )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor * ptr = new QColor( obj->tabTextColor ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QString tabToolTip ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABTOOLTIP )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->tabToolTip ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString tabWhatsThis ( int index ) const
*/
HB_FUNC_STATIC( QTABBAR_TABWHATSTHIS )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->tabWhatsThis ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool tabsClosable () const
*/
HB_FUNC_STATIC( QTABBAR_TABSCLOSABLE )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tabsClosable (  );
    hb_retl( b );
  }
}


/*
bool usesScrollButtons () const
*/
HB_FUNC_STATIC( QTABBAR_USESSCROLLBUTTONS )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->usesScrollButtons (  );
    hb_retl( b );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTABBAR_MINIMUMSIZEHINT )
{
  QTabBar * obj = (QTabBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
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
    QSize * ptr = new QSize( obj->sizeHint (  ) );
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
    int par1 = hb_parni(1);
    obj->setCurrentIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
