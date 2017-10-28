$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QTEXTOPTION
#endif

CLASS QStaticText

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*
QStaticText ()
*/
$constructor=|new1|

/*
QStaticText ( const QString & text )
*/
$constructor=|new2|const QString &

/*
QStaticText ( const QStaticText & other )
*/
$constructor=|new3|const QStaticText &

//[1]QStaticText ()
//[2]QStaticText ( const QString & text )
//[3]QStaticText ( const QStaticText & other )

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
PerformanceHint performanceHint () const
*/
$method=|QStaticText::PerformanceHint|performanceHint|

/*
void prepare ( const QTransform & matrix = QTransform(), const QFont & font = QFont() )
*/
$method=|void|prepare|const QTransform &=QTransform(),const QFont &=QFont()

/*
void setPerformanceHint ( PerformanceHint performanceHint )
*/
$method=|void|setPerformanceHint|QStaticText::PerformanceHint

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setTextFormat ( Qt::TextFormat textFormat )
*/
$method=|void|setTextFormat|Qt::TextFormat

/*
void setTextOption ( const QTextOption & textOption )
*/
$method=|void|setTextOption|const QTextOption &

/*
void setTextWidth ( qreal textWidth )
*/
$method=|void|setTextWidth|qreal

/*
QSizeF size () const
*/
$method=|QSizeF|size|

/*
QString text () const
*/
$method=|QString|text|

/*
Qt::TextFormat textFormat () const
*/
$method=|Qt::TextFormat|textFormat|

/*
QTextOption textOption () const
*/
$method=|QTextOption|textOption|

/*
qreal textWidth () const
*/
$method=|qreal|textWidth|

$extraMethods

#pragma ENDDUMP
