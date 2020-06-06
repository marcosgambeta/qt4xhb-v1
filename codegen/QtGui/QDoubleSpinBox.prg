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

$prototype=QString cleanText () const
$method=|QString|cleanText|

$prototypeV2=int decimals() const

$prototype=double maximum () const
$method=|double|maximum|

$prototype=double minimum () const
$method=|double|minimum|

$prototype=QString prefix () const
$method=|QString|prefix|

$prototype=void setDecimals ( int prec )
$method=|void|setDecimals|int

$prototype=void setMaximum ( double max )
$method=|void|setMaximum|double

$prototype=void setMinimum ( double min )
$method=|void|setMinimum|double

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( double minimum, double maximum )
$method=|void|setRange|double,double

$prototype=void setSingleStep ( double val )
$method=|void|setSingleStep|double

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototype=double singleStep () const
$method=|double|singleStep|

$prototype=QString suffix () const
$method=|QString|suffix|

$prototype=virtual QString textFromValue ( double value ) const
$virtualMethod=|QString|textFromValue|double

$prototype=double value () const
$method=|double|value|

$prototype=virtual double valueFromText ( const QString & text ) const
$virtualMethod=|double|valueFromText|const QString &

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

$prototype=void setValue ( double val )
$method=|void|setValue|double

$beginSignals
$beginGroup
$signal=|valueChanged(double)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
