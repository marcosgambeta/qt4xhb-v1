%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD blockFormat
   METHOD blockFormatIndex
   METHOD blockNumber
   METHOD charFormat
   METHOD charFormatIndex
   METHOD clearLayout
   METHOD contains
   METHOD document
   METHOD firstLineNumber
   METHOD isValid
   METHOD isVisible
   METHOD layout
   METHOD length
   METHOD lineCount
   METHOD next
   METHOD position
   METHOD previous
   METHOD revision
   METHOD setLineCount
   METHOD setRevision
   METHOD setUserData
   METHOD setUserState
   METHOD setVisible
   METHOD text
   METHOD textDirection
   METHOD textList
   METHOD userData
   METHOD userState

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextDocument>
#include <QTextList>

$prototype=QTextBlock ( const QTextBlock & other )
$constructor=|new|const QTextBlock &

$deleteMethod

$prototype=QTextBlockFormat blockFormat () const
$method=|QTextBlockFormat|blockFormat|

$prototype=int blockFormatIndex () const
$method=|int|blockFormatIndex|

$prototype=int blockNumber () const
$method=|int|blockNumber|

$prototype=QTextCharFormat charFormat () const
$method=|QTextCharFormat|charFormat|

$prototype=int charFormatIndex () const
$method=|int|charFormatIndex|

$prototype=void clearLayout ()
$method=|void|clearLayout|

$prototype=bool contains ( int position ) const
$method=|bool|contains|int

$prototype=const QTextDocument * document () const
$method=|const QTextDocument *|document|

$prototype=int firstLineNumber () const
$method=|int|firstLineNumber|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool isVisible () const
$method=|bool|isVisible|

$prototype=QTextLayout * layout () const
$method=|QTextLayout *|layout|

$prototype=int length () const
$method=|int|length|

$prototype=int lineCount () const
$method=|int|lineCount|

$prototype=QTextBlock next () const
$method=|QTextBlock|next|

$prototype=int position () const
$method=|int|position|

$prototype=QTextBlock previous () const
$method=|QTextBlock|previous|

$prototype=int revision () const
$method=|int|revision|

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

$prototype=int userState () const
$method=|int|userState|

$extraMethods

#pragma ENDDUMP
