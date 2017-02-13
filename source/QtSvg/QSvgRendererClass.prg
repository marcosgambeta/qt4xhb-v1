/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QSIZE
REQUEST QMATRIX
REQUEST QRECT

CLASS QSvgRenderer INHERIT QObject

   DATA class_id INIT Class_Id_QSvgRenderer
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox1
   METHOD setViewBox2
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD render1
   METHOD render2
   METHOD render3
   METHOD render
   METHOD onRepaintNeeded
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSvgRenderer>

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
QSvgRenderer ( QObject * parent = 0 )
*/
HB_FUNC( QSVGRENDERER_NEW1 )
{
  QSvgRenderer * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSvgRenderer ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSvgRenderer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QSvgRenderer ( const QString & filename, QObject * parent = 0 )
*/
HB_FUNC( QSVGRENDERER_NEW2 )
{
  QSvgRenderer * o = NULL;
  QString par1 = hb_parc(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSvgRenderer ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSvgRenderer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
*/
HB_FUNC( QSVGRENDERER_NEW3 )
{
  QSvgRenderer * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSvgRenderer ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSvgRenderer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )
*/
HB_FUNC( QSVGRENDERER_NEW4 )
{
  QSvgRenderer * o = NULL;
  QXmlStreamReader * par1 = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSvgRenderer ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSvgRenderer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QSvgRenderer ( QObject * parent = 0 )
//[2]QSvgRenderer ( const QString & filename, QObject * parent = 0 )
//[3]QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
//[4]QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )

HB_FUNC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSVGRENDERER_DELETE )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool animated () const
*/
HB_FUNC( QSVGRENDERER_ANIMATED )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->animated (  );
    hb_retl( b );
  }
}


/*
QRectF boundsOnElement ( const QString & id ) const
*/
HB_FUNC( QSVGRENDERER_BOUNDSONELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QRectF * ptr = new QRectF( obj->boundsOnElement ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );  }
}


/*
QSize defaultSize () const
*/
HB_FUNC( QSVGRENDERER_DEFAULTSIZE )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->defaultSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
bool elementExists ( const QString & id ) const
*/
HB_FUNC( QSVGRENDERER_ELEMENTEXISTS )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->elementExists ( par1 );
    hb_retl( b );
  }
}


/*
int framesPerSecond () const
*/
HB_FUNC( QSVGRENDERER_FRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->framesPerSecond (  );
    hb_retni( i );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QSVGRENDERER_ISVALID )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
QMatrix matrixForElement ( const QString & id ) const
*/
HB_FUNC( QSVGRENDERER_MATRIXFORELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QMatrix * ptr = new QMatrix( obj->matrixForElement ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX" );  }
}


/*
void setFramesPerSecond ( int num )
*/
HB_FUNC( QSVGRENDERER_SETFRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFramesPerSecond ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewBox ( const QRect & viewbox )
*/
HB_FUNC( QSVGRENDERER_SETVIEWBOX1 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setViewBox ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewBox ( const QRectF & viewbox )
*/
HB_FUNC( QSVGRENDERER_SETVIEWBOX2 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setViewBox ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setViewBox ( const QRect & viewbox )
//[2]void setViewBox ( const QRectF & viewbox )

HB_FUNC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_SETVIEWBOX1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_SETVIEWBOX2 );
  }
}

/*
QRect viewBox () const
*/
HB_FUNC( QSVGRENDERER_VIEWBOX )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewBox (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
QRectF viewBoxF () const
*/
HB_FUNC( QSVGRENDERER_VIEWBOXF )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->viewBoxF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );  }
}


/*
bool load ( const QString & filename )
*/
HB_FUNC( QSVGRENDERER_LOAD1 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->load ( par1 );
    hb_retl( b );
  }
}


/*
bool load ( const QByteArray & contents )
*/
HB_FUNC( QSVGRENDERER_LOAD2 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->load ( *par1 );
    hb_retl( b );
  }
}


/*
bool load ( QXmlStreamReader * contents )
*/
HB_FUNC( QSVGRENDERER_LOAD3 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamReader * par1 = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->load ( par1 );
    hb_retl( b );
  }
}


//[1]bool load ( const QString & filename )
//[2]bool load ( const QByteArray & contents )
//[3]bool load ( QXmlStreamReader * contents )

HB_FUNC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_LOAD1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_LOAD2 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_LOAD3 );
  }
}

/*
void render ( QPainter * painter )
*/
HB_FUNC( QSVGRENDERER_RENDER1 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, const QRectF & bounds )
*/
HB_FUNC( QSVGRENDERER_RENDER2 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * par2 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
*/
HB_FUNC( QSVGRENDERER_RENDER3 )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QRectF par3 = ISNIL(3)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRectF & bounds )
//[3]void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )

HB_FUNC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_RENDER1 );
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_RENDER2 );
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISCHAR(2) && (ISQRECTF(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSVGRENDERER_RENDER3 );
  }
}




#pragma ENDDUMP
