$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENTFRAGMENT
#endif

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toHtml1
   METHOD toHtml2
   METHOD toHtml
   METHOD toPlainText
   METHOD fromHtml1
   METHOD fromHtml2
   METHOD fromHtml
   METHOD fromPlainText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextDocumentFragment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextDocumentFragment ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW1 )
{
  QTextDocumentFragment * o = new QTextDocumentFragment ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextDocumentFragment ( const QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW2 )
{
  const QTextDocument * par1 = (const QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTextDocumentFragment * o = new QTextDocumentFragment ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextDocumentFragment ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW3 )
{
  QTextDocumentFragment * o = new QTextDocumentFragment ( *PQTEXTCURSOR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextDocumentFragment ( const QTextDocumentFragment & other )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW4 )
{
  QTextDocumentFragment * o = new QTextDocumentFragment ( *PQTEXTDOCUMENTFRAGMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QTextDocumentFragment ()
//[2]QTextDocumentFragment ( const QTextDocument * document )
//[3]QTextDocumentFragment ( const QTextCursor & cursor )
//[4]QTextDocumentFragment ( const QTextDocumentFragment & other )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_DELETE )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isEmpty () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
QString toHtml ( const QByteArray & encoding ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML1 )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toHtml ( *PQBYTEARRAY(1) ) );
  }
}

/*
QString toHtml () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML2 )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toHtml () );
  }
}

//[1]QString toHtml ( const QByteArray & encoding ) const
//[2]QString toHtml () const

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_TOHTML1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_TOHTML2 );
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toPlainText () );
  }
}

/*
QTextDocumentFragment fromHtml ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML1 )
{
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}

/*
QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML2 )
{
  const QTextDocument * par2 = (const QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( PQSTRING(1), par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}

//[1]QTextDocumentFragment fromHtml ( const QString & text )
//[2]QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_FROMHTML1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_FROMHTML2 );
  }
}

/*
QTextDocumentFragment fromPlainText ( const QString & plainText )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}

$extraMethods

#pragma ENDDUMP
