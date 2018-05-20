%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD buttonSymbols
   METHOD correctionMode
   METHOD fixup
   METHOD hasAcceptableInput
   METHOD hasFrame
   METHOD interpretText
   METHOD isAccelerated
   METHOD isReadOnly
   METHOD keyboardTracking
   METHOD setAccelerated
   METHOD setAlignment
   METHOD setButtonSymbols
   METHOD setCorrectionMode
   METHOD setFrame
   METHOD setKeyboardTracking
   METHOD setReadOnly
   METHOD setSpecialValueText
   METHOD setWrapping
   METHOD specialValueText
   METHOD stepBy
   METHOD text
   METHOD validate
   METHOD wrapping
   METHOD event
   METHOD inputMethodQuery
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD selectAll
   METHOD stepDown
   METHOD stepUp

   METHOD onEditingFinished

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=ButtonSymbols buttonSymbols () const
$method=|QAbstractSpinBox::ButtonSymbols|buttonSymbols|

$prototype=CorrectionMode correctionMode () const
$method=|QAbstractSpinBox::CorrectionMode|correctionMode|

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

$prototype=bool hasAcceptableInput () const
$method=|bool|hasAcceptableInput|

$prototype=bool hasFrame () const
$method=|bool|hasFrame|

$prototype=void interpretText ()
$method=|void|interpretText|

$prototype=bool isAccelerated () const
$method=|bool|isAccelerated|

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=bool keyboardTracking () const
$method=|bool|keyboardTracking|

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

$prototype=QString specialValueText () const
$method=|QString|specialValueText|

$prototype=virtual void stepBy ( int steps )
$virtualMethod=|void|stepBy|int

$prototype=QString text () const
$method=|QString|text|

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

$prototype=bool wrapping () const
$method=|bool|wrapping|

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=void selectAll ()
$method=|void|selectAll|

$prototype=void stepDown ()
$method=|void|stepDown|

$prototype=void stepUp ()
$method=|void|stepUp|

$beginSignals
$signal=|editingFinished()
$endSignals

#pragma ENDDUMP
