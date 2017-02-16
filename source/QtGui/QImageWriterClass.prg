/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QIODEVICE
REQUEST QBYTEARRAY

CLASS QImageWriter

   DATA pointer
   DATA class_id INIT Class_Id_QImageWriter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD canWrite
   METHOD compression
   METHOD device
   METHOD error
   METHOD errorString
   METHOD fileName
   METHOD format
   METHOD gamma
   METHOD quality
   METHOD setCompression
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setGamma
   METHOD setQuality
   METHOD setText
   METHOD supportsOption
   METHOD write
   METHOD supportedImageFormats
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QImageWriter
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QImageWriter
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QImageWriter
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QImageWriter
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QImageWriter
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QImageWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QImageWriter>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QImageWriter ()
*/
HB_FUNC_STATIC( QIMAGEWRITER_NEW1 )
{
  QImageWriter * o = NULL;
  o = new QImageWriter (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QImageWriter ( QIODevice * device, const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEWRITER_NEW2 )
{
  QImageWriter * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray * par2 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QImageWriter ( par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
HB_FUNC_STATIC( QIMAGEWRITER_NEW3 )
{
  QImageWriter * o = NULL;
  QString par1 = hb_parc(1);
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QImageWriter ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageWriter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QImageWriter ()
//[2]QImageWriter ( QIODevice * device, const QByteArray & format )
//[3]QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QIMAGEWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEWRITER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGEWRITER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGEWRITER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QIMAGEWRITER_DELETE )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool canWrite () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_CANWRITE )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->canWrite (  ) );
  }
}


/*
int compression () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_COMPRESSION )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->compression (  );
    hb_retni( i );
  }
}


/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_DEVICE )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
ImageWriterError error () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_ERROR )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_ERRORSTRING )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_FILENAME )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_FORMAT )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
float gamma () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_GAMMA )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    float r = obj->gamma (  );
    hb_retnd( r );
  }
}


/*
int quality () const
*/
HB_FUNC_STATIC( QIMAGEWRITER_QUALITY )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->quality (  );
    hb_retni( i );
  }
}


/*
void setCompression ( int compression )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETCOMPRESSION )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCompression ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETDEVICE )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETFILENAME )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETFORMAT )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGamma ( float gamma )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETGAMMA )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setGamma ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuality ( int quality )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETQUALITY )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQuality ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & key, const QString & text )
*/
HB_FUNC_STATIC( QIMAGEWRITER_SETTEXT )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    obj->setText ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEWRITER_SUPPORTSOPTION )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->supportsOption (  (QImageIOHandler::ImageOption) par1 ) );
  }
}


/*
bool write ( const QImage & image )
*/
HB_FUNC_STATIC( QIMAGEWRITER_WRITE )
{
  QImageWriter * obj = (QImageWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->write ( *par1 ) );
  }
}



/*
QList<QByteArray> supportedImageFormats ()
*/
HB_FUNC_STATIC( QIMAGEWRITER_SUPPORTEDIMAGEFORMATS )
{
  QList<QByteArray> list = QImageWriter::supportedImageFormats (  );
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




#pragma ENDDUMP
