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

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

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

$prototype=PageBreakFlags pageBreakPolicy () const
$method=|QTextFormat::PageBreakFlags|pageBreakPolicy|

$prototypeV2=qreal rightMargin() const

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setBottomMargin ( qreal margin )
$method=|void|setBottomMargin|qreal

$prototype=void setIndent ( int indentation )
$method=|void|setIndent|int

$prototype=void setLeftMargin ( qreal margin )
$method=|void|setLeftMargin|qreal

$prototype=void setLineHeight ( qreal height, int heightType )
$method=|void|setLineHeight|qreal,int

$prototype=void setNonBreakableLines ( bool b )
$method=|void|setNonBreakableLines|bool

$prototype=void setPageBreakPolicy ( PageBreakFlags policy )
$method=|void|setPageBreakPolicy|QTextFormat::PageBreakFlags

$prototype=void setRightMargin ( qreal margin )
$method=|void|setRightMargin|qreal

$prototype=void setTextIndent ( qreal indent )
$method=|void|setTextIndent|qreal

$prototype=void setTopMargin ( qreal margin )
$method=|void|setTopMargin|qreal

$prototypeV2=qreal textIndent() const

$prototypeV2=qreal topMargin() const

#pragma ENDDUMP
