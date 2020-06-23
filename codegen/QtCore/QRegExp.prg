%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QtCore/QStringList>

$prototype=QRegExp ()
$internalConstructor=|new1|

$prototype=QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
$internalConstructor=|new2|const QString &,Qt::CaseSensitivity=Qt::CaseSensitive,QRegExp::PatternSyntax=QRegExp::RegExp

$prototype=QRegExp ( const QRegExp & rx )
$internalConstructor=|new3|const QRegExp &

/*
[1]QRegExp ()
[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
[3]QRegExp ( const QRegExp & rx )
*/

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegExp_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QRegExp_new2();
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QRegExp_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QString cap ( int nth = 0 ) const
$method=|QString|cap|int=0

$prototypeV2=int captureCount() const

$prototypeV2=QStringList capturedTexts() const

$prototypeV2=Qt::CaseSensitivity caseSensitivity() const

$prototypeV2=QString errorString() const

$prototypeV2=bool exactMatch( const QString & str ) const

$prototype=int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
$method=|int|indexIn|const QString &,int=0,QRegExp::CaretMode=QRegExp::CaretAtZero

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isMinimal() const

$prototypeV2=bool isValid() const

$prototype=int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
$method=|int|lastIndexIn|const QString &,int=-1,QRegExp::CaretMode=QRegExp::CaretAtZero

$prototypeV2=int matchedLength() const

$prototypeV2=QString pattern() const

$prototypeV2=QRegExp::PatternSyntax patternSyntax() const

$prototype=int pos ( int nth = 0 ) const
$method=|int|pos|int=0

$prototypeV2=void setCaseSensitivity( Qt::CaseSensitivity cs )

$prototypeV2=void setMinimal( bool minimal )

$prototypeV2=void setPattern( const QString & pattern )

$prototypeV2=void setPatternSyntax( QRegExp::PatternSyntax syntax )

$prototypeV2=static QString escape( const QString & str )

$extraMethods

#pragma ENDDUMP
