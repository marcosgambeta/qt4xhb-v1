%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

%% TODO: class under condition
%% #ifndef QT_NO_PRINTER
%% #endif // QT_NO_PRINTER

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>

$prototype=QPrinter ( PrinterMode mode = ScreenResolution )
$internalConstructor=|new1|QPrinter::PrinterMode=QPrinter::ScreenResolution

$prototype=QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
$internalConstructor=|new2|const QPrinterInfo &,QPrinter::PrinterMode=QPrinter::ScreenResolution

/*
[1]QPrinter ( PrinterMode mode = ScreenResolution )
[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QPrinter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPRINTERINFO(1) && ISNUM(2) )
  {
    QPrinter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool abort()

$prototypeV2=bool collateCopies() const

$prototypeV2=QPrinter::ColorMode colorMode() const

$prototypeV2=int copyCount() const

$prototypeV2=QString creator() const

$prototypeV2=QString docName() const

$prototypeV2=bool doubleSidedPrinting() const

$prototypeV2=QPrinter::DuplexMode duplex() const

$prototypeV2=bool fontEmbeddingEnabled() const

$prototypeV2=int fromPage() const

$prototypeV2=bool fullPage() const

$prototypeV2=bool isValid() const

$prototypeV2=bool newPage()

$prototypeV2=QPrinter::Orientation orientation() const

$prototypeV2=QString outputFileName() const

$prototypeV2=QPrinter::OutputFormat outputFormat() const

$prototypeV2=QPrinter::PageOrder pageOrder() const

$prototype=QRect pageRect () const
$internalMethod=|QRect|pageRect,pageRect1|

$prototype=QRectF pageRect ( Unit unit ) const
$internalMethod=|QRectF|pageRect,pageRect2|QPrinter::Unit

/*
[1]QRect pageRect () const
[2]QRectF pageRect ( Unit unit ) const
*/

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_pageRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_pageRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=pageRect

$prototype=QRect paperRect () const
$internalMethod=|QRect|paperRect,paperRect1|

$prototype=QRectF paperRect ( Unit unit ) const
$internalMethod=|QRectF|paperRect,paperRect2|QPrinter::Unit

/*
[1]QRect paperRect () const
[2]QRectF paperRect ( Unit unit ) const
*/

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=paperRect

$prototype=PaperSize paperSize () const
$internalMethod=|QPrinter::PaperSize|paperSize,paperSize1|

$prototype=QSizeF paperSize ( Unit unit ) const
$internalMethod=|QSizeF|paperSize,paperSize2|QPrinter::Unit

/*
[1]PaperSize paperSize () const
[2]QSizeF paperSize ( Unit unit ) const
*/

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperSize1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=paperSize

$prototypeV2=QPrinter::PaperSource paperSource() const

$prototypeV2=QPrintEngine * printEngine() const

$prototypeV2=QString printProgram() const

$prototypeV2=QPrinter::PrintRange printRange() const

$prototypeV2=QString printerName() const

$prototypeV2=QPrinter::PrinterState printerState() const

$prototypeV2=int resolution() const

$prototypeV2=void setCollateCopies( bool collate )

$prototypeV2=void setColorMode( QPrinter::ColorMode newColorMode )

$prototypeV2=void setCopyCount( int count )

$prototypeV2=void setCreator( const QString & creator )

$prototypeV2=void setDocName( const QString & name )

$prototypeV2=void setDoubleSidedPrinting( bool doubleSided )

$prototypeV2=void setDuplex( QPrinter::DuplexMode duplex )

$prototypeV2=void setFontEmbeddingEnabled( bool enable )

$prototypeV2=void setFromTo( int from, int to )

$prototypeV2=void setFullPage( bool fp )

$prototypeV2=void setOrientation( QPrinter::Orientation orientation )

$prototypeV2=void setOutputFileName( const QString & fileName )

$prototypeV2=void setOutputFormat( QPrinter::OutputFormat format )

$prototypeV2=void setPageMargins( qreal left, qreal top, qreal right, qreal bottom, QPrinter::Unit unit )

$prototypeV2=void setPageOrder( QPrinter::PageOrder pageOrder )

$prototype=void setPaperSize ( PaperSize newPaperSize )
$internalMethod=|void|setPaperSize,setPaperSize1|QPrinter::PaperSize

$prototype=void setPaperSize ( const QSizeF & paperSize, Unit unit )
$internalMethod=|void|setPaperSize,setPaperSize2|const QSizeF &,QPrinter::Unit

/*
[1]void setPaperSize ( PaperSize newPaperSize )
[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_setPaperSize1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QPrinter_setPaperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPaperSize

$prototypeV2=void setPaperSource( QPrinter::PaperSource source )

$prototypeV2=void setPrintProgram( const QString & printProg )

$prototypeV2=void setPrintRange( QPrinter::PrintRange range )

$prototypeV2=void setPrinterName( const QString & name )

$prototypeV2=void setResolution( int dpi )

$prototype=void setWinPageSize ( int pageSize )
$method=|void|setWinPageSize|int|#ifdef Q_WS_WIN

$prototype=QList<PaperSource> supportedPaperSources () const
$method=|QList<QPrinter::PaperSource>|supportedPaperSources||#ifdef Q_WS_WIN

$prototypeV2=QList<int> supportedResolutions() const

$prototypeV2=bool supportsMultipleCopies() const

$prototypeV2=int toPage() const

$prototype=int winPageSize () const
$method=|int|winPageSize||#ifdef Q_WS_WIN

$prototypeV2=virtual QPaintEngine * paintEngine() const

#pragma ENDDUMP
