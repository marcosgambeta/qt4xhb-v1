$header

#include "hbclass.ch"

CLASS QSpinBox INHERIT QAbstractSpinBox

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD maximum
   METHOD minimum
   METHOD prefix
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPrefix
   METHOD setRange
   METHOD setSingleStep
   METHOD setSuffix
   METHOD singleStep
   METHOD suffix
   METHOD value
   METHOD setValue

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSpinBox ( QWidget * parent = 0 )
HB_FUNC_STATIC( QSPINBOX_NEW )
{
  QSpinBox * o = new QSpinBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QString cleanText () const
$method=|QString|cleanText|

$prototype=int maximum () const
$method=|int|maximum|

$prototype=int minimum () const
$method=|int|minimum|

$prototype=QString prefix () const
$method=|QString|prefix|

$prototype=void setMaximum ( int max )
$method=|void|setMaximum|int

$prototype=void setMinimum ( int min )
$method=|void|setMinimum|int

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( int minimum, int maximum )
$method=|void|setRange|int,int

$prototype=void setSingleStep ( int val )
$method=|void|setSingleStep|int

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototype=int singleStep () const
$method=|int|singleStep|

$prototype=QString suffix () const
$method=|QString|suffix|

$prototype=int value () const
$method=|int|value|

$prototype=void setValue ( int val )
$method=|void|setValue|int

#pragma ENDDUMP
