%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFormat

   METHOD new
   METHOD delete
   METHOD border
   METHOD borderBrush
   METHOD borderStyle
   METHOD bottomMargin
   METHOD height
   METHOD isValid
   METHOD leftMargin
   METHOD margin
   METHOD padding
   METHOD pageBreakPolicy
   METHOD position
   METHOD rightMargin
   METHOD setBorder
   METHOD setBorderBrush
   METHOD setBorderStyle
   METHOD setBottomMargin
   METHOD setHeight
   METHOD setLeftMargin
   METHOD setMargin
   METHOD setPadding
   METHOD setPageBreakPolicy
   METHOD setPosition
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setWidth
   METHOD topMargin
   METHOD width

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextFrameFormat ()
$constructor=|new|

$deleteMethod

$prototype=qreal border () const
$method=|qreal|border|

$prototype=QBrush borderBrush () const
$method=|QBrush|borderBrush|

$prototype=BorderStyle borderStyle () const
$method=|QTextFrameFormat::BorderStyle|borderStyle|

$prototype=qreal bottomMargin () const
$method=|qreal|bottomMargin|

$prototype=QTextLength height () const
$method=|QTextLength|height|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal leftMargin () const
$method=|qreal|leftMargin|

$prototype=qreal margin () const
$method=|qreal|margin|

$prototype=qreal padding () const
$method=|qreal|padding|

$prototype=PageBreakFlags pageBreakPolicy () const
$method=|QTextFormat::PageBreakFlags|pageBreakPolicy|

$prototype=Position position () const
$method=|QTextFrameFormat::Position|position|

$prototype=qreal rightMargin () const
$method=|qreal|rightMargin|

$prototype=void setBorder ( qreal width )
$method=|void|setBorder|qreal

$prototype=void setBorderBrush ( const QBrush & brush )
$method=|void|setBorderBrush|const QBrush &

$prototype=void setBorderStyle ( BorderStyle style )
$method=|void|setBorderStyle|QTextFrameFormat::BorderStyle

$prototype=void setBottomMargin ( qreal margin )
$method=|void|setBottomMargin|qreal

$prototype=void setHeight ( const QTextLength & height )
$internalMethod=|void|setHeight,setHeight1|const QTextLength &

$prototype=void setHeight ( qreal height )
$internalMethod=|void|setHeight,setHeight2|qreal

//[1]void setHeight ( const QTextLength & height )
//[2]void setHeight ( qreal height )

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT )
{
  if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setHeight1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setLeftMargin ( qreal margin )
$method=|void|setLeftMargin|qreal

$prototype=void setMargin ( qreal margin )
$method=|void|setMargin|qreal

$prototype=void setPadding ( qreal width )
$method=|void|setPadding|qreal

$prototype=void setPageBreakPolicy ( PageBreakFlags policy )
$method=|void|setPageBreakPolicy|QTextFormat::PageBreakFlags

$prototype=void setPosition ( Position policy )
$method=|void|setPosition|QTextFrameFormat::Position

$prototype=void setRightMargin ( qreal margin )
$method=|void|setRightMargin|qreal

$prototype=void setTopMargin ( qreal margin )
$method=|void|setTopMargin|qreal

$prototype=void setWidth ( const QTextLength & width )
$internalMethod=|void|setWidth,setWidth1|const QTextLength &

$prototype=void setWidth ( qreal width )
$internalMethod=|void|setWidth,setWidth2|qreal

//[1]void setWidth ( const QTextLength & width )
//[2]void setWidth ( qreal width )

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH )
{
  if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setWidth1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setWidth2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qreal topMargin () const
$method=|qreal|topMargin|

$prototype=QTextLength width () const
$method=|QTextLength|width|

#pragma ENDDUMP
