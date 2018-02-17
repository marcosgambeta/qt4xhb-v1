%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QPRINTENGINE
REQUEST QPAINTENGINE
#endif

CLASS QPrinter INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD collateCopies
   METHOD colorMode
   METHOD copyCount
   METHOD creator
   METHOD docName
   METHOD doubleSidedPrinting
   METHOD duplex
   METHOD fontEmbeddingEnabled
   METHOD fromPage
   METHOD fullPage
   METHOD isValid
   METHOD newPage
   METHOD orientation
   METHOD outputFileName
   METHOD outputFormat
   METHOD pageOrder
   METHOD pageRect
   METHOD paperRect
   METHOD paperSize
   METHOD paperSource
   METHOD printEngine
   METHOD printProgram
   METHOD printRange
   METHOD printerName
   METHOD printerState
   METHOD resolution
   METHOD setCollateCopies
   METHOD setColorMode
   METHOD setCopyCount
   METHOD setCreator
   METHOD setDocName
   METHOD setDoubleSidedPrinting
   METHOD setDuplex
   METHOD setFontEmbeddingEnabled
   METHOD setFromTo
   METHOD setFullPage
   METHOD setOrientation
   METHOD setOutputFileName
   METHOD setOutputFormat
   METHOD setPageMargins
   METHOD setPageOrder
   METHOD setPaperSize
   METHOD setPaperSource
   METHOD setPrintProgram
   METHOD setPrintRange
   METHOD setPrinterName
   METHOD setResolution
   METHOD setWinPageSize
   METHOD supportedPaperSources
   METHOD supportedResolutions
   METHOD supportsMultipleCopies
   METHOD toPage
   METHOD winPageSize
   METHOD paintEngine

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QList>

$prototype=QPrinter ( PrinterMode mode = ScreenResolution )
$internalConstructor=|new1|QPrinter::PrinterMode=QPrinter::ScreenResolution

$prototype=QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
$internalConstructor=|new2|const QPrinterInfo &,QPrinter::PrinterMode=QPrinter::ScreenResolution

//[1]QPrinter ( PrinterMode mode = ScreenResolution )
//[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )

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

$deleteMethod

$prototype=bool abort ()
$method=|bool|abort|

$prototype=bool collateCopies () const
$method=|bool|collateCopies|

$prototype=ColorMode colorMode () const
$method=|QPrinter::ColorMode|colorMode|

$prototype=int copyCount () const
$method=|int|copyCount|

$prototype=QString creator () const
$method=|QString|creator|

$prototype=QString docName () const
$method=|QString|docName|

$prototype=bool doubleSidedPrinting () const
$method=|bool|doubleSidedPrinting|

$prototype=DuplexMode duplex () const
$method=|QPrinter::DuplexMode|duplex|

$prototype=bool fontEmbeddingEnabled () const
$method=|bool|fontEmbeddingEnabled|

$prototype=int fromPage () const
$method=|int|fromPage|

$prototype=bool fullPage () const
$method=|bool|fullPage|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool newPage ()
$method=|bool|newPage|

$prototype=Orientation orientation () const
$method=|QPrinter::Orientation|orientation|

$prototype=QString outputFileName () const
$method=|QString|outputFileName|

$prototype=OutputFormat outputFormat () const
$method=|QPrinter::OutputFormat|outputFormat|

$prototype=PageOrder pageOrder () const
$method=|QPrinter::PageOrder|pageOrder|

$prototype=QRect pageRect () const
$internalMethod=|QRect|pageRect,pageRect1|

$prototype=QRectF pageRect ( Unit unit ) const
$internalMethod=|QRectF|pageRect,pageRect2|QPrinter::Unit

//[1]QRect pageRect () const
//[2]QRectF pageRect ( Unit unit ) const

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

$prototype=QRect paperRect () const
$internalMethod=|QRect|paperRect,paperRect1|

$prototype=QRectF paperRect ( Unit unit ) const
$internalMethod=|QRectF|paperRect,paperRect2|QPrinter::Unit

//[1]QRect paperRect () const
//[2]QRectF paperRect ( Unit unit ) const

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

