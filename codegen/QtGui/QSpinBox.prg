%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$includes

$prototype=QSpinBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

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

$beginSignals
$beginGroup
$signal=|valueChanged(int)
$signal=|valueChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP
