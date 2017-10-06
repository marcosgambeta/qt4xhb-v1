$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QWizardPage INHERIT QWidget

   METHOD new
   METHOD buttonText
   METHOD cleanupPage
   METHOD initializePage
   METHOD isCommitPage
   METHOD isComplete
   METHOD isFinalPage
   METHOD nextId
   METHOD pixmap
   METHOD setButtonText
   METHOD setCommitPage
   METHOD setFinalPage
   METHOD setPixmap
   METHOD setSubTitle
   METHOD setTitle
   METHOD subTitle
   METHOD title
   METHOD validatePage

   METHOD onCompleteChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWizardPage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWizardPage ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWIZARDPAGE_NEW )
{
  QWizardPage * o = new QWizardPage ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QString buttonText ( QWizard::WizardButton which ) const
*/
$method=|QString|buttonText|QWizard::WizardButton

/*
virtual void cleanupPage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_CLEANUPPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cleanupPage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void initializePage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_INITIALIZEPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->initializePage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCommitPage () const
*/
$method=|bool|isCommitPage|

/*
virtual bool isComplete () const
*/
$virtualMethod=|bool|isComplete|

/*
bool isFinalPage () const
*/
$method=|bool|isFinalPage|

/*
virtual int nextId () const
*/
$virtualMethod=|int|nextId|

/*
QPixmap pixmap ( QWizard::WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_PIXMAP )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap ( (QWizard::WizardPixmap) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setButtonText ( QWizard::WizardButton which, const QString & text )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETBUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButtonText ( (QWizard::WizardButton) par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCommitPage ( bool commitPage )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCommitPage ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFinalPage ( bool finalPage )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFinalPage ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETPIXMAP )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPixmap ( (QWizard::WizardPixmap) par1, *PQPIXMAP(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSubTitle ( const QString & subTitle )
*/
$method=|void|setSubTitle|const QString &

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
QString subTitle () const
*/
$method=|QString|subTitle|

/*
QString title () const
*/
$method=|QString|title|

/*
virtual bool validatePage ()
*/
$virtualMethod=|bool|validatePage|

#pragma ENDDUMP
