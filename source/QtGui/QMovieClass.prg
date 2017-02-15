/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QRECT
REQUEST QSIZE

CLASS QMovie INHERIT QObject

   DATA class_id INIT Class_Id_QMovie
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD backgroundColor
   METHOD cacheMode
   METHOD currentFrameNumber
   METHOD currentImage
   METHOD currentPixmap
   METHOD device
   METHOD fileName
   METHOD format
   METHOD frameCount
   METHOD frameRect
   METHOD isValid
   METHOD jumpToFrame
   METHOD loopCount
   METHOD nextFrameDelay
   METHOD scaledSize
   METHOD setBackgroundColor
   METHOD setCacheMode
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setScaledSize
   METHOD speed
   METHOD state
   METHOD jumpToNextFrame
   METHOD setPaused
   METHOD setSpeed
   METHOD start
   METHOD stop
   METHOD supportedFormats
   METHOD onError
   METHOD onFinished
   METHOD onFrameChanged
   METHOD onResized
   METHOD onStarted
   METHOD onStateChanged
   METHOD onUpdated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMovie
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMovie>

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

#include <QColor>
#include <QPixmap>

/*
QMovie ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW1 )
{
  QMovie * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMovie ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMovie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW2 )
{
  QMovie * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMovie ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMovie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW3 )
{
  QMovie * o = NULL;
  QString par1 = hb_parc(1);
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMovie ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMovie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QMovie ( QObject * parent = 0 )
//[2]QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
//[3]QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )

HB_FUNC_STATIC( QMOVIE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOVIE_DELETE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


// Public Functions

/*
QColor  backgroundColor () const
*/
HB_FUNC_STATIC( QMOVIE_BACKGROUNDCOLOR )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
CacheMode  cacheMode () const
*/
HB_FUNC_STATIC( QMOVIE_CACHEMODE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->cacheMode (  );
    hb_retni( i );
  }
}


/*
int  currentFrameNumber () const
*/
HB_FUNC_STATIC( QMOVIE_CURRENTFRAMENUMBER )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentFrameNumber (  );
    hb_retni( i );
  }
}


/*
QImage  currentImage () const
*/
HB_FUNC_STATIC( QMOVIE_CURRENTIMAGE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->currentImage (  ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
QPixmap  currentPixmap () const
*/
HB_FUNC_STATIC( QMOVIE_CURRENTPIXMAP )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->currentPixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QIODevice *  device () const
*/
HB_FUNC_STATIC( QMOVIE_DEVICE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
QString  fileName () const
*/
HB_FUNC_STATIC( QMOVIE_FILENAME )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QByteArray  format () const
*/
HB_FUNC_STATIC( QMOVIE_FORMAT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int  frameCount () const
*/
HB_FUNC_STATIC( QMOVIE_FRAMECOUNT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->frameCount (  );
    hb_retni( i );
  }
}


/*
QRect  frameRect () const
*/
HB_FUNC_STATIC( QMOVIE_FRAMERECT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool  isValid () const
*/
HB_FUNC_STATIC( QMOVIE_ISVALID )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
bool  jumpToFrame ( int frameNumber )
*/
HB_FUNC_STATIC( QMOVIE_JUMPTOFRAME )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->jumpToFrame ( par1 );
    hb_retl( b );
  }
}


/*
int  loopCount () const
*/
HB_FUNC_STATIC( QMOVIE_LOOPCOUNT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->loopCount (  );
    hb_retni( i );
  }
}


/*
int  nextFrameDelay () const
*/
HB_FUNC_STATIC( QMOVIE_NEXTFRAMEDELAY )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nextFrameDelay (  );
    hb_retni( i );
  }
}


/*
QSize  scaledSize ()
*/
HB_FUNC_STATIC( QMOVIE_SCALEDSIZE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->scaledSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void  setBackgroundColor ( const QColor & color )
*/
HB_FUNC_STATIC( QMOVIE_SETBACKGROUNDCOLOR )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setBackgroundColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setCacheMode ( CacheMode mode )
*/
HB_FUNC_STATIC( QMOVIE_SETCACHEMODE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCacheMode (  (QMovie::CacheMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QMOVIE_SETDEVICE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QMOVIE_SETFILENAME )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QMOVIE_SETFORMAT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setScaledSize ( const QSize & size )
*/
HB_FUNC_STATIC( QMOVIE_SETSCALEDSIZE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScaledSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int  speed () const
*/
HB_FUNC_STATIC( QMOVIE_SPEED )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->speed (  );
    hb_retni( i );
  }
}


/*
MovieState  state () const
*/
HB_FUNC_STATIC( QMOVIE_STATE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


// Public Slots

/*
bool jumpToNextFrame ()
*/
HB_FUNC_STATIC( QMOVIE_JUMPTONEXTFRAME )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->jumpToNextFrame (  );
    hb_retl( b );
  }
}


/*
void setPaused ( bool paused )
*/
HB_FUNC_STATIC( QMOVIE_SETPAUSED )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setPaused ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpeed ( int percentSpeed )
*/
HB_FUNC_STATIC( QMOVIE_SETSPEED )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSpeed ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ()
*/
HB_FUNC_STATIC( QMOVIE_START )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QMOVIE_STOP )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



// Static Public Members

/*
QList<QByteArray> supportedFormats ()
*/
HB_FUNC_STATIC( QMOVIE_SUPPORTEDFORMATS )
{
  QList<QByteArray> list = QMovie::supportedFormats (  );
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


// Signals




#pragma ENDDUMP
