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

$prototypeV2=void setAccelerated( bool on )

$prototypeV2=void setAlignment( Qt::Alignment flag )

$prototypeV2=void setButtonSymbols( QAbstractSpinBox::ButtonSymbols bs )

$prototypeV2=void setCorrectionMode( QAbstractSpinBox::CorrectionMode cm )

$prototypeV2=void setFrame( bool )

$prototypeV2=void setKeyboardTracking( bool kt )

$prototypeV2=void setReadOnly( bool r )

$prototypeV2=void setSpecialValueText( const QString & txt )

$prototypeV2=void setWrapping( bool w )

$prototypeV2=QString specialValueText() const

$prototypeV2=virtual void stepBy( int steps )

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

$prototypeV2=virtual bool event( QEvent * event )

$prototypeV2=virtual QVariant inputMethodQuery( Qt::InputMethodQuery query ) const

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
