$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractSpinBox INHERIT QWidget

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAbstractSpinBox ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
ButtonSymbols buttonSymbols () const
*/
$method=|QAbstractSpinBox::ButtonSymbols|buttonSymbols|

/*
CorrectionMode correctionMode () const
*/
$method=|QAbstractSpinBox::CorrectionMode|correctionMode|

/*
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_FIXUP ) // TODO: revisar implementacao e corrigir
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAcceptableInput () const
*/
$method=|bool|hasAcceptableInput|

/*
bool hasFrame () const
*/
$method=|bool|hasFrame|

/*
void interpretText ()
*/
$method=|void|interpretText|

/*
bool isAccelerated () const
*/
$method=|bool|isAccelerated|

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
bool keyboardTracking () const
*/
$method=|bool|keyboardTracking|

/*
void setAccelerated ( bool on )
*/
$method=|void|setAccelerated|bool

/*
void setAlignment ( Qt::Alignment flag )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setButtonSymbols ( ButtonSymbols bs )
*/
$method=|void|setButtonSymbols|QAbstractSpinBox::ButtonSymbols

/*
void setCorrectionMode ( CorrectionMode cm )
*/
$method=|void|setCorrectionMode|QAbstractSpinBox::CorrectionMode

/*
void setFrame ( bool )
*/
$method=|void|setFrame|bool

/*
void setKeyboardTracking ( bool kt )
*/
$method=|void|setKeyboardTracking|bool

/*
void setReadOnly ( bool r )
*/
$method=|void|setReadOnly|bool

/*
void setSpecialValueText ( const QString & txt )
*/
$method=|void|setSpecialValueText|const QString &

/*
void setWrapping ( bool w )
*/
$method=|void|setWrapping|bool

/*
QString specialValueText () const
*/
$method=|QString|specialValueText|

/*
virtual void stepBy ( int steps )
*/
$virtualMethod=|void|stepBy|int

/*
QString text () const
*/
$method=|QString|text|

/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_VALIDATE ) // TODO: revisar implementacao e corrigir
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}

/*
bool wrapping () const
*/
$method=|bool|wrapping|

/*
virtual bool event ( QEvent * event )
*/
$virtualMethod=|bool|event|QEvent *

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
void selectAll ()
*/
$method=|void|selectAll|

/*
void stepDown ()
*/
$method=|void|stepDown|

/*
void stepUp ()
*/
$method=|void|stepUp|

#pragma ENDDUMP
