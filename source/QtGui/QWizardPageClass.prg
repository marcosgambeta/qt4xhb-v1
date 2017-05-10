/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QWizardPage INHERIT QWidget

   DATA class_id INIT Class_Id_QWizardPage
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QWizardPage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QWizardPage * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QWizardPage ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}



/*
QString buttonText ( QWizard::WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_BUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->buttonText (  (QWizard::WizardButton) par1 );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual void cleanupPage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_CLEANUPPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cleanupPage (  );
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
    obj->initializePage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCommitPage () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isCommitPage (  ) );
  }
}


/*
virtual bool isComplete () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISCOMPLETE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isComplete (  ) );
  }
}


/*
bool isFinalPage () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFinalPage (  ) );
  }
}


/*
virtual int nextId () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_NEXTID )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->nextId (  ) );
  }
}


/*
QPixmap pixmap ( QWizard::WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_PIXMAP )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap (  (QWizard::WizardPixmap) par1 ) );
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
    obj->setButtonText (  (QWizard::WizardButton) par1, PQSTRING(2) );
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
    QPixmap * par2 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPixmap (  (QWizard::WizardPixmap) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSubTitle ( const QString & subTitle )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETSUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSubTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETTITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString subTitle () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_SUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->subTitle (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_TITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual bool validatePage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_VALIDATEPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->validatePage (  ) );
  }
}





#pragma ENDDUMP
