$header

#include "hbclass.ch"

CLASS QDoubleSpinBox INHERIT QAbstractSpinBox

   METHOD new
   METHOD cleanText
   METHOD decimals
   METHOD maximum
   METHOD minimum
   METHOD prefix
   METHOD setDecimals
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPrefix
   METHOD setRange
   METHOD setSingleStep
   METHOD setSuffix
   METHOD singleStep
   METHOD suffix
   METHOD textFromValue
   METHOD value
   METHOD valueFromText
   METHOD fixup
   METHOD validate
   METHOD setValue

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDoubleSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDoubleSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_NEW )
{
  QDoubleSpinBox * o = new QDoubleSpinBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QString cleanText () const
*/
$method=|QString|cleanText|

/*
int decimals () const
*/
$method=|int|decimals|

/*
double maximum () const
*/
$method=|double|maximum|

/*
double minimum () const
*/
$method=|double|minimum|

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
void setDecimals ( int prec )
*/
$method=|void|setDecimals|int

/*
void setMaximum ( double max )
*/
$method=|void|setMaximum|double

/*
void setMinimum ( double min )
*/
$method=|void|setMinimum|double

/*
void setPrefix ( const QString & prefix )
*/
$method=|void|setPrefix|const QString &

/*
void setRange ( double minimum, double maximum )
*/
$method=|void|setRange|double,double

/*
void setSingleStep ( double val )
*/
$method=|void|setSingleStep|double

/*
void setSuffix ( const QString & suffix )
*/
$method=|void|setSuffix|const QString &

/*
double singleStep () const
*/
$method=|double|singleStep|

/*
QString suffix () const
*/
$method=|QString|suffix|

/*
virtual QString textFromValue ( double value ) const
*/
$virtualMethod=|QString|textFromValue|double

/*
double value () const
*/
$method=|double|value|

/*
virtual double valueFromText ( const QString & text ) const
*/
$virtualMethod=|double|valueFromText|const QString &

/*
virtual void fixup ( QString & input ) const
*/
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

/*
virtual QValidator::State validate ( QString & text, int & pos ) const
*/
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

/*
void setValue ( double val )
*/
$method=|void|setValue|double

#pragma ENDDUMP
