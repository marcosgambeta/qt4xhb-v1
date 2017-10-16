$header

#include "hbclass.ch"

CLASS QDoubleValidator INHERIT QValidator

   METHOD new1
   METHOD new2
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

/*
QDoubleValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW1 )
{
  QDoubleValidator * o = new QDoubleValidator ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW2 )
{
  QDoubleValidator * o = new QDoubleValidator ( PDOUBLE(1), PDOUBLE(2), PINT(3), PQOBJECT(4) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
double bottom () const
*/
$method=|double|bottom|

/*
int decimals () const
*/
$method=|int|decimals|

/*
Notation notation () const
*/
$method=|QDoubleValidator::Notation|notation|

/*
void setBottom ( double )
*/
$method=|void|setBottom|double

/*
void setDecimals ( int )
*/
$method=|void|setDecimals|int

/*
void setNotation ( Notation )
*/
$method=|void|setNotation|QDoubleValidator::Notation

/*
virtual void setRange ( double minimum, double maximum, int decimals = 0 )
*/
$virtualMethod=|void|setRange|double,double,int=0

/*
void setTop ( double )
*/
$method=|void|setTop|double

/*
double top () const
*/
$method=|double|top|

/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
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
