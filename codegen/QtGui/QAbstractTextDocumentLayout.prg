$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTDOCUMENT
REQUEST QSIZEF
REQUEST QTEXTOBJECTINTERFACE
REQUEST QPAINTDEVICE
#endif

CLASS QAbstractTextDocumentLayout INHERIT QObject

   METHOD anchorAt
   METHOD blockBoundingRect
   METHOD document
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD handlerForObject
   METHOD hitTest
   METHOD pageCount
   METHOD paintDevice
   METHOD registerHandler
   METHOD setPaintDevice

   METHOD onDocumentSizeChanged
   METHOD onPageCountChanged
   METHOD onUpdate
   METHOD onUpdateBlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractTextDocumentLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QString anchorAt ( const QPointF & position ) const
*/
$method=|QString|anchorAt|const QPointF &

/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
*/
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

/*
QTextDocument * document () const
*/
$method=|QTextDocument *|document|

/*
virtual QSizeF documentSize () const = 0
*/
$virtualMethod=|QSizeF|documentSize|

/*
virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
*/
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

/*
QTextObjectInterface * handlerForObject ( int objectType ) const
*/
$method=|QTextObjectInterface *|handlerForObject|int

/*
virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
*/
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

/*
virtual int pageCount () const = 0
*/
$virtualMethod=|int|pageCount|

/*
QPaintDevice * paintDevice () const
*/
$method=|QPaintDevice *|paintDevice|

/*
void registerHandler ( int objectType, QObject * component )
*/
$method=|void|registerHandler|int,QObject *

/*
void setPaintDevice ( QPaintDevice * device )
*/
$method=|void|setPaintDevice|QPaintDevice *

#pragma ENDDUMP
