$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QSIZE
REQUEST QRECT
REQUEST QRECTF
#endif

CLASS QSvgGenerator INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD description
   METHOD fileName
   METHOD outputDevice
   METHOD resolution
   METHOD setDescription
   METHOD setFileName
   METHOD setOutputDevice
   METHOD setResolution
   METHOD setSize
   METHOD setTitle
   METHOD setViewBox1
   METHOD setViewBox2
   METHOD setViewBox
   METHOD size
   METHOD title
   METHOD viewBox
   METHOD viewBoxF
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSvgGenerator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSvgGenerator ()
*/
HB_FUNC_STATIC( QSVGGENERATOR_NEW )
{
  QSvgGenerator * o = new QSvgGenerator ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QString description () const
*/
$method=|QString|description|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QIODevice * outputDevice () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_OUTPUTDEVICE )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->outputDevice ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
int resolution () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_RESOLUTION )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->resolution () );
  }
}

/*
void setDescription ( const QString & description )
*/
$method=|void|setDescription|const QString &

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setOutputDevice ( QIODevice * outputDevice )
*/
$method=|void|setOutputDevice|QIODevice *

/*
void setResolution ( int dpi )
*/
$method=|void|setResolution|int

/*
void setSize ( const QSize & size )
*/
$method=|void|setSize|const QSize &

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
void setViewBox ( const QRect & viewBox )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX1 )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setViewBox ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewBox ( const QRectF & viewBox )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX2 )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setViewBox ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setViewBox ( const QRect & viewBox )
//[2]void setViewBox ( const QRectF & viewBox )

HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QSVGGENERATOR_SETVIEWBOX1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QSVGGENERATOR_SETVIEWBOX2 );
  }
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_SIZE )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString title () const
*/
$method=|QString|title|

/*
QRect viewBox () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_VIEWBOX )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewBox () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF viewBoxF () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_VIEWBOXF )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->viewBoxF () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}




#pragma ENDDUMP
