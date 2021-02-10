/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
REQUEST QURL
REQUEST QVARIANT
REQUEST QWEBELEMENT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QWEBHITTESTRESULT
REQUEST QWEBPAGE
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebFrame INHERIT QObject

   METHOD addToJavaScriptWindowObject
   METHOD baseUrl
   METHOD childFrames
   METHOD contentsSize
   METHOD documentElement
   METHOD findAllElements
   METHOD findFirstElement
   METHOD frameName
   METHOD geometry
   METHOD hasFocus
   METHOD hitTestContent
   METHOD icon
   METHOD load
   METHOD page
   METHOD parentFrame
   METHOD pos
   METHOD render
   METHOD renderTreeDump
   METHOD requestedUrl
   METHOD scroll
   METHOD scrollBarGeometry
   METHOD scrollBarMaximum
   METHOD scrollBarMinimum
   METHOD scrollBarPolicy
   METHOD scrollBarValue
   METHOD scrollPosition
   METHOD scrollToAnchor
   METHOD securityOrigin
   METHOD setContent
   METHOD setFocus
   METHOD setHtml
   METHOD setScrollBarPolicy
   METHOD setScrollBarValue
   METHOD setScrollPosition
   METHOD setTextSizeMultiplier
   METHOD setUrl
   METHOD setZoomFactor
   METHOD textSizeMultiplier
   METHOD title
   METHOD toHtml
   METHOD toPlainText
   METHOD url
   METHOD zoomFactor
   METHOD evaluateJavaScript
   METHOD print

   METHOD onContentsSizeChanged
   METHOD onIconChanged
   METHOD onInitialLayoutCompleted
   METHOD onJavaScriptWindowObjectCleared
   METHOD onLoadFinished
   METHOD onLoadStarted
   METHOD onPageChanged
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtWebKit/QWebFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtWebKit/QWebElement>
#include <QtWebKit/QWebSecurityOrigin>
#include <QtWebKit/QWebPage>

