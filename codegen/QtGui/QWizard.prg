$header

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

$destructor

#pragma BEGINDUMP

#include <QWizard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

$prototype=QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
HB_FUNC_STATIC( QWIZARD_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QWizard * o = new QWizard ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=int addPage ( QWizardPage * page )
$method=|int|addPage|QWizardPage *

$prototype=QAbstractButton * button ( WizardButton which ) const
$method=|QAbstractButton *|button|QWizard::WizardButton

$prototype=QString buttonText ( WizardButton which ) const
$method=|QString|buttonText|QWizard::WizardButton

$prototype=int currentId () const
$method=|int|currentId|

$prototype=QWizardPage * currentPage () const
$method=|QWizardPage *|currentPage|

$prototype=QVariant field ( const QString & name ) const
$method=|QVariant|field|const QString &

$prototype=bool hasVisitedPage ( int id ) const
$method=|bool|hasVisitedPage|int

$prototype=virtual int nextId () const
$virtualMethod=|int|nextId|

$prototype=WizardOptions options () const
$method=|QWizard::WizardOptions|options|

$prototype=QWizardPage * page ( int id ) const
$method=|QWizardPage *|page|int

$prototype=QList<int> pageIds () const
HB_FUNC_STATIC( QWIZARD_PAGEIDS )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->pageIds ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=QPixmap pixmap ( WizardPixmap which ) const
$method=|QPixmap|pixmap|QWizard::WizardPixmap

$prototype=void removePage ( int id )
$method=|void|removePage|int

$prototype=void setButton ( WizardButton which, QAbstractButton * button )
$method=|void|setButton|QWizard::WizardButton,QAbstractButton *

$prototype=void setButtonLayout ( const QList<WizardButton> & layout )
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

$prototype=void setButtonText ( WizardButton which, const QString & text )
$method=|void|setButtonText|QWizard::WizardButton,const QString &

$prototype=void setDefaultProperty ( const char * className, const char * property, const char * changedSignal )
$method=|void|setDefaultProperty|const char *,const char *,const char *

$prototype=void setField ( const QString & name, const QVariant & value )
$method=|void|setField|const QString &,const QVariant &

$prototype=void setOption ( WizardOption option, bool on = true )
$method=|void|setOption|QWizard::WizardOption,bool=true

$prototype=void setOptions ( WizardOptions options )
$method=|void|setOptions|QWizard::WizardOptions

$prototype=void setPage ( int id, QWizardPage * page )
$method=|void|setPage|int,QWizardPage *

$prototype=void setPixmap ( WizardPixmap which, const QPixmap & pixmap )
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

$prototype=void setSideWidget ( QWidget * widget )
$method=|void|setSideWidget|QWidget *

$prototype=void setStartId ( int id )
$method=|void|setStartId|int

$prototype=void setSubTitleFormat ( Qt::TextFormat format )
$method=|void|setSubTitleFormat|Qt::TextFormat

$prototype=void setTitleFormat ( Qt::TextFormat format )
$method=|void|setTitleFormat|Qt::TextFormat

$prototype=void setWizardStyle ( WizardStyle style )
$method=|void|setWizardStyle|QWizard::WizardStyle

$prototype=QWidget * sideWidget () const
$method=|QWidget *|sideWidget|

$prototype=int startId () const
$method=|int|startId|

$prototype=Qt::TextFormat subTitleFormat () const
$method=|Qt::TextFormat|subTitleFormat|

$prototype=bool testOption ( WizardOption option ) const
$method=|bool|testOption|QWizard::WizardOption

$prototype=Qt::TextFormat titleFormat () const
$method=|Qt::TextFormat|titleFormat|

$prototype=virtual bool validateCurrentPage ()
$virtualMethod=|bool|validateCurrentPage|

$prototype=QList<int> visitedPages () const
HB_FUNC_STATIC( QWIZARD_VISITEDPAGES )
{
  QWizard * obj = (QWizard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->visitedPages ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=WizardStyle wizardStyle () const
$method=|QWizard::WizardStyle|wizardStyle|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void back ()
$method=|void|back|

$prototype=void next ()
$method=|void|next|

$prototype=void restart ()
$method=|void|restart|

#pragma ENDDUMP
