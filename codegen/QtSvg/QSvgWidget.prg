$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSVGRENDERER
REQUEST QSIZE
#endif

CLASS QSvgWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD renderer
   METHOD sizeHint
   METHOD load1
   METHOD load2
   METHOD load
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSvgWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSvgWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSVGWIDGET_NEW1 )
{
  QSvgWidget * o = new QSvgWidget ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSvgWidget ( const QString & file, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSVGWIDGET_NEW2 )
{
  QSvgWidget * o = new QSvgWidget ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QSvgWidget ( QWidget * parent = 0 )
//[2]QSvgWidget ( const QString & file, QWidget * parent = 0 )

HB_FUNC_STATIC( QSVGWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_NEW1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSVGWIDGET_DELETE )
{
  QSvgWidget * obj = (QSvgWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSvgRenderer * renderer () const
*/
HB_FUNC_STATIC( QSVGWIDGET_RENDERER )
{
  QSvgWidget * obj = (QSvgWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSvgRenderer * ptr = obj->renderer ();
    _qt4xhb_createReturnClass ( ptr, "QSVGRENDERER" );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSVGWIDGET_SIZEHINT )
{
  QSvgWidget * obj = (QSvgWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void load ( const QString & file )
*/
HB_FUNC_STATIC( QSVGWIDGET_LOAD1 )
{
  QSvgWidget * obj = (QSvgWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->load ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load ( const QByteArray & contents )
*/
HB_FUNC_STATIC( QSVGWIDGET_LOAD2 )
{
  QSvgWidget * obj = (QSvgWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->load ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load ( const QString & file )
//[2]void load ( const QByteArray & contents )

HB_FUNC_STATIC( QSVGWIDGET_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_LOAD1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_LOAD2 );
  }
}



#pragma ENDDUMP
