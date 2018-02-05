%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QTEXTOPTION
#endif

CLASS QStaticText

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD performanceHint
   METHOD prepare
   METHOD setPerformanceHint
   METHOD setText
   METHOD setTextFormat
   METHOD setTextOption
   METHOD setTextWidth
   METHOD size
   METHOD text
   METHOD textFormat
   METHOD textOption
   METHOD textWidth

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStaticText>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QStaticText ()
$internalConstructor=|new1|

$prototype=QStaticText ( const QString & text )
$internalConstructor=|new2|const QString &

$prototype=QStaticText ( const QStaticText & other )
$internalConstructor=|new3|const QStaticText &

//[1]QStaticText ()
//[2]QStaticText ( const QString & text )
//[3]QStaticText ( const QStaticText & other )

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStaticText_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStaticText_new2();
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    QStaticText_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=PerformanceHint performanceHint () const
$method=|QStaticText::PerformanceHint|performanceHint|

$prototype=void prepare ( const QTransform & matrix = QTransform(), const QFont & font = QFont() )
$method=|void|prepare|const QTransform &=QTransform(),const QFont &=QFont()

$prototype=void setPerformanceHint ( PerformanceHint performanceHint )
$method=|void|setPerformanceHint|QStaticText::PerformanceHint

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextFormat ( Qt::TextFormat textFormat )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setTextOption ( const QTextOption & textOption )
$method=|void|setTextOption|const QTextOption &

$prototype=void setTextWidth ( qreal textWidth )
$method=|void|setTextWidth|qreal

$prototype=QSizeF size () const
$method=|QSizeF|size|

$prototype=QString text () const
$method=|QString|text|

$prototype=Qt::TextFormat textFormat () const
$method=|Qt::TextFormat|textFormat|

$prototype=QTextOption textOption () const
$method=|QTextOption|textOption|

$prototype=qreal textWidth () const
$method=|qreal|textWidth|

$extraMethods

#pragma ENDDUMP
