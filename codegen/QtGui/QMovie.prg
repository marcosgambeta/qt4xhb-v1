$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMovie INHERIT QObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QMovie>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QColor>
#include <QPixmap>

/*
QMovie ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW1 )
{
  QMovie * o = new QMovie ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW2 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QMovie * o = new QMovie ( PQIODEVICE(1), par2, OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW3 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QMovie * o = new QMovie ( PQSTRING(1), par2, OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
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

$deleteMethod

// Public Functions

/*
QColor  backgroundColor () const
*/
HB_FUNC_STATIC( QMOVIE_BACKGROUNDCOLOR )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor () );
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
    hb_retni( (int) obj->cacheMode () );
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
    RINT( obj->currentFrameNumber () );
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
    QImage * ptr = new QImage( obj->currentImage () );
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
    QPixmap * ptr = new QPixmap( obj->currentPixmap () );
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
    QIODevice * ptr = obj->device ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QByteArray  format () const
*/
HB_FUNC_STATIC( QMOVIE_FORMAT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
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
    RINT( obj->frameCount () );
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
    QRect * ptr = new QRect( obj->frameRect () );
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
    RBOOL( obj->isValid () );
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
    RBOOL( obj->jumpToFrame ( PINT(1) ) );
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
    RINT( obj->loopCount () );
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
    RINT( obj->nextFrameDelay () );
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
    QSize * ptr = new QSize( obj->scaledSize () );
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
    obj->setCacheMode ( (QMovie::CacheMode) par1 );
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
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void  setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void  setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QMOVIE_SETFORMAT )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFormat ( *PQBYTEARRAY(1) );
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
    obj->setScaledSize ( *PQSIZE(1) );
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
    RINT( obj->speed () );
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
    hb_retni( (int) obj->state () );
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
    RBOOL( obj->jumpToNextFrame () );
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
    obj->setPaused ( PBOOL(1) );
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
    obj->setSpeed ( PINT(1) );
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
    obj->start ();
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
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// Static Public Members

/*
QList<QByteArray> supportedFormats ()
*/
HB_FUNC_STATIC( QMOVIE_SUPPORTEDFORMATS )
{
  QList<QByteArray> list = QMovie::supportedFormats ();
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
