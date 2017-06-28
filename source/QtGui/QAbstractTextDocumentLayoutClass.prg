/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTDOCUMENT
REQUEST QSIZEF
REQUEST QTEXTOBJECTINTERFACE
REQUEST QPAINTDEVICE
#endif

CLASS QAbstractTextDocumentLayout INHERIT QObject

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QAbstractTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractTextDocumentLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QString anchorAt ( const QPointF & position ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_ANCHORAT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->anchorAt ( *PQPOINTF(1) ) );
  }
}

/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->blockBoundingRect ( *PQTEXTBLOCK(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
virtual QSizeF documentSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->documentSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrame * par1 = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->frameBoundingRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QTextObjectInterface * handlerForObject ( int objectType ) const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HANDLERFOROBJECT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextObjectInterface * ptr = obj->handlerForObject ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOBJECTINTERFACE" );
  }
}

/*
virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_HITTEST )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    RINT( obj->hitTest ( *PQPOINTF(1), (Qt::HitTestAccuracy) par2 ) );
  }
}

/*
virtual int pageCount () const = 0
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->pageCount () );
  }
}

/*
QPaintDevice * paintDevice () const
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_PAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice ();
    _qt4xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}

/*
void registerHandler ( int objectType, QObject * component )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_REGISTERHANDLER )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->registerHandler ( PINT(1), PQOBJECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaintDevice ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QABSTRACTTEXTDOCUMENTLAYOUT_SETPAINTDEVICE )
{
  QAbstractTextDocumentLayout * obj = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPaintDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
