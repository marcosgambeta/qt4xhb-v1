$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
#endif

CLASS QMessageBox INHERIT QDialog

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

$destructor

#pragma BEGINDUMP

#include <QMessageBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMessageBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMESSAGEBOX_NEW1 )
{
  QMessageBox * o = new QMessageBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/
HB_FUNC_STATIC( QMESSAGEBOX_NEW2 )
{
  int par4 = ISNIL(4)? (int) QMessageBox::NoButton : hb_parni(4);
  int par6 = ISNIL(6)? (int) Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint : hb_parni(6);
  QMessageBox * o = new QMessageBox ( (QMessageBox::Icon) hb_parni(1), PQSTRING(2), PQSTRING(3), (QMessageBox::StandardButtons) par4, OPQWIDGET(5,0), (Qt::WindowFlags) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
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

$deleteMethod

/*
void addButton ( QAbstractButton * button, ButtonRole role )
*/
$method=|void|addButton,addButton1|QAbstractButton *,QMessageBox::ButtonRole

/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
$method=|QPushButton *|addButton,addButton2|const QString &,QMessageBox::ButtonRole

/*
QPushButton * addButton ( StandardButton button )
*/
$method=|QPushButton *|addButton,addButton3|QMessageBox::StandardButton

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button ( StandardButton which ) const
*/
$method=|QAbstractButton *|button|QMessageBox::StandardButton

/*
ButtonRole buttonRole ( QAbstractButton * button ) const
*/
$method=|QMessageBox::ButtonRole|buttonRole|QAbstractButton *

/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons ();
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
$method=|QAbstractButton *|clickedButton|

/*
QPushButton * defaultButton () const
*/
$method=|QPushButton *|defaultButton|

/*
QString detailedText () const
*/
$method=|QString|detailedText|

/*
QAbstractButton * escapeButton () const
*/
$method=|QAbstractButton *|escapeButton|

/*
Icon icon () const
*/
$method=|QMessageBox::Icon|icon|

/*
QPixmap iconPixmap () const
*/
$method=|QPixmap|iconPixmap|

/*
QString informativeText () const
*/
$method=|QString|informativeText|

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
void removeButton ( QAbstractButton * button )
*/
$method=|void|removeButton|QAbstractButton *

/*
void setDefaultButton ( QPushButton * button )
*/
$method=|void|setDefaultButton,setDefaultButton1|QPushButton *

/*
void setDefaultButton ( StandardButton button )
*/
$method=|void|setDefaultButton,setDefaultButton2|QMessageBox::StandardButton

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setDetailedText ( const QString & text )
*/
$method=|void|setDetailedText|const QString &

/*
void setEscapeButton ( QAbstractButton * button )
*/
$method=|void|setEscapeButton,setEscapeButton1|QAbstractButton *

/*
void setEscapeButton ( StandardButton button )
*/
$method=|void|setEscapeButton,setEscapeButton2|QMessageBox::StandardButton

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setIcon ( Icon )
*/
$method=|void|setIcon|QMessageBox::Icon

/*
void setIconPixmap ( const QPixmap & pixmap )
*/
$method=|void|setIconPixmap|const QPixmap &

/*
void setInformativeText ( const QString & text )
*/
$method=|void|setInformativeText|const QString &

/*
void setStandardButtons ( StandardButtons buttons )
*/
$method=|void|setStandardButtons|QMessageBox::StandardButtons

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setTextFormat ( Qt::TextFormat format )
*/
$method=|void|setTextFormat|Qt::TextFormat

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
$method=|void|setWindowModality|Qt::WindowModality

/*
void setWindowTitle ( const QString & title )
*/
$method=|void|setWindowTitle|const QString &

/*
StandardButton standardButton ( QAbstractButton * button ) const
*/
$method=|QMessageBox::StandardButton|standardButton|QAbstractButton *

/*
StandardButtons standardButtons () const
*/
$method=|QMessageBox::StandardButtons|standardButtons|

/*
QString text () const
*/
$method=|QString|text|

/*
Qt::TextFormat textFormat () const
*/
$method=|Qt::TextFormat|textFormat|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
int exec ()
*/
$method=|int|exec|

/*
static void about ( QWidget * parent, const QString & title, const QString & text )
*/
$staticMethod=|void|about|QWidget *,const QString &,const QString &

/*
static void aboutQt ( QWidget * parent, const QString & title = QString() )
*/
$staticMethod=|void|aboutQt|QWidget *,const QString &=QString()

/*
static StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|critical|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
static StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|information|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
static StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|question|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
static StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|warning|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

#pragma ENDDUMP
