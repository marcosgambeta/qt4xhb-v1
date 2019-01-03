%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QChar ()
$constructor=|new1|

$prototype=QChar ( char ch )
$constructor=|new2|char

$prototype=QChar ( uchar ch )
$constructor=|new3|uchar

$prototype=QChar ( QLatin1Char ch )
$constructor=|new4|QLatin1Char

$prototype=QChar ( uchar cell, uchar row )
$constructor=|new5|uchar,uchar

$prototype=QChar ( ushort code )
$constructor=|new6|ushort

$prototype=QChar ( short code )
$constructor=|new7|short

$prototype=QChar ( uint code )
$constructor=|new8|uint

$prototype=QChar ( int code )
$constructor=|new9|int

$prototype=QChar ( SpecialCharacter ch )
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
$addMethod=new

$deleteMethod

$prototype=Category category () const
$method=|QChar::Category|category|

$prototype=Decomposition decompositionTag () const
$method=|QChar::Decomposition|decompositionTag|

$prototype=int digitValue () const
$method=|int|digitValue|

$prototype=Direction direction () const
$method=|QChar::Direction|direction|

$prototype=bool hasMirrored () const
$method=|bool|hasMirrored|

$prototype=bool isDigit () const
$method=|bool|isDigit|

$prototype=bool isHighSurrogate () const
$method=|bool|isHighSurrogate|

$prototype=bool isLetter () const
$method=|bool|isLetter|

$prototype=bool isLetterOrNumber () const
$method=|bool|isLetterOrNumber|

$prototype=bool isLowSurrogate () const
$method=|bool|isLowSurrogate|

$prototype=bool isLower () const
$method=|bool|isLower|

$prototype=bool isMark () const
$method=|bool|isMark|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isNumber () const
$method=|bool|isNumber|

$prototype=bool isPrint () const
$method=|bool|isPrint|

$prototype=bool isPunct () const
$method=|bool|isPunct|

$prototype=bool isSpace () const
$method=|bool|isSpace|

$prototype=bool isSymbol () const
$method=|bool|isSymbol|

$prototype=bool isTitleCase () const
$method=|bool|isTitleCase|

$prototype=bool isUpper () const
$method=|bool|isUpper|

$prototype=Joining joining () const
$method=|QChar::Joining|joining|

$prototype=QChar mirroredChar () const
$method=|QChar|mirroredChar|

$prototype=QChar toCaseFolded () const
$method=|QChar|toCaseFolded|

$prototype=QChar toLower () const
$method=|QChar|toLower|

$prototype=QChar toTitleCase () const
$method=|QChar|toTitleCase|

$prototype=QChar toUpper () const
$method=|QChar|toUpper|

$prototype=UnicodeVersion unicodeVersion () const
$method=|QChar::UnicodeVersion|unicodeVersion|

%% TODO: implementar met�dos est�ticos

$extraMethods

#pragma ENDDUMP
