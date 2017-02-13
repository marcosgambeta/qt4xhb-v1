/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP

CLASS QWizardPage INHERIT QWidget

   DATA class_id INIT Class_Id_QWizardPage
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWizardPage>

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
QWizardPage ( QWidget * parent = 0 )
*/
HB_FUNC( QWIZARDPAGE_NEW )
{
  QWizardPage * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QWizardPage ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWizardPage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}



/*
QString buttonText ( QWizard::WizardButton which ) const
*/
HB_FUNC( QWIZARDPAGE_BUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->buttonText (  (QWizard::WizardButton) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual void cleanupPage ()
*/
HB_FUNC( QWIZARDPAGE_CLEANUPPAGE )
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
HB_FUNC( QWIZARDPAGE_INITIALIZEPAGE )
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
HB_FUNC( QWIZARDPAGE_ISCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCommitPage (  );
    hb_retl( b );
  }
}


/*
virtual bool isComplete () const
*/
HB_FUNC( QWIZARDPAGE_ISCOMPLETE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isComplete (  );
    hb_retl( b );
  }
}


/*
bool isFinalPage () const
*/
HB_FUNC( QWIZARDPAGE_ISFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFinalPage (  );
    hb_retl( b );
  }
}


/*
virtual int nextId () const
*/
HB_FUNC( QWIZARDPAGE_NEXTID )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nextId (  );
    hb_retni( i );
  }
}


/*
QPixmap pixmap ( QWizard::WizardPixmap which ) const
*/
HB_FUNC( QWIZARDPAGE_PIXMAP )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap (  (QWizard::WizardPixmap) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
void setButtonText ( QWizard::WizardButton which, const QString & text )
*/
HB_FUNC( QWIZARDPAGE_SETBUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setButtonText (  (QWizard::WizardButton) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCommitPage ( bool commitPage )
*/
HB_FUNC( QWIZARDPAGE_SETCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setCommitPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFinalPage ( bool finalPage )
*/
HB_FUNC( QWIZARDPAGE_SETFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFinalPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC( QWIZARDPAGE_SETPIXMAP )
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
HB_FUNC( QWIZARDPAGE_SETSUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setSubTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitle ( const QString & title )
*/
HB_FUNC( QWIZARDPAGE_SETTITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString subTitle () const
*/
HB_FUNC( QWIZARDPAGE_SUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->subTitle (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString title () const
*/
HB_FUNC( QWIZARDPAGE_TITLE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool validatePage ()
*/
HB_FUNC( QWIZARDPAGE_VALIDATEPAGE )
{
  QWizardPage * obj = (QWizardPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->validatePage (  );
    hb_retl( b );
  }
}





#pragma ENDDUMP
