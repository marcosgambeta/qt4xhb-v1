/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
REQUEST QWIZARDPAGE
REQUEST QVARIANT
REQUEST QPIXMAP
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QWizard INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPage
   METHOD button
   METHOD buttonText
   METHOD currentId
   METHOD currentPage
   METHOD field
   METHOD hasVisitedPage
   METHOD nextId
   METHOD options
   METHOD page
   METHOD pageIds
   METHOD pixmap
   METHOD removePage
   METHOD setButton
   METHOD setButtonLayout
   METHOD setButtonText
   METHOD setDefaultProperty
   METHOD setField
   METHOD setOption
   METHOD setOptions
   METHOD setPage
   METHOD setPixmap
   METHOD setSideWidget
   METHOD setStartId
   METHOD setSubTitleFormat
   METHOD setTitleFormat
   METHOD setWizardStyle
   METHOD sideWidget
   METHOD startId
   METHOD subTitleFormat
   METHOD testOption
   METHOD titleFormat
   METHOD validateCurrentPage
   METHOD visitedPages
   METHOD wizardStyle
   METHOD setVisible
   METHOD sizeHint
   METHOD back
   METHOD next
   METHOD restart
   METHOD onCurrentIdChanged
   METHOD onCustomButtonClicked
   METHOD onHelpRequested
   METHOD onPageAdded
   METHOD onPageRemoved
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWizard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWizard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QWIZARD_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QWizard * o = new QWizard ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QWIZARD_DELETE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int addPage ( QWizardPage * page )
*/
HB_FUNC_STATIC( QWIZARD_ADDPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWizardPage * par1 = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->addPage ( par1 ) );
  }
}


/*
QAbstractButton * button ( WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARD_BUTTON )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractButton * ptr = obj->button ( (QWizard::WizardButton) par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}


/*
QString buttonText ( WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARD_BUTTONTEXT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->buttonText ( (QWizard::WizardButton) hb_parni(1) ) );
  }
}


/*
int currentId () const
*/
HB_FUNC_STATIC( QWIZARD_CURRENTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentId () );
  }
}


/*
QWizardPage * currentPage () const
*/
HB_FUNC_STATIC( QWIZARD_CURRENTPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWizardPage * ptr = obj->currentPage ();
    _qt4xhb_createReturnClass ( ptr, "QWIZARDPAGE" );
  }
}


/*
QVariant field ( const QString & name ) const
*/
HB_FUNC_STATIC( QWIZARD_FIELD )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->field ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool hasVisitedPage ( int id ) const
*/
HB_FUNC_STATIC( QWIZARD_HASVISITEDPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasVisitedPage ( PINT(1)) );
  }
}


/*
virtual int nextId () const
*/
HB_FUNC_STATIC( QWIZARD_NEXTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->nextId () );
  }
}


/*
WizardOptions options () const
*/
HB_FUNC_STATIC( QWIZARD_OPTIONS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->options () );
  }
}


/*
QWizardPage * page ( int id ) const
*/
HB_FUNC_STATIC( QWIZARD_PAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWizardPage * ptr = obj->page ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIZARDPAGE" );
  }
}


/*
QList<int> pageIds () const
*/
HB_FUNC_STATIC( QWIZARD_PAGEIDS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->pageIds ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QPixmap pixmap ( WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARD_PIXMAP )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap ( (QWizard::WizardPixmap) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
void removePage ( int id )
*/
HB_FUNC_STATIC( QWIZARD_REMOVEPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removePage ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setButton ( WizardButton which, QAbstractButton * button )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTON )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractButton * par2 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setButton ( (QWizard::WizardButton) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setButtonLayout ( const QList<WizardButton> & layout )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTONLAYOUT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QWizard::WizardButton> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetNI(aValues1, i1+1);
par1 << (QWizard::WizardButton) temp1;
}
    obj->setButtonLayout ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setButtonText ( WizardButton which, const QString & text )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTONTEXT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButtonText ( (QWizard::WizardButton) par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultProperty ( const char * className, const char * property, const char * changedSignal )
*/
HB_FUNC_STATIC( QWIZARD_SETDEFAULTPROPERTY )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultProperty ( (const char *) hb_parc(1), (const char *) hb_parc(2), (const char *) hb_parc(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setField ( const QString & name, const QVariant & value )
*/
HB_FUNC_STATIC( QWIZARD_SETFIELD )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setField ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( WizardOption option, bool on = true )
*/
HB_FUNC_STATIC( QWIZARD_SETOPTION )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QWizard::WizardOption) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( WizardOptions options )
*/
HB_FUNC_STATIC( QWIZARD_SETOPTIONS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions ( (QWizard::WizardOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPage ( int id, QWizardPage * page )
*/
HB_FUNC_STATIC( QWIZARD_SETPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWizardPage * par2 = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPage ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QWIZARD_SETPIXMAP )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPixmap ( (QWizard::WizardPixmap) par1, *PQPIXMAP(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSideWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QWIZARD_SETSIDEWIDGET )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSideWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartId ( int id )
*/
HB_FUNC_STATIC( QWIZARD_SETSTARTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStartId ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSubTitleFormat ( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QWIZARD_SETSUBTITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSubTitleFormat ( (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitleFormat ( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QWIZARD_SETTITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTitleFormat ( (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWizardStyle ( WizardStyle style )
*/
HB_FUNC_STATIC( QWIZARD_SETWIZARDSTYLE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWizardStyle ( (QWizard::WizardStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * sideWidget () const
*/
HB_FUNC_STATIC( QWIZARD_SIDEWIDGET )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->sideWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
int startId () const
*/
HB_FUNC_STATIC( QWIZARD_STARTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->startId () );
  }
}


/*
Qt::TextFormat subTitleFormat () const
*/
HB_FUNC_STATIC( QWIZARD_SUBTITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->subTitleFormat () );
  }
}


/*
bool testOption ( WizardOption option ) const
*/
HB_FUNC_STATIC( QWIZARD_TESTOPTION )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QWizard::WizardOption) par1 ) );
  }
}


/*
Qt::TextFormat titleFormat () const
*/
HB_FUNC_STATIC( QWIZARD_TITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->titleFormat () );
  }
}


/*
virtual bool validateCurrentPage ()
*/
HB_FUNC_STATIC( QWIZARD_VALIDATECURRENTPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->validateCurrentPage () );
  }
}


/*
QList<int> visitedPages () const
*/
HB_FUNC_STATIC( QWIZARD_VISITEDPAGES )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->visitedPages ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
WizardStyle wizardStyle () const
*/
HB_FUNC_STATIC( QWIZARD_WIZARDSTYLE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->wizardStyle () );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QWIZARD_SETVISIBLE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWIZARD_SIZEHINT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void back ()
*/
HB_FUNC_STATIC( QWIZARD_BACK )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->back ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void next ()
*/
HB_FUNC_STATIC( QWIZARD_NEXT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->next ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void restart ()
*/
HB_FUNC_STATIC( QWIZARD_RESTART )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->restart ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
