/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTabWidget>

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

/*
QTabWidget ( QWidget * parent = 0 )
*/
HB_FUNC( QTABWIDGET_NEW )
{
  QTabWidget * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTabWidget ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTabWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QTABWIDGET_DELETE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int addTab ( QWidget * page, const QString & label )
*/
HB_FUNC( QTABWIDGET_ADDTAB1 )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    int i = obj->addTab ( par1, par2 );
    hb_retni( i );
  }
}


/*
int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/
HB_FUNC( QTABWIDGET_ADDTAB2 )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    QString par3 = hb_parc(3);
    int i = obj->addTab ( par1, par2, par3 );
    hb_retni( i );
  }
}


//[1]int addTab ( QWidget * page, const QString & label )
//[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC( QTABWIDGET_ADDTAB )
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
HB_FUNC( QTABWIDGET_CLEAR )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
*/
HB_FUNC( QTABWIDGET_CORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TopRightCorner : hb_parni(1);
    QWidget * ptr = obj->cornerWidget (  (Qt::Corner) par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
int count () const
*/
HB_FUNC( QTABWIDGET_COUNT )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
int currentIndex () const
*/
HB_FUNC( QTABWIDGET_CURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentIndex (  );
    hb_retni( i );
  }
}


/*
QWidget * currentWidget () const
*/
HB_FUNC( QTABWIDGET_CURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
bool documentMode () const
*/
HB_FUNC( QTABWIDGET_DOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->documentMode (  );
    hb_retl( b );
  }
}


/*
Qt::TextElideMode elideMode () const
*/
HB_FUNC( QTABWIDGET_ELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->elideMode (  );
    hb_retni( i );
  }
}


/*
QSize iconSize () const
*/
HB_FUNC( QTABWIDGET_ICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
int indexOf ( QWidget * w ) const
*/
HB_FUNC( QTABWIDGET_INDEXOF )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->indexOf ( par1 );
    hb_retni( i );
  }
}


/*
int insertTab ( int index, QWidget * page, const QString & label )
*/
HB_FUNC( QTABWIDGET_INSERTTAB1 )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par3 = hb_parc(3);
    int i = obj->insertTab ( par1, par2, par3 );
    hb_retni( i );
  }
}


/*
int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/
HB_FUNC( QTABWIDGET_INSERTTAB2 )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIcon par3 = ISOBJECT(3)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(3));
    QString par4 = hb_parc(4);
    int i = obj->insertTab ( par1, par2, par3, par4 );
    hb_retni( i );
  }
}


//[1]int insertTab ( int index, QWidget * page, const QString & label )
//[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )

HB_FUNC( QTABWIDGET_INSERTTAB )
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
HB_FUNC( QTABWIDGET_ISMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isMovable (  );
    hb_retl( b );
  }
}


/*
bool isTabEnabled ( int index ) const
*/
HB_FUNC( QTABWIDGET_ISTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isTabEnabled ( par1 );
    hb_retl( b );
  }
}


/*
void removeTab ( int index )
*/
HB_FUNC( QTABWIDGET_REMOVETAB )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeTab ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
*/
HB_FUNC( QTABWIDGET_SETCORNERWIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) Qt::TopRightCorner : hb_parni(2);
    obj->setCornerWidget ( par1,  (Qt::Corner) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocumentMode ( bool set )
*/
HB_FUNC( QTABWIDGET_SETDOCUMENTMODE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDocumentMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setElideMode ( Qt::TextElideMode )
*/
HB_FUNC( QTABWIDGET_SETELIDEMODE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setElideMode (  (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconSize ( const QSize & size )
*/
HB_FUNC( QTABWIDGET_SETICONSIZE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTABWIDGET_SETMOVABLE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setMovable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabEnabled ( int index, bool enable )
*/
HB_FUNC( QTABWIDGET_SETTABENABLED )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTABWIDGET_SETTABICON )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    obj->setTabIcon ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabPosition ( TabPosition )
*/
HB_FUNC( QTABWIDGET_SETTABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabPosition (  (QTabWidget::TabPosition) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabShape ( TabShape s )
*/
HB_FUNC( QTABWIDGET_SETTABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabShape (  (QTabWidget::TabShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabText ( int index, const QString & label )
*/
HB_FUNC( QTABWIDGET_SETTABTEXT )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setTabText ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabToolTip ( int index, const QString & tip )
*/
HB_FUNC( QTABWIDGET_SETTABTOOLTIP )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTABWIDGET_SETTABWHATSTHIS )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setTabWhatsThis ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabsClosable ( bool closeable )
*/
HB_FUNC( QTABWIDGET_SETTABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTABWIDGET_SETUSESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setUsesScrollButtons ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIcon tabIcon ( int index ) const
*/
HB_FUNC( QTABWIDGET_TABICON )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->tabIcon ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );  }
}


/*
TabPosition tabPosition () const
*/
HB_FUNC( QTABWIDGET_TABPOSITION )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->tabPosition (  );
    hb_retni( i );
  }
}


/*
TabShape tabShape () const
*/
HB_FUNC( QTABWIDGET_TABSHAPE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->tabShape (  );
    hb_retni( i );
  }
}


/*
QString tabText ( int index ) const
*/
HB_FUNC( QTABWIDGET_TABTEXT )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->tabText ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString tabToolTip ( int index ) const
*/
HB_FUNC( QTABWIDGET_TABTOOLTIP )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTABWIDGET_TABWHATSTHIS )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTABWIDGET_TABSCLOSABLE )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tabsClosable (  );
    hb_retl( b );
  }
}


/*
bool usesScrollButtons () const
*/
HB_FUNC( QTABWIDGET_USESSCROLLBUTTONS )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->usesScrollButtons (  );
    hb_retl( b );
  }
}


/*
QWidget * widget ( int index ) const
*/
HB_FUNC( QTABWIDGET_WIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * ptr = obj->widget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC( QTABWIDGET_MINIMUMSIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QTABWIDGET_SIZEHINT )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC( QTABWIDGET_SETCURRENTINDEX )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC( QTABWIDGET_SETCURRENTWIDGET )
{
  QTabWidget * obj = (QTabWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCurrentWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




