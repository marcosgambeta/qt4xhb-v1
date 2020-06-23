%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextDocument>
#include <QtGui/QTextList>

$prototype=QTextBlock ( const QTextBlock & other )
$constructor=|new|const QTextBlock &

$deleteMethod

$prototypeV2=QTextBlockFormat blockFormat() const

$prototypeV2=int blockFormatIndex() const

$prototypeV2=int blockNumber() const

$prototypeV2=QTextCharFormat charFormat() const

$prototypeV2=int charFormatIndex() const

$prototypeV2=void clearLayout()

$prototypeV2=bool contains( int position ) const

$prototypeV2=const QTextDocument * document() const

$prototypeV2=int firstLineNumber() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isVisible() const

$prototypeV2=QTextLayout * layout() const

$prototypeV2=int length() const

$prototypeV2=int lineCount() const

$prototypeV2=QTextBlock next() const

$prototypeV2=int position() const

$prototypeV2=QTextBlock previous() const

$prototypeV2=int revision() const

$prototypeV2=void setLineCount( int count )

$prototypeV2=void setRevision( int rev )

$prototypeV2=void setUserData( QTextBlockUserData * data )

$prototypeV2=void setUserState( int state )

$prototypeV2=void setVisible( bool visible )

$prototypeV2=QString text() const

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototypeV2=QTextList * textList() const

$prototypeV2=QTextBlockUserData * userData() const

$prototypeV2=int userState() const

$extraMethods

#pragma ENDDUMP
