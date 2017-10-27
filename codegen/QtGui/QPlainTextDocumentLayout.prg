$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QPlainTextDocumentLayout INHERIT QAbstractTextDocumentLayout

   METHOD new
   METHOD delete
   METHOD cursorWidth
   METHOD ensureBlockLayout
   METHOD requestUpdate
   METHOD setCursorWidth
   METHOD blockBoundingRect
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD hitTest
   METHOD pageCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPlainTextDocumentLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPlainTextDocumentLayout ( QTextDocument * document )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_NEW )
{
  QPlainTextDocumentLayout * o = new QPlainTextDocumentLayout ( PQTEXTDOCUMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int cursorWidth () const
*/
$method=|int|cursorWidth|

/*
void ensureBlockLayout ( const QTextBlock & block ) const
*/
$method=|void|ensureBlockLayout|const QTextBlock &

/*
void requestUpdate ()
*/
$method=|void|requestUpdate|

/*
void setCursorWidth ( int width )
*/
$method=|void|setCursorWidth|int

/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
*/
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

/*
virtual QSizeF documentSize () const
*/
$virtualMethod=|QSizeF|documentSize|

/*
virtual QRectF frameBoundingRect ( QTextFrame * ) const
*/
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

/*
virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
*/
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

/*
virtual int pageCount () const
*/
$virtualMethod=|int|pageCount|

#pragma ENDDUMP
