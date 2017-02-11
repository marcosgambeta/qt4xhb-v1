/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QInputDialog>

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
QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QINPUTDIALOG_NEW )
{
  QInputDialog * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QInputDialog ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QInputDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QINPUTDIALOG_DELETE )
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
HB_FUNC( QINPUTDIALOG_CANCELBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->cancelButtonText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QStringList comboBoxItems () const
*/
HB_FUNC( QINPUTDIALOG_COMBOBOXITEMS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->comboBoxItems (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int doubleDecimals () const
*/
HB_FUNC( QINPUTDIALOG_DOUBLEDECIMALS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->doubleDecimals (  );
    hb_retni( i );
  }
}


/*
double doubleMaximum () const
*/
HB_FUNC( QINPUTDIALOG_DOUBLEMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double r = obj->doubleMaximum (  );
    hb_retnd( r );
  }
}


/*
double doubleMinimum () const
*/
HB_FUNC( QINPUTDIALOG_DOUBLEMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double r = obj->doubleMinimum (  );
    hb_retnd( r );
  }
}


/*
double doubleValue () const
*/
HB_FUNC( QINPUTDIALOG_DOUBLEVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double r = obj->doubleValue (  );
    hb_retnd( r );
  }
}


/*
InputMode inputMode () const
*/
HB_FUNC( QINPUTDIALOG_INPUTMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->inputMode (  );
    hb_retni( i );
  }
}


/*
int intMaximum () const
*/
HB_FUNC( QINPUTDIALOG_INTMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->intMaximum (  );
    hb_retni( i );
  }
}


/*
int intMinimum () const
*/
HB_FUNC( QINPUTDIALOG_INTMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->intMinimum (  );
    hb_retni( i );
  }
}


/*
int intStep () const
*/
HB_FUNC( QINPUTDIALOG_INTSTEP )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->intStep (  );
    hb_retni( i );
  }
}


/*
int intValue () const
*/
HB_FUNC( QINPUTDIALOG_INTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->intValue (  );
    hb_retni( i );
  }
}


/*
bool isComboBoxEditable () const
*/
HB_FUNC( QINPUTDIALOG_ISCOMBOBOXEDITABLE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isComboBoxEditable (  );
    hb_retl( b );
  }
}


