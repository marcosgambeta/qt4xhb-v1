%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDoubleValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD bottom
   METHOD decimals
   METHOD notation
   METHOD setBottom
   METHOD setDecimals
   METHOD setNotation
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDoubleValidator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDoubleValidator ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
$internalConstructor=|new2|double,double,int,QObject *

//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDoubleValidator_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QDoubleValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=double bottom () const
$method=|double|bottom|

$prototype=int decimals () const
$method=|int|decimals|

$prototype=Notation notation () const
$method=|QDoubleValidator::Notation|notation|

$prototype=void setBottom ( double )
$method=|void|setBottom|double

$prototype=void setDecimals ( int )
$method=|void|setDecimals|int

$prototype=void setNotation ( Notation )
$method=|void|setNotation|QDoubleValidator::Notation

$prototype=virtual void setRange ( double minimum, double maximum, int decimals = 0 )
$virtualMethod=|void|setRange|double,double,int=0

$prototype=void setTop ( double )
$method=|void|setTop|double

$prototype=double top () const
$method=|double|top|

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
%% TODO: revisar implementacao e corrigir
HB_FUNC_STATIC( QDOUBLEVALIDATOR_VALIDATE )
{
  QDoubleValidator * obj = (QDoubleValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}

#pragma ENDDUMP
