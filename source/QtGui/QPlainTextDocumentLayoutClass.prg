/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QPlainTextDocumentLayout INHERIT QAbstractTextDocumentLayout

   DATA class_id INIT Class_Id_QPlainTextDocumentLayout
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QPlainTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QPlainTextDocumentLayout * o = NULL;
  QTextDocument * par1 = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPlainTextDocumentLayout ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DELETE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int cursorWidth () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_CURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->cursorWidth (  ) );
  }
}


/*
void ensureBlockLayout ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_ENSUREBLOCKLAYOUT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->ensureBlockLayout ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void requestUpdate ()
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_REQUESTUPDATE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->requestUpdate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursorWidth ( int width )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_SETCURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCursorWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->blockBoundingRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QSizeF documentSize () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->documentSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



/*
virtual QRectF frameBoundingRect ( QTextFrame * ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrame * par1 = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->frameBoundingRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_HITTEST )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    hb_retni( obj->hitTest ( *par1,  (Qt::HitTestAccuracy) par2 ) );
  }
}


/*
virtual int pageCount () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->pageCount (  ) );
  }
}





#pragma ENDDUMP
