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

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDoubleSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototypeV2=QString cleanText() const

$prototypeV2=int decimals() const

$prototypeV2=double maximum() const

$prototypeV2=double minimum() const

$prototypeV2=QString prefix() const

$prototypeV2=void setDecimals( int prec )

$prototypeV2=void setMaximum( double max )

$prototypeV2=void setMinimum( double min )

$prototypeV2=void setPrefix( const QString & prefix )

$prototypeV2=void setRange( double minimum, double maximum )

$prototypeV2=void setSingleStep( double val )

$prototypeV2=void setSuffix( const QString & suffix )

$prototypeV2=double singleStep() const

$prototypeV2=QString suffix() const

$prototypeV2=virtual QString textFromValue( double value ) const

$prototypeV2=double value() const

$prototypeV2=virtual double valueFromText( const QString & text ) const

$prototype=virtual void fixup ( QString & input ) const
%% TODO: revisar implementacao e corrigir
HB_FUNC_STATIC( QDOUBLESPINBOX_FIXUP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}
$addMethod=fixup

$prototype=virtual QValidator::State validate ( QString & text, int & pos ) const
%% TODO: revisar implementacao e corrigir
HB_FUNC_STATIC( QDOUBLESPINBOX_VALIDATE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}
$addMethod=validate

$prototypeV2=void setValue( double val )

$beginSignals
$beginGroup
$signal=|valueChanged(double)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
