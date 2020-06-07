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

$prototype=QTextBlockFormat blockFormat () const
$method=|QTextBlockFormat|blockFormat|

$prototypeV2=int blockFormatIndex() const

$prototypeV2=int blockNumber() const

$prototype=QTextCharFormat charFormat () const
$method=|QTextCharFormat|charFormat|

$prototypeV2=int charFormatIndex() const

$prototype=void clearLayout ()
$method=|void|clearLayout|

$prototype=bool contains ( int position ) const
$method=|bool|contains|int

$prototype=const QTextDocument * document () const
$method=|const QTextDocument *|document|

$prototypeV2=int firstLineNumber() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isVisible() const

$prototype=QTextLayout * layout () const
$method=|QTextLayout *|layout|

$prototypeV2=int length() const

$prototypeV2=int lineCount() const

$prototype=QTextBlock next () const
$method=|QTextBlock|next|

$prototypeV2=int position() const

$prototype=QTextBlock previous () const
$method=|QTextBlock|previous|

$prototypeV2=int revision() const

$prototype=void setLineCount ( int count )
$method=|void|setLineCount|int

$prototype=void setRevision ( int rev )
$method=|void|setRevision|int

$prototype=void setUserData ( QTextBlockUserData * data )
$method=|void|setUserData|QTextBlockUserData *

$prototype=void setUserState ( int state )
$method=|void|setUserState|int

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=QString text () const
$method=|QString|text|

$prototype=Qt::LayoutDirection textDirection () const
$method=|Qt::LayoutDirection|textDirection|

$prototype=QTextList * textList () const
$method=|QTextList *|textList|

$prototype=QTextBlockUserData * userData () const
$method=|QTextBlockUserData *|userData|

$prototypeV2=int userState() const

$extraMethods

#pragma ENDDUMP
