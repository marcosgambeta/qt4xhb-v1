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

   METHOD new1
   METHOD new2
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
   METHOD pageRect1
   METHOD pageRect2
   METHOD pageRect
   METHOD paperRect1
   METHOD paperRect2
   METHOD paperRect
   METHOD paperSize1
   METHOD paperSize2
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
   METHOD setPaperSize1
   METHOD setPaperSize2
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

#include <QPrinter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QList>

/*
QPrinter ( PrinterMode mode = ScreenResolution )
*/
$constructor=|new1|QPrinter::PrinterMode=QPrinter::ScreenResolution

/*
QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/
$constructor=|new2|const QPrinterInfo &,QPrinter::PrinterMode=QPrinter::ScreenResolution

//[1]QPrinter ( PrinterMode mode = ScreenResolution )
//[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPRINTER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQPRINTERINFO(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPRINTER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool abort ()
*/
$method=|bool|abort|

/*
bool collateCopies () const
*/
$method=|bool|collateCopies|

/*
ColorMode colorMode () const
*/
$method=|QPrinter::ColorMode|colorMode|

/*
int copyCount () const
*/
$method=|int|copyCount|

/*
QString creator () const
*/
$method=|QString|creator|

/*
QString docName () const
*/
$method=|QString|docName|

/*
bool doubleSidedPrinting () const
*/
$method=|bool|doubleSidedPrinting|

/*
DuplexMode duplex () const
*/
$method=|QPrinter::DuplexMode|duplex|

/*
bool fontEmbeddingEnabled () const
*/
$method=|bool|fontEmbeddingEnabled|

/*
int fromPage () const
*/
$method=|int|fromPage|

/*
bool fullPage () const
*/
$method=|bool|fullPage|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool newPage ()
*/
$method=|bool|newPage|

/*
Orientation orientation () const
*/
$method=|QPrinter::Orientation|orientation|

/*
QString outputFileName () const
*/
$method=|QString|outputFileName|

/*
OutputFormat outputFormat () const
*/
$method=|QPrinter::OutputFormat|outputFormat|

/*
PageOrder pageOrder () const
*/
$method=|QPrinter::PageOrder|pageOrder|

/*
QRect pageRect () const
*/
$method=|QRect|pageRect,pageRect1|

/*
QRectF pageRect ( Unit unit ) const
*/
$method=|QRectF|pageRect,pageRect2|QPrinter::Unit

//[1]QRect pageRect () const
//[2]QRectF pageRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTER_PAGERECT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_PAGERECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paperRect () const
*/
$method=|QRect|paperRect,paperRect1|

/*
QRectF paperRect ( Unit unit ) const
*/
$method=|QRectF|paperRect,paperRect2|QPrinter::Unit

//[1]QRect paperRect () const
//[2]QRectF paperRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERRECT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PaperSize paperSize () const
*/
$method=|QPrinter::PaperSize|paperSize,paperSize1|

/*
QSizeF paperSize ( Unit unit ) const
*/
$method=|QSizeF|paperSize,paperSize2|QPrinter::Unit

//[1]PaperSize paperSize () const
//[2]QSizeF paperSize ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERSIZE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PaperSource paperSource () const
*/
$method=|QPrinter::PaperSource|paperSource|

/*
QPrintEngine * printEngine () const
*/
$method=|QPrintEngine *|printEngine|

/*
QString printProgram () const
*/
$method=|QString|printProgram|

/*
PrintRange printRange () const
*/
$method=|QPrinter::PrintRange|printRange|

/*
QString printerName () const
*/
$method=|QString|printerName|

/*
PrinterState printerState () const
*/
$method=|QPrinter::PrinterState|printerState|

/*
int resolution () const
*/
$method=|int|resolution|

/*
void setCollateCopies ( bool collate )
*/
$method=|void|setCollateCopies|bool

/*
void setColorMode ( ColorMode newColorMode )
*/
$method=|void|setColorMode|QPrinter::ColorMode

/*
void setCopyCount ( int count )
*/
$method=|void|setCopyCount|int

/*
void setCreator ( const QString & creator )
*/
$method=|void|setCreator|const QString &

/*
void setDocName ( const QString & name )
*/
$method=|void|setDocName|const QString &

/*
void setDoubleSidedPrinting ( bool doubleSided )
*/
$method=|void|setDoubleSidedPrinting|bool

/*
void setDuplex ( DuplexMode duplex )
*/
$method=|void|setDuplex|QPrinter::DuplexMode

/*
void setFontEmbeddingEnabled ( bool enable )
*/
$method=|void|setFontEmbeddingEnabled|bool

/*
void setFromTo ( int from, int to )
*/
$method=|void|setFromTo|int,int

/*
void setFullPage ( bool fp )
*/
$method=|void|setFullPage|bool

/*
void setOrientation ( Orientation orientation )
*/
$method=|void|setOrientation|QPrinter::Orientation

/*
void setOutputFileName ( const QString & fileName )
*/
$method=|void|setOutputFileName|const QString &

/*
void setOutputFormat ( OutputFormat format )
*/
$method=|void|setOutputFormat|QPrinter::OutputFormat

/*
void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
*/
$method=|void|setPageMargins|qreal,qreal,qreal,qreal,QPrinter::Unit

/*
void setPageOrder ( PageOrder pageOrder )
*/
$method=|void|setPageOrder|QPrinter::PageOrder

/*
void setPaperSize ( PaperSize newPaperSize )
*/
$method=|void|setPaperSize,setPaperSize1|QPrinter::PaperSize

/*
void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/
$method=|void|setPaperSize,setPaperSize2|const QSizeF &,QPrinter::Unit

//[1]void setPaperSize ( PaperSize newPaperSize )
//[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_SETPAPERSIZE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPRINTER_SETPAPERSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPaperSource ( PaperSource source )
*/
$method=|void|setPaperSource|QPrinter::PaperSource

/*
void setPrintProgram ( const QString & printProg )
*/
$method=|void|setPrintProgram|const QString &

/*
void setPrintRange ( PrintRange range )
*/
$method=|void|setPrintRange|QPrinter::PrintRange

/*
void setPrinterName ( const QString & name )
*/
$method=|void|setPrinterName|const QString &

/*
void setResolution ( int dpi )
*/
$method=|void|setResolution|int

/*
void setWinPageSize ( int pageSize )
*/
$method=|void|setWinPageSize|int

/*
QList<PaperSource> supportedPaperSources () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDPAPERSOURCES )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QPrinter::PaperSource> list = obj->supportedPaperSources ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<int> supportedResolutions () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDRESOLUTIONS )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->supportedResolutions ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool supportsMultipleCopies () const
*/
$method=|bool|supportsMultipleCopies|

/*
int toPage () const
*/
$method=|int|toPage|

/*
int winPageSize () const
*/
$method=|int|winPageSize|

/*
virtual QPaintEngine * paintEngine () const
*/
$virtualMethod=|QPaintEngine *|paintEngine|

#pragma ENDDUMP
