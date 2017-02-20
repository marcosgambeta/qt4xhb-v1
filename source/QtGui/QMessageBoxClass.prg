/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP

CLASS QMessageBox INHERIT QDialog

   DATA class_id INIT Class_Id_QMessageBox
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addButton1
   METHOD addButton2
   METHOD addButton3
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD escapeButton
   METHOD icon
   METHOD iconPixmap
   METHOD informativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton1
   METHOD setDefaultButton2
   METHOD setDefaultButton
   METHOD setDetailedText
   METHOD setEscapeButton1
   METHOD setEscapeButton2
   METHOD setEscapeButton
   METHOD setIcon
   METHOD setIconPixmap
   METHOD setInformativeText
   METHOD setStandardButtons
   METHOD setText
   METHOD setTextFormat
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD text
   METHOD textFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning
   METHOD onButtonClicked
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMessageBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMessageBox>

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
QMessageBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMESSAGEBOX_NEW1 )
{
  QMessageBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMessageBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMessageBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/
HB_FUNC_STATIC( QMESSAGEBOX_NEW2 )
{
  QMessageBox * o = NULL;
  int par1 = hb_parni(1);
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) QMessageBox::NoButton : hb_parni(4);
  QWidget * par5 = ISNIL(5)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par6 = ISNIL(6)? (int) Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint : hb_parni(6);
  o = new QMessageBox (  (QMessageBox::Icon) par1, par2, par3,  (QMessageBox::StandardButtons) par4, par5,  (Qt::WindowFlags) par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMessageBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QMessageBox ( QWidget * parent = 0 )
//[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_NEW1 );
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISQWIDGET(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_DELETE )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addButton ( QAbstractButton * button, ButtonRole role )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON1 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->addButton ( par1,  (QMessageBox::ButtonRole) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON2 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    QPushButton * ptr = obj->addButton ( par1,  (QMessageBox::ButtonRole) par2 );
    _qt4xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}


/*
QPushButton * addButton ( StandardButton button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON3 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPushButton * ptr = obj->addButton (  (QMessageBox::StandardButton) par1 );
    _qt4xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}


//[1]void addButton ( QAbstractButton * button, ButtonRole role )
//[2]QPushButton * addButton ( const QString & text, ButtonRole role )
//[3]QPushButton * addButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_ADDBUTTON1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_ADDBUTTON2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_ADDBUTTON3 );
  }
}

/*
QAbstractButton * button ( StandardButton which ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractButton * ptr = obj->button (  (QMessageBox::StandardButton) par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}


/*
ButtonRole buttonRole ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONROLE )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->buttonRole ( par1 ) );
  }
}


/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QAbstractButton * clickedButton () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CLICKEDBUTTON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * ptr = obj->clickedButton (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}


/*
QPushButton * defaultButton () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DEFAULTBUTTON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPushButton * ptr = obj->defaultButton (  );
    _qt4xhb_createReturnClass ( ptr, "QPUSHBUTTON" );
  }
}


/*
QString detailedText () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DETAILEDTEXT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->detailedText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QAbstractButton * escapeButton () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ESCAPEBUTTON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * ptr = obj->escapeButton (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}


/*
Icon icon () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->icon (  ) );
  }
}


/*
QPixmap iconPixmap () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICONPIXMAP )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->iconPixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QString informativeText () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATIVETEXT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->informativeText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMESSAGEBOX_OPEN )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_REMOVEBUTTON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultButton ( QPushButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON1 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPushButton * par1 = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDefaultButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultButton ( StandardButton button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON2 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultButton (  (QMessageBox::StandardButton) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setDefaultButton ( QPushButton * button )
//[2]void setDefaultButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETDEFAULTBUTTON1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETDEFAULTBUTTON2 );
  }
}

/*
void setDetailedText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDETAILEDTEXT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDetailedText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEscapeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON1 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEscapeButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEscapeButton ( StandardButton button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON2 )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEscapeButton (  (QMessageBox::StandardButton) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setEscapeButton ( QAbstractButton * button )
//[2]void setEscapeButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETESCAPEBUTTON1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMESSAGEBOX_SETESCAPEBUTTON2 );
  }
}

/*
void setIcon ( Icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIcon (  (QMessageBox::Icon) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICONPIXMAP )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInformativeText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETINFORMATIVETEXT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setInformativeText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardButtons ( StandardButtons buttons )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETSTANDARDBUTTONS )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStandardButtons (  (QMessageBox::StandardButtons) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextFormat ( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTFORMAT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWMODALITY )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowModality (  (Qt::WindowModality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWindowTitle ( const QString & title )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWTITLE )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setWindowTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
StandardButton standardButton ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTON )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->standardButton ( par1 ) );
  }
}


/*
StandardButtons standardButtons () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTONS )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->standardButtons (  ) );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Qt::TextFormat textFormat () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTFORMAT )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textFormat (  ) );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETVISIBLE )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int exec ()
*/
HB_FUNC_STATIC( QMESSAGEBOX_EXEC )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->exec (  ) );
  }
}



/*
void about ( QWidget * parent, const QString & title, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUT )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  QMessageBox::about ( par1, par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void aboutQt ( QWidget * parent, const QString & title = QString() )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUTQT )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  QMessageBox::aboutQt ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_CRITICAL )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( (int) QMessageBox::critical ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATION )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( (int) QMessageBox::information ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_QUESTION )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( (int) QMessageBox::question ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}


/*
StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_WARNING )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) QMessageBox::Ok : hb_parni(4);
  int par5 = ISNIL(5)? (int) QMessageBox::NoButton : hb_parni(5);
  hb_retni( (int) QMessageBox::warning ( par1, par2, par3,  (QMessageBox::StandardButtons) par4,  (QMessageBox::StandardButton) par5 ) );
}





#pragma ENDDUMP
