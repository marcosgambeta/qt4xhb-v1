$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QInputDialog INHERIT QDialog

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

$destructor

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

$deleteMethod

/*
QString cancelButtonText () const
*/
$method=|QString|cancelButtonText|

/*
QStringList comboBoxItems () const
*/
$method=|QStringList|comboBoxItems|

/*
int doubleDecimals () const
*/
$method=|int|doubleDecimals|

/*
double doubleMaximum () const
*/
$method=|double|doubleMaximum|

/*
double doubleMinimum () const
*/
$method=|double|doubleMinimum|

/*
double doubleValue () const
*/
$method=|double|doubleValue|

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
$method=|int|intMaximum|

/*
int intMinimum () const
*/
$method=|int|intMinimum|

/*
int intStep () const
*/
$method=|int|intStep|

/*
int intValue () const
*/
$method=|int|intValue|

/*
bool isComboBoxEditable () const
*/
$method=|bool|isComboBoxEditable|

/*
QString labelText () const
*/
$method=|QString|labelText|

/*
QString okButtonText () const
*/
$method=|QString|okButtonText|

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

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
$method=|void|setCancelButtonText|const QString &

/*
void setComboBoxEditable ( bool editable )
*/
$method=|void|setComboBoxEditable|bool

/*
void setComboBoxItems ( const QStringList & items )
*/
$method=|void|setComboBoxItems|const QStringList &

/*
void setDoubleDecimals ( int decimals )
*/
$method=|void|setDoubleDecimals|int

/*
void setDoubleMaximum ( double max )
*/
$method=|void|setDoubleMaximum|double

/*
void setDoubleMinimum ( double min )
*/
$method=|void|setDoubleMinimum|double

/*
void setDoubleRange ( double min, double max )
*/
$method=|void|setDoubleRange|double,double

/*
void setDoubleValue ( double value )
*/
$method=|void|setDoubleValue|double

/*
void setInputMode ( InputMode mode )
*/
$method=|void|setInputMode|QInputDialog::InputMode

/*
void setIntMaximum ( int max )
*/
$method=|void|setIntMaximum|int

/*
void setIntMinimum ( int min )
*/
$method=|void|setIntMinimum|int

/*
void setIntRange ( int min, int max )
*/
$method=|void|setIntRange|int,int

/*
void setIntStep ( int step )
*/
$method=|void|setIntStep|int

/*
void setIntValue ( int value )
*/
$method=|void|setIntValue|int

/*
void setLabelText ( const QString & text )
*/
$method=|void|setLabelText|const QString &

/*
void setOkButtonText ( const QString & text )
*/
$method=|void|setOkButtonText|const QString &

/*
void setOption ( InputDialogOption option, bool on = true )
*/
$method=|void|setOption|QInputDialog::InputDialogOption,bool=true

/*
void setOptions ( InputDialogOptions options )
*/
$method=|void|setOptions|QInputDialog::InputDialogOptions

/*
void setTextEchoMode ( QLineEdit::EchoMode mode )
*/
$method=|void|setTextEchoMode|QLineEdit::EchoMode

/*
void setTextValue ( const QString & text )
*/
$method=|void|setTextValue|const QString &

/*
bool testOption ( InputDialogOption option ) const
*/
$method=|bool|testOption|QInputDialog::InputDialogOption

/*
QLineEdit::EchoMode textEchoMode () const
*/
$method=|QLineEdit::EchoMode|textEchoMode|

/*
QString textValue () const
*/
$method=|QString|textValue|

/*
virtual void done ( int result )
*/
$virtualMethod=|void|done|int

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double min = -2147483647, double max = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
$staticMethod=|double|getDouble|QWidget *,const QString &,const QString &,double=0,double=-2147483647,double=2147483647,int=1,bool *=0,Qt::WindowFlags=0

/*
static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int min = -2147483647, int max = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
$staticMethod=|int|getInt|QWidget *,const QString &,const QString &,int=0,int=-2147483647,int=2147483647,int=1,bool *=0,Qt::WindowFlags=0

/*
static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
$staticMethod=|QString|getItem|QWidget *,const QString &,const QString &,const QStringList &,int=0,bool=true,bool *=0,Qt::WindowFlags=0

/*
static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode mode = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
$staticMethod=|QString|getText|QWidget *,const QString &,const QString &,QLineEdit::EchoMode=QLineEdit::Normal,const QString &=QString(),bool *=0,Qt::WindowFlags=0

#pragma ENDDUMP
