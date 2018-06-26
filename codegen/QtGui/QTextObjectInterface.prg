%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD drawObject
   METHOD intrinsicSize

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void drawObject ( QPainter * painter, const QRectF & rect, QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0
$virtualMethod=|void|drawObject|QPainter *,const QRectF &,QTextDocument *,int,const QTextFormat &

$prototype=virtual QSizeF intrinsicSize ( QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0
$virtualMethod=|QSizeF|intrinsicSize|QTextDocument *,int,const QTextFormat &

$extraMethods

#pragma ENDDUMP
