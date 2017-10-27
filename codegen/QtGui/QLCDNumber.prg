$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QLCDNumber INHERIT QFrame

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD checkOverflow1
   METHOD checkOverflow2
   METHOD checkOverflow
   METHOD digitCount
   METHOD intValue
   METHOD mode
   METHOD segmentStyle
   METHOD setDigitCount
   METHOD setMode
   METHOD setSegmentStyle
   METHOD smallDecimalPoint
   METHOD value
   METHOD sizeHint
   METHOD display1
   METHOD display2
   METHOD display3
   METHOD display
   METHOD setBinMode
   METHOD setDecMode
   METHOD setHexMode
   METHOD setOctMode
   METHOD setSmallDecimalPoint

   METHOD onOverflow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLCDNumber>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLCDNumber ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLCDNUMBER_NEW1 )
{
  QLCDNumber * o = new QLCDNumber ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QLCDNumber ( uint numDigits, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLCDNUMBER_NEW2 )
{
  QLCDNumber * o = new QLCDNumber ( PUINT(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QLCDNumber ( QWidget * parent = 0 )
//[2]QLCDNumber ( uint numDigits, QWidget * parent = 0 )

HB_FUNC_STATIC( QLCDNUMBER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool checkOverflow ( double num ) const
*/
$method=|bool|checkOverflow,checkOverflow1|double

/*
bool checkOverflow ( int num ) const
*/
$method=|bool|checkOverflow,checkOverflow2|int

//[1]bool checkOverflow ( double num ) const
//[2]bool checkOverflow ( int num ) const

// TODO: reconhecer se é int ou double
HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_CHECKOVERFLOW1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int digitCount () const
*/
$method=|int|digitCount|

/*
int intValue () const
*/
$method=|int|intValue|

/*
Mode mode () const
*/
$method=|QLCDNumber::Mode|mode|

/*
SegmentStyle segmentStyle () const
*/
$method=|QLCDNumber::SegmentStyle|segmentStyle|

/*
void setDigitCount ( int numDigits )
*/
$method=|void|setDigitCount|int

/*
void setMode ( Mode )
*/
$method=|void|setMode|QLCDNumber::Mode

/*
void setSegmentStyle ( SegmentStyle )
*/
$method=|void|setSegmentStyle|QLCDNumber::SegmentStyle

/*
bool smallDecimalPoint () const
*/
$method=|bool|smallDecimalPoint|

/*
double value () const
*/
$method=|double|value|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void display ( const QString & s )
*/
$method=|void|display,display1|const QString &

/*
void display ( double num )
*/
$method=|void|display,display2|double

/*
void display ( int num )
*/
$method=|void|display,display3|int

//[1]void display ( const QString & s )
//[2]void display ( double num )
//[3]void display ( int num )

%% TODO: reconhecer se é int ou double

HB_FUNC_STATIC( QLCDNUMBER_DISPLAY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_DISPLAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLCDNUMBER_DISPLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBinMode ()
*/
$method=|void|setBinMode|

/*
void setDecMode ()
*/
$method=|void|setDecMode|

/*
void setHexMode ()
*/
$method=|void|setHexMode|

/*
void setOctMode ()
*/
$method=|void|setOctMode|

/*
void setSmallDecimalPoint ( bool )
*/
$method=|void|setSmallDecimalPoint|bool

#pragma ENDDUMP
