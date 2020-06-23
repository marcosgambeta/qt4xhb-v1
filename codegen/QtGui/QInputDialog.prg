%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=QString cancelButtonText() const

$prototypeV2=QStringList comboBoxItems() const

$prototypeV2=int doubleDecimals() const

$prototypeV2=double doubleMaximum() const

$prototypeV2=double doubleMinimum() const

$prototypeV2=double doubleValue() const

$prototypeV2=QInputDialog::InputMode inputMode() const

$prototypeV2=int intMaximum() const

$prototypeV2=int intMinimum() const

$prototypeV2=int intStep() const

$prototypeV2=int intValue() const

$prototypeV2=bool isComboBoxEditable() const

$prototypeV2=QString labelText() const

$prototypeV2=QString okButtonText() const

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=QInputDialog::InputDialogOptions options() const

$prototypeV2=void setCancelButtonText( const QString & text )

$prototypeV2=void setComboBoxEditable( bool editable )

$prototypeV2=void setComboBoxItems( const QStringList & items )

$prototypeV2=void setDoubleDecimals( int decimals )

$prototypeV2=void setDoubleMaximum( double max )

$prototypeV2=void setDoubleMinimum( double min )

$prototypeV2=void setDoubleRange( double min, double max )

$prototypeV2=void setDoubleValue( double value )

$prototypeV2=void setInputMode( QInputDialog::InputMode mode )

$prototypeV2=void setIntMaximum( int max )

$prototypeV2=void setIntMinimum( int min )

$prototypeV2=void setIntRange( int min, int max )

$prototypeV2=void setIntStep( int step )

$prototypeV2=void setIntValue( int value )

$prototypeV2=void setLabelText( const QString & text )

$prototypeV2=void setOkButtonText( const QString & text )

$prototype=void setOption ( InputDialogOption option, bool on = true )
$method=|void|setOption|QInputDialog::InputDialogOption,bool=true

$prototypeV2=void setOptions( QInputDialog::InputDialogOptions options )

$prototypeV2=void setTextEchoMode( QLineEdit::EchoMode mode )

$prototypeV2=void setTextValue( const QString & text )

$prototypeV2=bool testOption( QInputDialog::InputDialogOption option ) const

$prototypeV2=QLineEdit::EchoMode textEchoMode() const

$prototypeV2=QString textValue() const

$prototypeV2=virtual void done( int result )

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=virtual QSize sizeHint() const

$prototype=static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double min = -2147483647, double max = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|double|getDouble|QWidget *,const QString &,const QString &,double=0,double=-2147483647,double=2147483647,int=1,bool *=0,Qt::WindowFlags=0

$prototype=static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int min = -2147483647, int max = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|int|getInt|QWidget *,const QString &,const QString &,int=0,int=-2147483647,int=2147483647,int=1,bool *=0,Qt::WindowFlags=0

$prototype=static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|QString|getItem|QWidget *,const QString &,const QString &,const QStringList &,int=0,bool=true,bool *=0,Qt::WindowFlags=0

$prototype=static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode mode = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0 )
$staticMethod=|QString|getText|QWidget *,const QString &,const QString &,QLineEdit::EchoMode=QLineEdit::Normal,const QString &=QString(),bool *=0,Qt::WindowFlags=0

$beginSignals
$signal=|doubleValueChanged(double)
$signal=|doubleValueSelected(double)
$signal=|intValueChanged(int)
$signal=|intValueSelected(int)
$signal=|textValueChanged(QString)
$signal=|textValueSelected(QString)
$endSignals

#pragma ENDDUMP
