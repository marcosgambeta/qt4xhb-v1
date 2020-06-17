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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QAbstractSpinBox::ButtonSymbols buttonSymbols() const

$prototypeV2=QAbstractSpinBox::CorrectionMode correctionMode() const

$prototype=virtual void fixup ( QString & input ) const
%% TODO: revisar implementacao e corrigir
HB_FUNC_STATIC( QABSTRACTSPINBOX_FIXUP )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}
$addMethod=fixup

$prototypeV2=bool hasAcceptableInput() const

$prototypeV2=bool hasFrame() const

$prototypeV2=void interpretText()

$prototypeV2=bool isAccelerated() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool keyboardTracking() const

$prototype=void setAccelerated ( bool on )
$method=|void|setAccelerated|bool

$prototype=void setAlignment ( Qt::Alignment flag )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setButtonSymbols ( ButtonSymbols bs )
$method=|void|setButtonSymbols|QAbstractSpinBox::ButtonSymbols

$prototype=void setCorrectionMode ( CorrectionMode cm )
$method=|void|setCorrectionMode|QAbstractSpinBox::CorrectionMode

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototype=void setKeyboardTracking ( bool kt )
$method=|void|setKeyboardTracking|bool

$prototype=void setReadOnly ( bool r )
$method=|void|setReadOnly|bool

$prototype=void setSpecialValueText ( const QString & txt )
$method=|void|setSpecialValueText|const QString &

$prototype=void setWrapping ( bool w )
$method=|void|setWrapping|bool

$prototypeV2=QString specialValueText() const

$prototype=virtual void stepBy ( int steps )
$virtualMethod=|void|stepBy|int

$prototypeV2=QString text() const

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
%% TODO: revisar implementacao e corrigir
HB_FUNC_STATIC( QABSTRACTSPINBOX_VALIDATE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}
$addMethod=validate

$prototypeV2=bool wrapping() const

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual void clear()

$prototypeV2=void selectAll()

$prototypeV2=void stepDown()

$prototypeV2=void stepUp()

$beginSignals
$signal=|editingFinished()
$endSignals

#pragma ENDDUMP
