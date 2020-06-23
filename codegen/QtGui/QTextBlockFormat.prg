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

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBlockFormat ()
$constructor=|new|

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=qreal bottomMargin() const

$prototypeV2=int indent() const

$prototypeV2=bool isValid() const

$prototypeV2=qreal leftMargin() const

$prototype=qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
$internalMethod=|qreal|lineHeight,lineHeight1|qreal,qreal

$prototype=qreal lineHeight () const
$internalMethod=|qreal|lineHeight,lineHeight2|

/*
[1]qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
[2]qreal lineHeight () const
*/

HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextBlockFormat_lineHeight1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextBlockFormat_lineHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=lineHeight

$prototypeV2=int lineHeightType() const

$prototypeV2=bool nonBreakableLines() const

$prototypeV2=QTextFormat::PageBreakFlags pageBreakPolicy() const

$prototypeV2=qreal rightMargin() const

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=void setBottomMargin( qreal margin )

$prototypeV2=void setIndent( int indentation )

$prototypeV2=void setLeftMargin( qreal margin )

$prototypeV2=void setLineHeight( qreal height, int heightType )

$prototypeV2=void setNonBreakableLines( bool b )

$prototypeV2=void setPageBreakPolicy( QTextFormat::PageBreakFlags policy )

$prototypeV2=void setRightMargin( qreal margin )

$prototypeV2=void setTextIndent( qreal indent )

$prototypeV2=void setTopMargin( qreal margin )

$prototypeV2=qreal textIndent() const

$prototypeV2=qreal topMargin() const

#pragma ENDDUMP
