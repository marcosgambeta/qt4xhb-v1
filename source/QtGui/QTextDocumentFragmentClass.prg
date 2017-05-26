/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
  QTextDocumentFragment * o = NULL;
  o = new QTextDocumentFragment ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QTextDocumentFragment ( const QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW2 )
{
  QTextDocumentFragment * o = NULL;
  const QTextDocument * par1 = (const QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextDocumentFragment ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QTextDocumentFragment ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW3 )
{
  QTextDocumentFragment * o = NULL;
  QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextDocumentFragment ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QTextDocumentFragment ( const QTextDocumentFragment & other )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW4 )
{
  QTextDocumentFragment * o = NULL;
  QTextDocumentFragment * par1 = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextDocumentFragment ( *par1 );
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
    hb_retl( obj->isEmpty () );
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
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->toHtml ( *par1 );
    hb_retc( RQSTRING(str1) );
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
    QString str1 = obj->toHtml ();
    hb_retc( RQSTRING(str1) );
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
    QString str1 = obj->toPlainText ();
    hb_retc( RQSTRING(str1) );
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


HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
