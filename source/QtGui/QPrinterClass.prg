/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QPRINTENGINE
REQUEST QPAINTENGINE
#endif

CLASS QPrinter INHERIT QPaintDevice

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QPrinter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPrinter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QList>

/*
QPrinter ( PrinterMode mode = ScreenResolution )
*/
HB_FUNC_STATIC( QPRINTER_NEW1 )
{
  QPrinter * o = NULL;
  int par1 = ISNIL(1)? (int) QPrinter::ScreenResolution : hb_parni(1);
  o = new QPrinter (  (QPrinter::PrinterMode) par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/
HB_FUNC_STATIC( QPRINTER_NEW2 )
{
  QPrinter * o = NULL;
  QPrinterInfo * par1 = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QPrinter::ScreenResolution : hb_parni(2);
  o = new QPrinter ( *par1,  (QPrinter::PrinterMode) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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

HB_FUNC_STATIC( QPRINTER_DELETE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool abort ()
*/
HB_FUNC_STATIC( QPRINTER_ABORT )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->abort () );
  }
}


/*
bool collateCopies () const
*/
HB_FUNC_STATIC( QPRINTER_COLLATECOPIES )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->collateCopies () );
  }
}


/*
ColorMode colorMode () const
*/
HB_FUNC_STATIC( QPRINTER_COLORMODE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->colorMode () );
  }
}


/*
int copyCount () const
*/
HB_FUNC_STATIC( QPRINTER_COPYCOUNT )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->copyCount () );
  }
}


/*
QString creator () const
*/
HB_FUNC_STATIC( QPRINTER_CREATOR )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->creator ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString docName () const
*/
HB_FUNC_STATIC( QPRINTER_DOCNAME )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->docName ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
bool doubleSidedPrinting () const
*/
HB_FUNC_STATIC( QPRINTER_DOUBLESIDEDPRINTING )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->doubleSidedPrinting () );
  }
}


/*
DuplexMode duplex () const
*/
HB_FUNC_STATIC( QPRINTER_DUPLEX )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->duplex () );
  }
}


/*
bool fontEmbeddingEnabled () const
*/
HB_FUNC_STATIC( QPRINTER_FONTEMBEDDINGENABLED )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->fontEmbeddingEnabled () );
  }
}


/*
int fromPage () const
*/
HB_FUNC_STATIC( QPRINTER_FROMPAGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->fromPage () );
  }
}


/*
bool fullPage () const
*/
HB_FUNC_STATIC( QPRINTER_FULLPAGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->fullPage () );
  }
}



/*
bool isValid () const
*/
HB_FUNC_STATIC( QPRINTER_ISVALID )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
bool newPage ()
*/
HB_FUNC_STATIC( QPRINTER_NEWPAGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->newPage () );
  }
}


/*
Orientation orientation () const
*/
HB_FUNC_STATIC( QPRINTER_ORIENTATION )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->orientation () );
  }
}


/*
QString outputFileName () const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFILENAME )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->outputFileName ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
OutputFormat outputFormat () const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFORMAT )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->outputFormat () );
  }
}


/*
PageOrder pageOrder () const
*/
HB_FUNC_STATIC( QPRINTER_PAGEORDER )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pageOrder () );
  }
}


/*
QRect pageRect () const
*/
HB_FUNC_STATIC( QPRINTER_PAGERECT1 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->pageRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF pageRect ( Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_PAGERECT2 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QRectF * ptr = new QRectF( obj->pageRect (  (QPrinter::Unit) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


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
}

/*
QRect paperRect () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERRECT1 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->paperRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF paperRect ( Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_PAPERRECT2 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QRectF * ptr = new QRectF( obj->paperRect (  (QPrinter::Unit) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


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
}

/*
PaperSize paperSize () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSIZE1 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->paperSize () );
  }
}


/*
QSizeF paperSize ( Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSIZE2 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF * ptr = new QSizeF( obj->paperSize (  (QPrinter::Unit) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


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
}

/*
PaperSource paperSource () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSOURCE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->paperSource () );
  }
}


/*
QPrintEngine * printEngine () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTENGINE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrintEngine * ptr = obj->printEngine ();
    _qt4xhb_createReturnClass ( ptr, "QPRINTENGINE" );
  }
}


/*
QString printProgram () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTPROGRAM )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->printProgram ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
PrintRange printRange () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTRANGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->printRange () );
  }
}


/*
QString printerName () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERNAME )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->printerName ();
    hb_retc( RQSTRING(str1) );
  }
}



/*
PrinterState printerState () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERSTATE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->printerState () );
  }
}


/*
int resolution () const
*/
HB_FUNC_STATIC( QPRINTER_RESOLUTION )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->resolution () );
  }
}


/*
void setCollateCopies ( bool collate )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLLATECOPIES )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCollateCopies ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColorMode ( ColorMode newColorMode )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLORMODE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setColorMode (  (QPrinter::ColorMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCopyCount ( int count )
*/
HB_FUNC_STATIC( QPRINTER_SETCOPYCOUNT )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCopyCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCreator ( const QString & creator )
*/
HB_FUNC_STATIC( QPRINTER_SETCREATOR )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCreator ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocName ( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETDOCNAME )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDocName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleSidedPrinting ( bool doubleSided )
*/
HB_FUNC_STATIC( QPRINTER_SETDOUBLESIDEDPRINTING )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleSidedPrinting ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDuplex ( DuplexMode duplex )
*/
HB_FUNC_STATIC( QPRINTER_SETDUPLEX )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDuplex (  (QPrinter::DuplexMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontEmbeddingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPRINTER_SETFONTEMBEDDINGENABLED )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontEmbeddingEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFromTo ( int from, int to )
*/
HB_FUNC_STATIC( QPRINTER_SETFROMTO )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setFromTo ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFullPage ( bool fp )
*/
HB_FUNC_STATIC( QPRINTER_SETFULLPAGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFullPage ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTER_SETORIENTATION )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (QPrinter::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOutputFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFILENAME )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOutputFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOutputFormat ( OutputFormat format )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFORMAT )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOutputFormat (  (QPrinter::OutputFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEMARGINS )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par5 = hb_parni(5);
    obj->setPageMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4),  (QPrinter::Unit) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageOrder ( PageOrder pageOrder )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEORDER )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageOrder (  (QPrinter::PageOrder) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaperSize ( PaperSize newPaperSize )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE1 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPaperSize (  (QPrinter::PaperSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE2 )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setPaperSize ( *par1,  (QPrinter::Unit) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
}

/*
void setPaperSource ( PaperSource source )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSOURCE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPaperSource (  (QPrinter::PaperSource) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrintProgram ( const QString & printProg )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTPROGRAM )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrintProgram ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrintRange ( PrintRange range )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTRANGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrintRange (  (QPrinter::PrintRange) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrinterName ( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTERNAME )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrinterName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setResolution ( int dpi )
*/
HB_FUNC_STATIC( QPRINTER_SETRESOLUTION )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResolution ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWinPageSize ( int pageSize )
*/
HB_FUNC_STATIC( QPRINTER_SETWINPAGESIZE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWinPageSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QPRINTER_SUPPORTSMULTIPLECOPIES )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->supportsMultipleCopies () );
  }
}


/*
int toPage () const
*/
HB_FUNC_STATIC( QPRINTER_TOPAGE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->toPage () );
  }
}


/*
int winPageSize () const
*/
HB_FUNC_STATIC( QPRINTER_WINPAGESIZE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->winPageSize () );
  }
}


/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QPRINTER_PAINTENGINE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}





#pragma ENDDUMP