$prototype=PaperSize paperSize () const
$internalMethod=|QPrinter::PaperSize|paperSize,paperSize1|

$prototype=QSizeF paperSize ( Unit unit ) const
$internalMethod=|QSizeF|paperSize,paperSize2|QPrinter::Unit

//[1]PaperSize paperSize () const
//[2]QSizeF paperSize ( Unit unit ) const

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

$prototype=PaperSource paperSource () const
$method=|QPrinter::PaperSource|paperSource|

$prototype=QPrintEngine * printEngine () const
$method=|QPrintEngine *|printEngine|

$prototype=QString printProgram () const
$method=|QString|printProgram|

$prototype=PrintRange printRange () const
$method=|QPrinter::PrintRange|printRange|

$prototype=QString printerName () const
$method=|QString|printerName|

$prototype=PrinterState printerState () const
$method=|QPrinter::PrinterState|printerState|

$prototype=int resolution () const
$method=|int|resolution|

$prototype=void setCollateCopies ( bool collate )
$method=|void|setCollateCopies|bool

$prototype=void setColorMode ( ColorMode newColorMode )
$method=|void|setColorMode|QPrinter::ColorMode

$prototype=void setCopyCount ( int count )
$method=|void|setCopyCount|int

$prototype=void setCreator ( const QString & creator )
$method=|void|setCreator|const QString &

$prototype=void setDocName ( const QString & name )
$method=|void|setDocName|const QString &

$prototype=void setDoubleSidedPrinting ( bool doubleSided )
$method=|void|setDoubleSidedPrinting|bool

$prototype=void setDuplex ( DuplexMode duplex )
$method=|void|setDuplex|QPrinter::DuplexMode

$prototype=void setFontEmbeddingEnabled ( bool enable )
$method=|void|setFontEmbeddingEnabled|bool

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setFullPage ( bool fp )
$method=|void|setFullPage|bool

$prototype=void setOrientation ( Orientation orientation )
$method=|void|setOrientation|QPrinter::Orientation

$prototype=void setOutputFileName ( const QString & fileName )
$method=|void|setOutputFileName|const QString &

$prototype=void setOutputFormat ( OutputFormat format )
$method=|void|setOutputFormat|QPrinter::OutputFormat

$prototype=void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
$method=|void|setPageMargins|qreal,qreal,qreal,qreal,QPrinter::Unit

$prototype=void setPageOrder ( PageOrder pageOrder )
$method=|void|setPageOrder|QPrinter::PageOrder

$prototype=void setPaperSize ( PaperSize newPaperSize )
$internalMethod=|void|setPaperSize,setPaperSize1|QPrinter::PaperSize

$prototype=void setPaperSize ( const QSizeF & paperSize, Unit unit )
$internalMethod=|void|setPaperSize,setPaperSize2|const QSizeF &,QPrinter::Unit

//[1]void setPaperSize ( PaperSize newPaperSize )
//[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )

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

$prototype=void setPaperSource ( PaperSource source )
$method=|void|setPaperSource|QPrinter::PaperSource

$prototype=void setPrintProgram ( const QString & printProg )
$method=|void|setPrintProgram|const QString &

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QPrinter::PrintRange

$prototype=void setPrinterName ( const QString & name )
$method=|void|setPrinterName|const QString &

$prototype=void setResolution ( int dpi )
$method=|void|setResolution|int

$prototype=void setWinPageSize ( int pageSize )
$method=|void|setWinPageSize|int

$prototype=QList<PaperSource> supportedPaperSources () const
$method=|QList<QPrinter::PaperSource>|supportedPaperSources|

$prototype=QList<int> supportedResolutions () const
$method=|QList<int>|supportedResolutions|

$prototype=bool supportsMultipleCopies () const
$method=|bool|supportsMultipleCopies|

$prototype=int toPage () const
$method=|int|toPage|

$prototype=int winPageSize () const
$method=|int|winPageSize|

$prototype=virtual QPaintEngine * paintEngine () const
$virtualMethod=|QPaintEngine *|paintEngine|

#pragma ENDDUMP