/*
QString labelText () const
*/
HB_FUNC( QINPUTDIALOG_LABELTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->labelText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString okButtonText () const
*/
HB_FUNC( QINPUTDIALOG_OKBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->okButtonText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC( QINPUTDIALOG_OPEN )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
InputDialogOptions options () const
*/
HB_FUNC( QINPUTDIALOG_OPTIONS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->options (  );
    hb_retni( i );
  }
}


/*
void setCancelButtonText ( const QString & text )
*/
HB_FUNC( QINPUTDIALOG_SETCANCELBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setCancelButtonText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setComboBoxEditable ( bool editable )
*/
HB_FUNC( QINPUTDIALOG_SETCOMBOBOXEDITABLE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setComboBoxEditable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setComboBoxItems ( const QStringList & items )
*/
HB_FUNC( QINPUTDIALOG_SETCOMBOBOXITEMS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    obj->setComboBoxItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleDecimals ( int decimals )
*/
HB_FUNC( QINPUTDIALOG_SETDOUBLEDECIMALS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDoubleDecimals ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleMaximum ( double max )
*/
HB_FUNC( QINPUTDIALOG_SETDOUBLEMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setDoubleMaximum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleMinimum ( double min )
*/
HB_FUNC( QINPUTDIALOG_SETDOUBLEMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setDoubleMinimum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleRange ( double min, double max )
*/
HB_FUNC( QINPUTDIALOG_SETDOUBLERANGE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    obj->setDoubleRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleValue ( double value )
*/
HB_FUNC( QINPUTDIALOG_SETDOUBLEVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setDoubleValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInputMode ( InputMode mode )
*/
HB_FUNC( QINPUTDIALOG_SETINPUTMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputMode (  (QInputDialog::InputMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntMaximum ( int max )
*/
HB_FUNC( QINPUTDIALOG_SETINTMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIntMaximum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntMinimum ( int min )
*/
HB_FUNC( QINPUTDIALOG_SETINTMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIntMinimum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntRange ( int min, int max )
*/
HB_FUNC( QINPUTDIALOG_SETINTRANGE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setIntRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntStep ( int step )
*/
HB_FUNC( QINPUTDIALOG_SETINTSTEP )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIntStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntValue ( int value )
*/
HB_FUNC( QINPUTDIALOG_SETINTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIntValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabelText ( const QString & text )
*/
HB_FUNC( QINPUTDIALOG_SETLABELTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setLabelText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOkButtonText ( const QString & text )
*/
HB_FUNC( QINPUTDIALOG_SETOKBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setOkButtonText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( InputDialogOption option, bool on = true )
*/
HB_FUNC( QINPUTDIALOG_SETOPTION )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = ISNIL(2)? true : hb_parl(2);
    obj->setOption (  (QInputDialog::InputDialogOption) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( InputDialogOptions options )
*/
HB_FUNC( QINPUTDIALOG_SETOPTIONS )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QInputDialog::InputDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextEchoMode ( QLineEdit::EchoMode mode )
*/
HB_FUNC( QINPUTDIALOG_SETTEXTECHOMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextEchoMode (  (QLineEdit::EchoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextValue ( const QString & text )
*/
HB_FUNC( QINPUTDIALOG_SETTEXTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setTextValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( InputDialogOption option ) const
*/
HB_FUNC( QINPUTDIALOG_TESTOPTION )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testOption (  (QInputDialog::InputDialogOption) par1 );
    hb_retl( b );
  }
}


/*
QLineEdit::EchoMode textEchoMode () const
*/
HB_FUNC( QINPUTDIALOG_TEXTECHOMODE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textEchoMode (  );
    hb_retni( i );
  }
}


/*
QString textValue () const
*/
HB_FUNC( QINPUTDIALOG_TEXTVALUE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->textValue (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual void done ( int result )
*/
HB_FUNC( QINPUTDIALOG_DONE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->done ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC( QINPUTDIALOG_MINIMUMSIZEHINT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC( QINPUTDIALOG_SETVISIBLE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QINPUTDIALOG_SIZEHINT )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}



/*
double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double min = -2147483647, double max = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QINPUTDIALOG_GETDOUBLE )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  double par4 = ISNIL(4)? 0 : hb_parnd(4);
  double par5 = ISNIL(5)? -2147483647 : hb_parnd(5);
  double par6 = ISNIL(6)? 2147483647 : hb_parnd(6);
  int par7 = ISNIL(7)? 1 : hb_parni(7);
  bool par8;
  int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
  double r = QInputDialog::getDouble ( par1, par2, par3, par4, par5, par6, par7, &par8,  (Qt::WindowFlags) par9 );
  hb_retnd( r );
  hb_storl( par8, 8 );
}


/*
int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int min = -2147483647, int max = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QINPUTDIALOG_GETINT )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? 0 : hb_parni(4);
  int par5 = ISNIL(5)? -2147483647 : hb_parni(5);
  int par6 = ISNIL(6)? 2147483647 : hb_parni(6);
  int par7 = ISNIL(7)? 1 : hb_parni(7);
  bool par8;
  int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
  int i = QInputDialog::getInt ( par1, par2, par3, par4, par5, par6, par7, &par8,  (Qt::WindowFlags) par9 );
  hb_retni( i );
  hb_storl( par8, 8 );
}


/*
QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QINPUTDIALOG_GETITEM )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
QStringList par4;
PHB_ITEM aStrings4 = hb_param(4, HB_IT_ARRAY);
int i4;
int nLen4 = hb_arrayLen(aStrings4);
for (i4=0;i4<nLen4;i4++)
{
QString temp = hb_arrayGetCPtr(aStrings4, i4+1);
par4 << temp;
}
  int par5 = ISNIL(5)? 0 : hb_parni(5);
  bool par6 = ISNIL(6)? true : hb_parl(6);
  bool par7;
  int par8 = ISNIL(8)? (int) 0 : hb_parni(8);
  QString str1 = QInputDialog::getItem ( par1, par2, par3, par4, par5, par6, &par7,  (Qt::WindowFlags) par8 );
  hb_retc( (const char *) str1.toLatin1().data() );
  hb_storl( par7, 7 );
}


/*
QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode mode = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QINPUTDIALOG_GETTEXT )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) QLineEdit::Normal : hb_parni(4);
  QString par5 = ISNIL(5)? QString() : hb_parc(5);
  bool par6;
  int par7 = ISNIL(7)? (int) 0 : hb_parni(7);
  QString str1 = QInputDialog::getText ( par1, par2, par3,  (QLineEdit::EchoMode) par4, par5, &par6,  (Qt::WindowFlags) par7 );
  hb_retc( (const char *) str1.toLatin1().data() );
  hb_storl( par6, 6 );
}




