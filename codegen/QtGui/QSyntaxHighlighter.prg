%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
#endif

CLASS QSyntaxHighlighter INHERIT QObject

   METHOD delete
   METHOD document
   METHOD setDocument
   METHOD rehighlight
   METHOD rehighlightBlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSyntaxHighlighter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextDocument>

//[1]QSyntaxHighlighter ( QObject * parent )
//[2]QSyntaxHighlighter ( QTextDocument * parent )
//[3]QSyntaxHighlighter ( QTextEdit * parent )

//HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
//{
//  if( ISNUMPAR(1) && ISQOBJECT(1) )
//  {
//    HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW1 );
//    //HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW2 ); // TODO: implementar
//    //HB_FUNC_EXEC(QSYNTAXHIGHLIGHTER_NEW3 ); // TODO: implementar
//  }
//}

$deleteMethod

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=void setDocument ( QTextDocument * doc )
$method=|void|setDocument|QTextDocument *

$prototype=void rehighlight ()
$method=|void|rehighlight|

$prototype=void rehighlightBlock ( const QTextBlock & block )
$method=|void|rehighlightBlock|const QTextBlock &

#pragma ENDDUMP
