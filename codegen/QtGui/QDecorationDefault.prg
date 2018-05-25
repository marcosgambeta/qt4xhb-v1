%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDecoration

   METHOD new
   METHOD delete
   METHOD paint
   METHOD region

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDecorationDefault ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal )
$virtualMethod=|bool|paint|QPainter *,const QWidget *,int=QDecoration::All,QDecoration::DecorationState=QDecoration::Normal

$prototype=virtual QRegion region ( const QWidget * widget, const QRect & rect, int decorationRegion = All )
$virtualMethod=|QRegion|region|const QWidget *,const QRect &,int=QDecoration::All

#pragma ENDDUMP
