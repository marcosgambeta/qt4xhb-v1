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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextDocument>

%% /*
%% [1]QSyntaxHighlighter ( QObject * parent )
%% [2]QSyntaxHighlighter ( QTextDocument * parent )
%% [3]QSyntaxHighlighter ( QTextEdit * parent )
%% */

%% //HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
%% //{
%% //  if( ISNUMPAR(1) && ISQOBJECT(1) )
%% //  {
%% //    HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW1 );
%% //    //HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW2 ); // TODO: implementar
%% //    //HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW3 ); // TODO: implementar
%% //  }
%% //}

$deleteMethod

$prototypeV2=QTextDocument * document() const

$prototypeV2=void setDocument( QTextDocument * doc )

$prototypeV2=void rehighlight()

$prototypeV2=void rehighlightBlock( const QTextBlock & block )

#pragma ENDDUMP
