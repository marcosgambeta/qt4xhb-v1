%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=qreal bottomMargin () const
$method=|qreal|bottomMargin|

$prototype=int indent () const
$method=|int|indent|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal leftMargin () const
$method=|qreal|leftMargin|

$prototype=qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
$internalMethod=|qreal|lineHeight,lineHeight1|qreal,qreal

$prototype=qreal lineHeight () const
$internalMethod=|qreal|lineHeight,lineHeight2|

//[1]qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
//[2]qreal lineHeight () const

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

$prototype=int lineHeightType () const
$method=|int|lineHeightType|

$prototype=bool nonBreakableLines () const
$method=|bool|nonBreakableLines|

$prototype=PageBreakFlags pageBreakPolicy () const
$method=|QTextFormat::PageBreakFlags|pageBreakPolicy|

$prototype=qreal rightMargin () const
$method=|qreal|rightMargin|

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

$prototype=qreal textIndent () const
$method=|qreal|textIndent|

$prototype=qreal topMargin () const
$method=|qreal|topMargin|

#pragma ENDDUMP
