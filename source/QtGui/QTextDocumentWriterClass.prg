/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QTextDocumentWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD codec
   METHOD device
   METHOD fileName
   METHOD format
   METHOD setCodec
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD write1
   METHOD write2
   METHOD write
   METHOD supportedDocumentFormats

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDocumentWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextDocumentWriter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QList>

/*
QTextDocumentWriter ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW1 )
{
  QTextDocumentWriter * o = new QTextDocumentWriter ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextDocumentWriter ( QIODevice * device, const QByteArray & format )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW2 )
{
  QTextDocumentWriter * o = new QTextDocumentWriter ( PQIODEVICE(1), *PQBYTEARRAY(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextDocumentWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW3 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTextDocumentWriter * o = new QTextDocumentWriter ( PQSTRING(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTextDocumentWriter ()
//[2]QTextDocumentWriter ( QIODevice * device, const QByteArray & format )
//[3]QTextDocumentWriter ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_DELETE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QTextCodec * codec () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_CODEC )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCodec * ptr = obj->codec ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_DEVICE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_FILENAME )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->fileName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray format () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_FORMAT )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setCodec ( QTextCodec * codec )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETCODEC )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCodec ( PQTEXTCODEC(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETDEVICE )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETFILENAME )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETFORMAT )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFormat ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool write ( const QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE1 )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTextDocument * par1 = (const QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->write ( par1 ) );
  }
}

/*
bool write ( const QTextDocumentFragment & fragment )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE2 )
{
  QTextDocumentWriter * obj = (QTextDocumentWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->write ( *PQTEXTDOCUMENTFRAGMENT(1) ) );
  }
}

//[1]bool write ( const QTextDocument * document )
//[2]bool write ( const QTextDocumentFragment & fragment )

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE2 );
  }
}

/*
QList<QByteArray> supportedDocumentFormats ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SUPPORTEDDOCUMENTFORMATS )
{
  QList<QByteArray> list = QTextDocumentWriter::supportedDocumentFormats ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
