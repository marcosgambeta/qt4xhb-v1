/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCalendarWidget>

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

#include <QTextCharFormat>

/*
QCalendarWidget ( QWidget * parent = 0 )
*/
HB_FUNC( QCALENDARWIDGET_NEW )
{
  QCalendarWidget * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QCalendarWidget ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCalendarWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QCALENDARWIDGET_DELETE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int dateEditAcceptDelay () const
*/
HB_FUNC( QCALENDARWIDGET_DATEEDITACCEPTDELAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->dateEditAcceptDelay (  );
    hb_retni( i );
  }
}



/*
QTextCharFormat dateTextFormat ( const QDate & date ) const
*/
HB_FUNC( QCALENDARWIDGET_DATETEXTFORMAT2 )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCharFormat * ptr = new QTextCharFormat( obj->dateTextFormat ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


//[1]QMap<QDate, QTextCharFormat> dateTextFormat () const
//[2]QTextCharFormat dateTextFormat ( const QDate & date ) const

HB_FUNC( QCALENDARWIDGET_DATETEXTFORMAT )
{
  //if( ISNUMPAR(0) )
  //{
  //  HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT1 );
  //}
  //else if( ISNUMPAR(1) && ISQDATE(1) )
  //{
    HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT2 );
  //}
}

/*
Qt::DayOfWeek firstDayOfWeek () const
*/
HB_FUNC( QCALENDARWIDGET_FIRSTDAYOFWEEK )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->firstDayOfWeek (  );
    hb_retni( i );
  }
}


/*
QTextCharFormat headerTextFormat () const
*/
HB_FUNC( QCALENDARWIDGET_HEADERTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->headerTextFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
HorizontalHeaderFormat horizontalHeaderFormat () const
*/
HB_FUNC( QCALENDARWIDGET_HORIZONTALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->horizontalHeaderFormat (  );
    hb_retni( i );
  }
}


/*
bool isDateEditEnabled () const
*/
HB_FUNC( QCALENDARWIDGET_ISDATEEDITENABLED )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isDateEditEnabled (  );
    hb_retl( b );
  }
}


/*
bool isGridVisible () const
*/
HB_FUNC( QCALENDARWIDGET_ISGRIDVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isGridVisible (  );
    hb_retl( b );
  }
}


/*
bool isNavigationBarVisible () const
*/
HB_FUNC( QCALENDARWIDGET_ISNAVIGATIONBARVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNavigationBarVisible (  );
    hb_retl( b );
  }
}


/*
QDate maximumDate () const
*/
HB_FUNC( QCALENDARWIDGET_MAXIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->maximumDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );  }
}


/*
QDate minimumDate () const
*/
HB_FUNC( QCALENDARWIDGET_MINIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->minimumDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );  }
}


/*
int monthShown () const
*/
HB_FUNC( QCALENDARWIDGET_MONTHSHOWN )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->monthShown (  );
    hb_retni( i );
  }
}


/*
QDate selectedDate () const
*/
HB_FUNC( QCALENDARWIDGET_SELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->selectedDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );  }
}


/*
SelectionMode selectionMode () const
*/
HB_FUNC( QCALENDARWIDGET_SELECTIONMODE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->selectionMode (  );
    hb_retni( i );
  }
}


/*
void setDateEditAcceptDelay ( int delay )
*/
HB_FUNC( QCALENDARWIDGET_SETDATEEDITACCEPTDELAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDateEditAcceptDelay ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateEditEnabled ( bool enable )
*/
HB_FUNC( QCALENDARWIDGET_SETDATEEDITENABLED )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDateEditEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateTextFormat ( const QDate & date, const QTextCharFormat & format )
*/
HB_FUNC( QCALENDARWIDGET_SETDATETEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCharFormat * par2 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDateTextFormat ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFirstDayOfWeek ( Qt::DayOfWeek dayOfWeek )
*/
HB_FUNC( QCALENDARWIDGET_SETFIRSTDAYOFWEEK )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFirstDayOfWeek (  (Qt::DayOfWeek) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderTextFormat ( const QTextCharFormat & format )
*/
HB_FUNC( QCALENDARWIDGET_SETHEADERTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHeaderTextFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalHeaderFormat ( HorizontalHeaderFormat format )
*/
HB_FUNC( QCALENDARWIDGET_SETHORIZONTALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalHeaderFormat (  (QCalendarWidget::HorizontalHeaderFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumDate ( const QDate & date )
*/
HB_FUNC( QCALENDARWIDGET_SETMAXIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMaximumDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumDate ( const QDate & date )
*/
HB_FUNC( QCALENDARWIDGET_SETMINIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMinimumDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectionMode ( SelectionMode mode )
*/
HB_FUNC( QCALENDARWIDGET_SETSELECTIONMODE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionMode (  (QCalendarWidget::SelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeaderFormat ( VerticalHeaderFormat format )
*/
HB_FUNC( QCALENDARWIDGET_SETVERTICALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalHeaderFormat (  (QCalendarWidget::VerticalHeaderFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWeekdayTextFormat ( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
*/
HB_FUNC( QCALENDARWIDGET_SETWEEKDAYTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextCharFormat * par2 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWeekdayTextFormat (  (Qt::DayOfWeek) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
VerticalHeaderFormat verticalHeaderFormat () const
*/
HB_FUNC( QCALENDARWIDGET_VERTICALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->verticalHeaderFormat (  );
    hb_retni( i );
  }
}


/*
QTextCharFormat weekdayTextFormat ( Qt::DayOfWeek dayOfWeek ) const
*/
HB_FUNC( QCALENDARWIDGET_WEEKDAYTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextCharFormat * ptr = new QTextCharFormat( obj->weekdayTextFormat (  (Qt::DayOfWeek) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
int yearShown () const
*/
HB_FUNC( QCALENDARWIDGET_YEARSHOWN )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->yearShown (  );
    hb_retni( i );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC( QCALENDARWIDGET_MINIMUMSIZEHINT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QCALENDARWIDGET_SIZEHINT )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void setCurrentPage ( int year, int month )
*/
HB_FUNC( QCALENDARWIDGET_SETCURRENTPAGE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setCurrentPage ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateRange ( const QDate & min, const QDate & max )
*/
HB_FUNC( QCALENDARWIDGET_SETDATERANGE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDate * par2 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDateRange ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGridVisible ( bool show )
*/
HB_FUNC( QCALENDARWIDGET_SETGRIDVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setGridVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNavigationBarVisible ( bool visible )
*/
HB_FUNC( QCALENDARWIDGET_SETNAVIGATIONBARVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setNavigationBarVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectedDate ( const QDate & date )
*/
HB_FUNC( QCALENDARWIDGET_SETSELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectedDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showNextMonth ()
*/
HB_FUNC( QCALENDARWIDGET_SHOWNEXTMONTH )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showNextMonth (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showNextYear ()
*/
HB_FUNC( QCALENDARWIDGET_SHOWNEXTYEAR )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showNextYear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showPreviousMonth ()
*/
HB_FUNC( QCALENDARWIDGET_SHOWPREVIOUSMONTH )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showPreviousMonth (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showPreviousYear ()
*/
HB_FUNC( QCALENDARWIDGET_SHOWPREVIOUSYEAR )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showPreviousYear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSelectedDate ()
*/
HB_FUNC( QCALENDARWIDGET_SHOWSELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showSelectedDate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showToday ()
*/
HB_FUNC( QCALENDARWIDGET_SHOWTODAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showToday (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





