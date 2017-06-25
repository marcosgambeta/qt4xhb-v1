/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QInputDialog INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cancelButtonText
   METHOD comboBoxItems
   METHOD doubleDecimals
   METHOD doubleMaximum
   METHOD doubleMinimum
   METHOD doubleValue
   METHOD inputMode
   METHOD intMaximum
   METHOD intMinimum
   METHOD intStep
   METHOD intValue
   METHOD isComboBoxEditable
   METHOD labelText
   METHOD okButtonText
   METHOD open
   METHOD options
   METHOD setCancelButtonText
   METHOD setComboBoxEditable
   METHOD setComboBoxItems
   METHOD setDoubleDecimals
   METHOD setDoubleMaximum
   METHOD setDoubleMinimum
   METHOD setDoubleRange
   METHOD setDoubleValue
   METHOD setInputMode
   METHOD setIntMaximum
   METHOD setIntMinimum
   METHOD setIntRange
   METHOD setIntStep
   METHOD setIntValue
   METHOD setLabelText
   METHOD setOkButtonText
   METHOD setOption
   METHOD setOptions
   METHOD setTextEchoMode
   METHOD setTextValue
   METHOD testOption
   METHOD textEchoMode
   METHOD textValue
   METHOD done
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD getDouble
   METHOD getInt
   METHOD getItem
   METHOD getText
   METHOD onDoubleValueChanged
   METHOD onDoubleValueSelected
   METHOD onIntValueChanged
   METHOD onIntValueSelected
   METHOD onTextValueChanged
   METHOD onTextValueSelected
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QInputDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QInputDialog * o = new QInputDialog ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QINPUTDIALOG_DELETE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString cancelButtonText () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_CANCELBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->cancelButtonText () );
  }
}


/*
QStringList comboBoxItems () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_COMBOBOXITEMS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->comboBoxItems () );
  }
}


/*
int doubleDecimals () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEDECIMALS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->doubleDecimals () );
  }
}


/*
double doubleMaximum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RDOUBLE( obj->doubleMaximum () );
  }
}


/*
double doubleMinimum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RDOUBLE( obj->doubleMinimum () );
  }
}


/*
double doubleValue () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RDOUBLE( obj->doubleValue () );
  }
}


/*
InputMode inputMode () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INPUTMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->inputMode () );
  }
}


/*
int intMaximum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->intMaximum () );
  }
}


/*
int intMinimum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->intMinimum () );
  }
}


/*
int intStep () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTSTEP )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->intStep () );
  }
}


/*
int intValue () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->intValue () );
  }
}


/*
bool isComboBoxEditable () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_ISCOMBOBOXEDITABLE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isComboBoxEditable () );
  }
}


/*
QString labelText () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_LABELTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->labelText () );
  }
}


/*
QString okButtonText () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_OKBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->okButtonText () );
  }
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QINPUTDIALOG_OPEN )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1), (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
InputDialogOptions options () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_OPTIONS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->options () );
  }
}


/*
void setCancelButtonText ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCANCELBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCancelButtonText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setComboBoxEditable ( bool editable )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCOMBOBOXEDITABLE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setComboBoxEditable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setComboBoxItems ( const QStringList & items )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCOMBOBOXITEMS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setComboBoxItems ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleDecimals ( int decimals )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEDECIMALS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleDecimals ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleMaximum ( double max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleMaximum ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleMinimum ( double min )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleMinimum ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleRange ( double min, double max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLERANGE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleRange ( PDOUBLE(1), PDOUBLE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleValue ( double value )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleValue ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInputMode ( InputMode mode )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINPUTMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputMode ( (QInputDialog::InputMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntMaximum ( int max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIntMaximum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntMinimum ( int min )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIntMinimum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntRange ( int min, int max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTRANGE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIntRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntStep ( int step )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTSTEP )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIntStep ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntValue ( int value )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIntValue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabelText ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETLABELTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLabelText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOkButtonText ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOKBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOkButtonText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( InputDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOPTION )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QInputDialog::InputDialogOption) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( InputDialogOptions options )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOPTIONS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions ( (QInputDialog::InputDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextEchoMode ( QLineEdit::EchoMode mode )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETTEXTECHOMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextEchoMode ( (QLineEdit::EchoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextValue ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETTEXTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextValue ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( InputDialogOption option ) const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TESTOPTION )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QInputDialog::InputDialogOption) par1 ) );
  }
}


/*
QLineEdit::EchoMode textEchoMode () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TEXTECHOMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textEchoMode () );
  }
}


/*
QString textValue () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TEXTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->textValue () );
  }
}


/*
virtual void done ( int result )
*/
HB_FUNC_STATIC( QINPUTDIALOG_DONE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->done ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_MINIMUMSIZEHINT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETVISIBLE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_SIZEHINT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



/*
double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double min = -2147483647, double max = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETDOUBLE )
{
  double par4 = ISNIL(4)? 0 : hb_parnd(4);
  double par5 = ISNIL(5)? -2147483647 : hb_parnd(5);
  double par6 = ISNIL(6)? 2147483647 : hb_parnd(6);
  bool par8;
  int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
  RDOUBLE( QInputDialog::getDouble ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), par4, par5, par6, OPINT(7,1), &par8, (Qt::WindowFlags) par9 ) );
  hb_storl( par8, 8 );
}


/*
int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int min = -2147483647, int max = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETINT )
{
  bool par8;
  int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
  RINT( QInputDialog::getInt ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), OPINT(4,0), OPINT(5,-2147483647), OPINT(6,2147483647), OPINT(7,1), &par8, (Qt::WindowFlags) par9 ) );
  hb_storl( par8, 8 );
}


/*
QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETITEM )
{
  bool par7;
  int par8 = ISNIL(8)? (int) 0 : hb_parni(8);
  RQSTRING( QInputDialog::getItem ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), PQSTRINGLIST(4), OPINT(5,0), OPBOOL(6,true), &par7, (Qt::WindowFlags) par8 ) );
  hb_storl( par7, 7 );
}


/*
QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode mode = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETTEXT )
{
  int par4 = ISNIL(4)? (int) QLineEdit::Normal : hb_parni(4);
  bool par6;
  int par7 = ISNIL(7)? (int) 0 : hb_parni(7);
  RQSTRING( QInputDialog::getText ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), (QLineEdit::EchoMode) par4, OPQSTRING(5,QString()), &par6, (Qt::WindowFlags) par7 ) );
  hb_storl( par6, 6 );
}





#pragma ENDDUMP
