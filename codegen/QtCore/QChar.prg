$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QChar

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD category
   METHOD decompositionTag
   METHOD digitValue
   METHOD direction
   METHOD hasMirrored
   METHOD isDigit
   METHOD isHighSurrogate
   METHOD isLetter
   METHOD isLetterOrNumber
   METHOD isLowSurrogate
   METHOD isLower
   METHOD isMark
   METHOD isNull
   METHOD isNumber
   METHOD isPrint
   METHOD isPunct
   METHOD isSpace
   METHOD isSymbol
   METHOD isTitleCase
   METHOD isUpper
   METHOD joining
   METHOD mirroredChar
   METHOD toCaseFolded
   METHOD toLower
   METHOD toTitleCase
   METHOD toUpper
   METHOD unicodeVersion

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QChar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QChar ()
*/
$constructor=|new1|

/*
QChar ( char ch )
*/
$constructor=|new2|char

/*
QChar ( uchar ch )
*/
$constructor=|new3|uchar

/*
QChar ( QLatin1Char ch )
*/
$constructor=|new4|QLatin1Char

/*
QChar ( uchar cell, uchar row )
*/
$constructor=|new5|uchar,uchar

/*
QChar ( ushort code )
*/
$constructor=|new6|ushort

/*
QChar ( short code )
*/
$constructor=|new7|short

/*
QChar ( uint code )
*/
$constructor=|new8|uint

/*
QChar ( int code )
*/
$constructor=|new9|int

/*
QChar ( SpecialCharacter ch )
*/
$constructor=|new10|QChar::SpecialCharacter

//[01]QChar ()
//[02]QChar ( char ch )
//[03]QChar ( uchar ch )
//[04]QChar ( QLatin1Char ch )
//[05]QChar ( uchar cell, uchar row )
//[06]QChar ( ushort code )
//[07]QChar ( short code )
//[08]QChar ( uint code )
//[09]QChar ( int code )
//[10]QChar ( SpecialCharacter ch )

HB_FUNC_STATIC( QCHAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCHAR_NEW1 );
  }  
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Category category () const
*/
$method=|QChar::Category|category|

/*
Decomposition decompositionTag () const
*/
$method=|QChar::Decomposition|decompositionTag|

/*
int digitValue () const
*/
$method=|int|digitValue|

/*
Direction direction () const
*/
$method=|QChar::Direction|direction|

/*
bool hasMirrored () const
*/
$method=|bool|hasMirrored|

/*
bool isDigit () const
*/
$method=|bool|isDigit|

/*
bool isHighSurrogate () const
*/
$method=|bool|isHighSurrogate|

/*
bool isLetter () const
*/
$method=|bool|isLetter|

/*
bool isLetterOrNumber () const
*/
$method=|bool|isLetterOrNumber|

/*
bool isLowSurrogate () const
*/
$method=|bool|isLowSurrogate|

/*
bool isLower () const
*/
$method=|bool|isLower|

/*
bool isMark () const
*/
$method=|bool|isMark|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isNumber () const
*/
$method=|bool|isNumber|

/*
bool isPrint () const
*/
$method=|bool|isPrint|

/*
bool isPunct () const
*/
$method=|bool|isPunct|

/*
bool isSpace () const
*/
$method=|bool|isSpace|

/*
bool isSymbol () const
*/
$method=|bool|isSymbol|

/*
bool isTitleCase () const
*/
$method=|bool|isTitleCase|

/*
bool isUpper () const
*/
$method=|bool|isUpper|

/*
Joining joining () const
*/
$method=|QChar::Joining|joining|

/*
QChar mirroredChar () const
*/
$method=|QChar|mirroredChar|

/*
QChar toCaseFolded () const
*/
$method=|QChar|toCaseFolded|

/*
QChar toLower () const
*/
$method=|QChar|toLower|

/*
QChar toTitleCase () const
*/
$method=|QChar|toTitleCase|

/*
QChar toUpper () const
*/
$method=|QChar|toUpper|

/*
UnicodeVersion unicodeVersion () const
*/
$method=|QChar::UnicodeVersion|unicodeVersion|

%% TODO: implementar metódos estáticos

$extraMethods

#pragma ENDDUMP
