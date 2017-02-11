/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWizard>

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

/*
QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QWIZARD_NEW )
{
  QWizard * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QWizard ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWizard *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QWIZARD_DELETE )
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
HB_FUNC( QWIZARD_ADDPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWizardPage * par1 = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->addPage ( par1 );
    hb_retni( i );
  }
}


/*
QAbstractButton * button ( WizardButton which ) const
*/
HB_FUNC( QWIZARD_BUTTON )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractButton * ptr = obj->button (  (QWizard::WizardButton) par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );  }
}


/*
QString buttonText ( WizardButton which ) const
*/
HB_FUNC( QWIZARD_BUTTONTEXT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->buttonText (  (QWizard::WizardButton) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int currentId () const
*/
HB_FUNC( QWIZARD_CURRENTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentId (  );
    hb_retni( i );
  }
}


/*
QWizardPage * currentPage () const
*/
HB_FUNC( QWIZARD_CURRENTPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWizardPage * ptr = obj->currentPage (  );
    _qt4xhb_createReturnClass ( ptr, "QWIZARDPAGE" );  }
}


/*
QVariant field ( const QString & name ) const
*/
HB_FUNC( QWIZARD_FIELD )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->field ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
bool hasVisitedPage ( int id ) const
*/
HB_FUNC( QWIZARD_HASVISITEDPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->hasVisitedPage ( par1 );
    hb_retl( b );
  }
}


/*
virtual int nextId () const
*/
HB_FUNC( QWIZARD_NEXTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nextId (  );
    hb_retni( i );
  }
}


/*
WizardOptions options () const
*/
HB_FUNC( QWIZARD_OPTIONS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->options (  );
    hb_retni( i );
  }
}


/*
QWizardPage * page ( int id ) const
*/
HB_FUNC( QWIZARD_PAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWizardPage * ptr = obj->page ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIZARDPAGE" );  }
}


/*
QList<int> pageIds () const
*/
HB_FUNC( QWIZARD_PAGEIDS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->pageIds (  );
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
HB_FUNC( QWIZARD_PIXMAP )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap (  (QWizard::WizardPixmap) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
void removePage ( int id )
*/
HB_FUNC( QWIZARD_REMOVEPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removePage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setButton ( WizardButton which, QAbstractButton * button )
*/
HB_FUNC( QWIZARD_SETBUTTON )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractButton * par2 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setButton (  (QWizard::WizardButton) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setButtonLayout ( const QList<WizardButton> & layout )
*/
HB_FUNC( QWIZARD_SETBUTTONLAYOUT )
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
HB_FUNC( QWIZARD_SETBUTTONTEXT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setButtonText (  (QWizard::WizardButton) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultProperty ( const char * className, const char * property, const char * changedSignal )
*/
HB_FUNC( QWIZARD_SETDEFAULTPROPERTY )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    const char * par2 = hb_parc(2);
    const char * par3 = hb_parc(3);
    obj->setDefaultProperty (  (const char *) par1,  (const char *) par2,  (const char *) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setField ( const QString & name, const QVariant & value )
*/
HB_FUNC( QWIZARD_SETFIELD )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setField ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( WizardOption option, bool on = true )
*/
HB_FUNC( QWIZARD_SETOPTION )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = ISNIL(2)? true : hb_parl(2);
    obj->setOption (  (QWizard::WizardOption) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( WizardOptions options )
*/
HB_FUNC( QWIZARD_SETOPTIONS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QWizard::WizardOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPage ( int id, QWizardPage * page )
*/
HB_FUNC( QWIZARD_SETPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWizardPage * par2 = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPage ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC( QWIZARD_SETPIXMAP )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * par2 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPixmap (  (QWizard::WizardPixmap) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSideWidget ( QWidget * widget )
*/
HB_FUNC( QWIZARD_SETSIDEWIDGET )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSideWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartId ( int id )
*/
HB_FUNC( QWIZARD_SETSTARTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStartId ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSubTitleFormat ( Qt::TextFormat format )
*/
HB_FUNC( QWIZARD_SETSUBTITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSubTitleFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitleFormat ( Qt::TextFormat format )
*/
HB_FUNC( QWIZARD_SETTITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTitleFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWizardStyle ( WizardStyle style )
*/
HB_FUNC( QWIZARD_SETWIZARDSTYLE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWizardStyle (  (QWizard::WizardStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * sideWidget () const
*/
HB_FUNC( QWIZARD_SIDEWIDGET )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->sideWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
int startId () const
*/
HB_FUNC( QWIZARD_STARTID )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->startId (  );
    hb_retni( i );
  }
}


/*
Qt::TextFormat subTitleFormat () const
*/
HB_FUNC( QWIZARD_SUBTITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->subTitleFormat (  );
    hb_retni( i );
  }
}


/*
bool testOption ( WizardOption option ) const
*/
HB_FUNC( QWIZARD_TESTOPTION )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testOption (  (QWizard::WizardOption) par1 );
    hb_retl( b );
  }
}


/*
Qt::TextFormat titleFormat () const
*/
HB_FUNC( QWIZARD_TITLEFORMAT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->titleFormat (  );
    hb_retni( i );
  }
}


/*
virtual bool validateCurrentPage ()
*/
HB_FUNC( QWIZARD_VALIDATECURRENTPAGE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->validateCurrentPage (  );
    hb_retl( b );
  }
}


/*
QList<int> visitedPages () const
*/
HB_FUNC( QWIZARD_VISITEDPAGES )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->visitedPages (  );
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
HB_FUNC( QWIZARD_WIZARDSTYLE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->wizardStyle (  );
    hb_retni( i );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC( QWIZARD_SETVISIBLE )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QWIZARD_SIZEHINT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void back ()
*/
HB_FUNC( QWIZARD_BACK )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->back (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void next ()
*/
HB_FUNC( QWIZARD_NEXT )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->next (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void restart ()
*/
HB_FUNC( QWIZARD_RESTART )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->restart (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




