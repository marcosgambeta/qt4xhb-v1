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
$virtualMethod=|void|cleanupPage|

/*
virtual void initializePage ()
*/
$virtualMethod=|void|initializePage|

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
$method=|QPixmap|pixmap|QWizard::WizardPixmap

/*
void setButtonText ( QWizard::WizardButton which, const QString & text )
*/
$method=|void|setButtonText|QWizard::WizardButton,const QString &

/*
void setCommitPage ( bool commitPage )
*/
$method=|void|setCommitPage|bool

/*
void setFinalPage ( bool finalPage )
*/
$method=|void|setFinalPage|bool

/*
void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

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
