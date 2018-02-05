%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QTextObjectInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD drawObject
   METHOD intrinsicSize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextObjectInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual void drawObject ( QPainter * painter, const QRectF & rect, QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0
$virtualMethod=|void|drawObject|QPainter *,const QRectF &,QTextDocument *,int,const QTextFormat &

$prototype=virtual QSizeF intrinsicSize ( QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0
$virtualMethod=|QSizeF|intrinsicSize|QTextDocument *,int,const QTextFormat &

$extraMethods

#pragma ENDDUMP