/*
void addToJavaScriptWindowObject( const QString & name, QObject * object )
*/
void QWebFrame_addToJavaScriptWindowObject1()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->addToJavaScriptWindowObject( PQSTRING( 1 ), PQOBJECT( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addToJavaScriptWindowObject( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )
*/
void QWebFrame_addToJavaScriptWindowObject2()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->addToJavaScriptWindowObject( PQSTRING( 1 ), PQOBJECT( 2 ), ( QScriptEngine::ValueOwnership ) hb_parni( 3 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT )
{
  if( ISNUMPAR( 2 ) && ISCHAR( 1 ) && ISQOBJECT( 2 ) )
  {
    QWebFrame_addToJavaScriptWindowObject1();
  }
  else if( ISNUMPAR( 3 ) && ISCHAR( 1 ) && ISQOBJECT( 2 ) && ISNUM( 3 ) )
  {
    QWebFrame_addToJavaScriptWindowObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl baseUrl() const
*/
HB_FUNC_STATIC( QWEBFRAME_BASEURL )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QUrl * ptr = new QUrl( obj->baseUrl() );
      Qt4xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QWebFrame *> childFrames() const
*/
HB_FUNC_STATIC( QWEBFRAME_CHILDFRAMES )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QList<QWebFrame *> list = obj->childFrames();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBFRAME" );
      PHB_ITEM pArray = hb_itemArrayNew( 0 );
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, static_cast< QWebFrame * >( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QWEBFRAME", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSize contentsSize() const
*/
HB_FUNC_STATIC( QWEBFRAME_CONTENTSSIZE )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->contentsSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement documentElement() const
*/
HB_FUNC_STATIC( QWEBFRAME_DOCUMENTELEMENT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->documentElement() );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElementCollection findAllElements( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBFRAME_FINDALLELEMENTS )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QWebElementCollection * ptr = new QWebElementCollection( obj->findAllElements( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENTCOLLECTION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebElement findFirstElement( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBFRAME_FINDFIRSTELEMENT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QWebElement * ptr = new QWebElement( obj->findFirstElement( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QWEBELEMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString frameName() const
*/
HB_FUNC_STATIC( QWEBFRAME_FRAMENAME )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->frameName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QRect geometry() const
*/
HB_FUNC_STATIC( QWEBFRAME_GEOMETRY )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QRect * ptr = new QRect( obj->geometry() );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasFocus() const
*/
HB_FUNC_STATIC( QWEBFRAME_HASFOCUS )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->hasFocus() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebHitTestResult hitTestContent( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWEBFRAME_HITTESTCONTENT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
    {
#endif
      QWebHitTestResult * ptr = new QWebHitTestResult( obj->hitTestContent( *PQPOINT( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QWEBHITTESTRESULT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QIcon icon() const
*/
HB_FUNC_STATIC( QWEBFRAME_ICON )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QIcon * ptr = new QIcon( obj->icon() );
      Qt4xHb::createReturnClass( ptr, "QICON", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void load( const QUrl & url )
*/
void QWebFrame_load1()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->load( *PQURL( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
void QWebFrame_load2()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->load( *PQNETWORKREQUEST( 1 ), ISNIL( 2 ) ? ( QNetworkAccessManager::Operation ) QNetworkAccessManager::GetOperation : ( QNetworkAccessManager::Operation ) hb_parni( 2 ), ISNIL( 3 ) ? QByteArray() : *static_cast< QByteArray * >( Qt4xHb::itemGetPtr( 3 ) ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBFRAME_LOAD )
{
  if( ISNUMPAR( 1 ) && ISQURL( 1 ) )
  {
    QWebFrame_load1();
  }
  else if( ISBETWEEN( 1, 3 ) && ISQNETWORKREQUEST( 1 ) && ( ISNUM( 2 ) || ISNIL( 2 ) ) && ( ISQBYTEARRAY( 3 ) || ISNIL( 3 ) ) )
  {
    QWebFrame_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebPage * page() const
*/
HB_FUNC_STATIC( QWEBFRAME_PAGE )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWebPage * ptr = obj->page();
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBPAGE" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWebFrame * parentFrame() const
*/
HB_FUNC_STATIC( QWEBFRAME_PARENTFRAME )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWebFrame * ptr = obj->parentFrame();
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBFRAME" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPoint pos() const
*/
HB_FUNC_STATIC( QWEBFRAME_POS )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPoint * ptr = new QPoint( obj->pos() );
      Qt4xHb::createReturnClass( ptr, "QPOINT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void render( QPainter * painter )
*/
void QWebFrame_render1()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->render( PQPAINTER( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render( QPainter * painter, const QRegion & clip )
*/
void QWebFrame_render2()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->render( PQPAINTER( 1 ), *PQREGION( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render( QPainter * painter, QWebFrame::RenderLayer layer, const QRegion & clip = QRegion() )
*/
void QWebFrame_render3()
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->render( PQPAINTER( 1 ), ( QWebFrame::RenderLayer ) hb_parni( 2 ), ISNIL( 3 ) ? QRegion() : *static_cast< QRegion * >( Qt4xHb::itemGetPtr( 3 ) ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBFRAME_RENDER )
{
  if( ISNUMPAR( 1 ) && ISQPAINTER( 1 ) )
  {
    QWebFrame_render1();
  }
  else if( ISNUMPAR( 2 ) && ISQPAINTER( 1 ) && ISQREGION( 2 ) )
  {
    QWebFrame_render2();
  }
  else if( ISBETWEEN( 2, 3 ) && ISQPAINTER( 1 ) && ISNUM( 2 ) && ( ISQREGION( 3 ) || ISNIL( 3 ) ) )
  {
    QWebFrame_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString renderTreeDump() const
*/
HB_FUNC_STATIC( QWEBFRAME_RENDERTREEDUMP )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->renderTreeDump() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QUrl requestedUrl() const
*/
HB_FUNC_STATIC( QWEBFRAME_REQUESTEDURL )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QUrl * ptr = new QUrl( obj->requestedUrl() );
      Qt4xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void scroll( int dx, int dy )
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLL )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
    {
#endif
      obj->scroll( PINT( 1 ), PINT( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect scrollBarGeometry( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARGEOMETRY )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      QRect * ptr = new QRect( obj->scrollBarGeometry( ( Qt::Orientation ) hb_parni( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int scrollBarMaximum( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARMAXIMUM )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RINT( obj->scrollBarMaximum( ( Qt::Orientation ) hb_parni( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int scrollBarMinimum( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARMINIMUM )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RINT( obj->scrollBarMinimum( ( Qt::Orientation ) hb_parni( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::ScrollBarPolicy scrollBarPolicy( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARPOLICY )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RENUM( obj->scrollBarPolicy( ( Qt::Orientation ) hb_parni( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int scrollBarValue( Qt::Orientation orientation ) const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLBARVALUE )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RINT( obj->scrollBarValue( ( Qt::Orientation ) hb_parni( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPoint scrollPosition() const
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLPOSITION )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPoint * ptr = new QPoint( obj->scrollPosition() );
      Qt4xHb::createReturnClass( ptr, "QPOINT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void scrollToAnchor( const QString & anchor )
*/
HB_FUNC_STATIC( QWEBFRAME_SCROLLTOANCHOR )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->scrollToAnchor( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWebSecurityOrigin securityOrigin() const
*/
HB_FUNC_STATIC( QWEBFRAME_SECURITYORIGIN )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->securityOrigin() );
      Qt4xHb::createReturnClass( ptr, "QWEBSECURITYORIGIN", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setContent( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QWEBFRAME_SETCONTENT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 3 ) && ISQBYTEARRAY( 1 ) && ( ISCHAR( 2 ) || ISNIL( 2 ) ) && ( ISQURL( 3 ) || ISNIL( 3 ) ) )
    {
#endif
      obj->setContent( *PQBYTEARRAY( 1 ), OPQSTRING( 2, QString() ), ISNIL( 3 ) ? QUrl() : *static_cast< QUrl * >( Qt4xHb::itemGetPtr( 3 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus()
*/
HB_FUNC_STATIC( QWEBFRAME_SETFOCUS )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setFocus();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHtml( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QWEBFRAME_SETHTML )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && ISCHAR( 1 ) && ( ISQURL( 2 ) || ISNIL( 2 ) ) )
    {
#endif
      obj->setHtml( PQSTRING( 1 ), ISNIL( 2 ) ? QUrl() : *static_cast< QUrl * >( Qt4xHb::itemGetPtr( 2 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScrollBarPolicy( Qt::Orientation orientation, Qt::ScrollBarPolicy policy )
*/
HB_FUNC_STATIC( QWEBFRAME_SETSCROLLBARPOLICY )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
    {
#endif
      obj->setScrollBarPolicy( ( Qt::Orientation ) hb_parni( 1 ), ( Qt::ScrollBarPolicy ) hb_parni( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScrollBarValue( Qt::Orientation orientation, int value )
*/
HB_FUNC_STATIC( QWEBFRAME_SETSCROLLBARVALUE )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
    {
#endif
      obj->setScrollBarValue( ( Qt::Orientation ) hb_parni( 1 ), PINT( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScrollPosition( const QPoint & pos )
*/
HB_FUNC_STATIC( QWEBFRAME_SETSCROLLPOSITION )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
    {
#endif
      obj->setScrollPosition( *PQPOINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextSizeMultiplier( qreal factor )
*/
HB_FUNC_STATIC( QWEBFRAME_SETTEXTSIZEMULTIPLIER )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setTextSizeMultiplier( PQREAL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBFRAME_SETURL )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQURL( 1 ) )
    {
#endif
      obj->setUrl( *PQURL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomFactor( qreal factor )
*/
HB_FUNC_STATIC( QWEBFRAME_SETZOOMFACTOR )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setZoomFactor( PQREAL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal textSizeMultiplier() const
*/
HB_FUNC_STATIC( QWEBFRAME_TEXTSIZEMULTIPLIER )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->textSizeMultiplier() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString title() const
*/
HB_FUNC_STATIC( QWEBFRAME_TITLE )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->title() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString toHtml() const
*/
HB_FUNC_STATIC( QWEBFRAME_TOHTML )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->toHtml() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString toPlainText() const
*/
HB_FUNC_STATIC( QWEBFRAME_TOPLAINTEXT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->toPlainText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBFRAME_URL )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
      Qt4xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QWEBFRAME_ZOOMFACTOR )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->zoomFactor() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant evaluateJavaScript( const QString & scriptSource )
*/
HB_FUNC_STATIC( QWEBFRAME_EVALUATEJAVASCRIPT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QVariant * ptr = new QVariant( obj->evaluateJavaScript( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void print( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QWEBFRAME_PRINT )
{
  QWebFrame * obj = static_cast< QWebFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPRINTER( 1 ) )
    {
#endif
      obj->print( PQPRINTER( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QWebFrameSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWEBFRAME_ONCONTENTSSIZECHANGED )
{
  QWebFrameSlots_connect_signal( "contentsSizeChanged(QSize)", "contentsSizeChanged(QSize)" );
}

HB_FUNC_STATIC( QWEBFRAME_ONICONCHANGED )
{
  QWebFrameSlots_connect_signal( "iconChanged()", "iconChanged()" );
}

HB_FUNC_STATIC( QWEBFRAME_ONINITIALLAYOUTCOMPLETED )
{
  QWebFrameSlots_connect_signal( "initialLayoutCompleted()", "initialLayoutCompleted()" );
}

HB_FUNC_STATIC( QWEBFRAME_ONJAVASCRIPTWINDOWOBJECTCLEARED )
{
  QWebFrameSlots_connect_signal( "javaScriptWindowObjectCleared()", "javaScriptWindowObjectCleared()" );
}

HB_FUNC_STATIC( QWEBFRAME_ONLOADFINISHED )
{
  QWebFrameSlots_connect_signal( "loadFinished(bool)", "loadFinished(bool)" );
}

HB_FUNC_STATIC( QWEBFRAME_ONLOADSTARTED )
{
  QWebFrameSlots_connect_signal( "loadStarted()", "loadStarted()" );
}

HB_FUNC_STATIC( QWEBFRAME_ONPAGECHANGED )
{
  QWebFrameSlots_connect_signal( "pageChanged()", "pageChanged()" );
}

HB_FUNC_STATIC( QWEBFRAME_ONTITLECHANGED )
{
  QWebFrameSlots_connect_signal( "titleChanged(QString)", "titleChanged(QString)" );
}

HB_FUNC_STATIC( QWEBFRAME_ONURLCHANGED )
{
  QWebFrameSlots_connect_signal( "urlChanged(QUrl)", "urlChanged(QUrl)" );
}

#pragma ENDDUMP
