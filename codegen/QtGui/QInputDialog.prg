%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$includes

$prototype=QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=QString cancelButtonText () const
$method=|QString|cancelButtonText|

$prototype=QStringList comboBoxItems () const
$method=|QStringList|comboBoxItems|

$prototype=int doubleDecimals () const
$method=|int|doubleDecimals|

$prototype=double doubleMaximum () const
$method=|double|doubleMaximum|

$prototype=double doubleMinimum () const
$method=|double|doubleMinimum|

$prototype=double doubleValue () const
$method=|double|doubleValue|

$prototype=InputMode inputMode () const
$method=|QInputDialog::InputMode|inputMode|

$prototype=int intMaximum () const
$method=|int|intMaximum|

$prototype=int intMinimum () const
$method=|int|intMinimum|

$prototype=int intStep () const
$method=|int|intStep|

$prototype=int intValue () const
$method=|int|intValue|

$prototype=bool isComboBoxEditable () const
$method=|bool|isComboBoxEditable|

$prototype=QString labelText () const
$method=|QString|labelText|

$prototype=QString okButtonText () const
$method=|QString|okButtonText|

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=InputDialogOptions options () const
$method=|QInputDialog::InputDialogOptions|options|

$prototype=void setCancelButtonText ( const QString & text )
$method=|void|setCancelButtonText|const QString &

$prototype=void setComboBoxEditable ( bool editable )
$method=|void|setComboBoxEditable|bool

$prototype=void setComboBoxItems ( const QStringList & items )
$method=|void|setComboBoxItems|const QStringList &

$prototype=void setDoubleDecimals ( int decimals )
$method=|void|setDoubleDecimals|int

$prototype=void setDoubleMaximum ( double max )
$method=|void|setDoubleMaximum|double

$prototype=void setDoubleMinimum ( double min )
$method=|void|setDoubleMinimum|double

$prototype=void setDoubleRange ( double min, double max )
$method=|void|setDoubleRange|double,double

$prototype=void setDoubleValue ( double value )
$method=|void|setDoubleValue|double

$prototype=void setInputMode ( InputMode mode )
$method=|void|setInputMode|QInputDialog::InputMode

$prototype=void setIntMaximum ( int max )
$method=|void|setIntMaximum|int

$prototype=void setIntMinimum ( int min )
$method=|void|setIntMinimum|int

$prototype=void setIntRange ( int min, int max )
$method=|void|setIntRange|int,int

$prototype=void setIntStep ( int step )
$method=|void|setIntStep|int

$prototype=void setIntValue ( int value )
$method=|void|setIntValue|int

$prototype=void setLabelText ( const QString & text )
$method=|void|setLabelText|const QString &

$prototype=void setOkButtonText ( const QString & text )
$method=|void|setOkButtonText|const QString &

$prototype=void setOption ( InputDialogOption option, bool on = true )
$method=|void|setOption|QInputDialog::InputDialogOption,bool=true

$prototype=void setOptions ( InputDialogOptions options )
$method=|void|setOptions|QInputDialog::InputDialogOptions

$prototype=void setTextEchoMode ( QLineEdit::EchoMode mode )
$method=|void|setTextEchoMode|QLineEdit::EchoMode

$prototype=void setTextValue ( const QString & text )
$method=|void|setTextValue|const QString &

$prototype=bool testOption ( InputDialogOption option ) const
$method=|bool|testOption|QInputDialog::InputDialogOption

$prototype=QLineEdit::EchoMode textEchoMode () const
$method=|QLineEdit::EchoMode|textEchoMode|

$prototype=QString textValue () const
$method=|QString|textValue|

$prototype=virtual void done ( int result )
$virtualMethod=|void|done|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double min = -2147483647, double max = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|double|getDouble|QWidget *,const QString &,const QString &,double=0,double=-2147483647,double=2147483647,int=1,bool *=0,Qt::WindowFlags=0

$prototype=static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int min = -2147483647, int max = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|int|getInt|QWidget *,const QString &,const QString &,int=0,int=-2147483647,int=2147483647,int=1,bool *=0,Qt::WindowFlags=0

$prototype=static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|QString|getItem|QWidget *,const QString &,const QString &,const QStringList &,int=0,bool=true,bool *=0,Qt::WindowFlags=0

$prototype=static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode mode = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|QString|getText|QWidget *,const QString &,const QString &,QLineEdit::EchoMode=QLineEdit::Normal,const QString &=QString(),bool *=0,Qt::WindowFlags=0

$beginSignals
$signalMethod=|doubleValueChanged(double)
$signalMethod=|doubleValueSelected(double)
$signalMethod=|intValueChanged(int)
$signalMethod=|intValueSelected(int)
$signalMethod=|textValueChanged(QString)
$signalMethod=|textValueSelected(QString)
$endSignals

#pragma ENDDUMP
