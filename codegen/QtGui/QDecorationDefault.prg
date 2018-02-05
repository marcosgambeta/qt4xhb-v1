%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecorationDefault INHERIT QDecoration

   METHOD new
   METHOD delete
   METHOD paint
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDecorationDefault>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDecorationDefault ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal )
$virtualMethod=|bool|paint|QPainter *,const QWidget *,int=QDecoration::All,QDecoration::DecorationState=QDecoration::Normal

$prototype=virtual QRegion region ( const QWidget * widget, const QRect & rect, int decorationRegion = All )
$virtualMethod=|QRegion|region|const QWidget *,const QRect &,int=QDecoration::All

#pragma ENDDUMP
