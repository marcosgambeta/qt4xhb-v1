/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWebFrame>

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

#include <QWebElement>
#include <QWebSecurityOrigin>



/*
void addToJavaScriptWindowObject ( const QString & name, QObject * object )
*/
HB_FUNC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT1 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addToJavaScriptWindowObject ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )
*/
HB_FUNC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT2 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    obj->addToJavaScriptWindowObject ( par1, par2,  (QScriptEngine::ValueOwnership) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addToJavaScriptWindowObject ( const QString & name, QObject * object )
//[2]void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )

HB_FUNC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT2 );
  }
}

/*
QUrl baseUrl () const
*/
HB_FUNC( QWEBFRAME_BASEURL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );  }
}


/*
QList<QWebFrame *> childFrames () const
*/
HB_FUNC( QWEBFRAME_CHILDFRAMES )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QWebFrame *> list = obj->childFrames (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBFRAME" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBFRAME" );
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
        hb_itemPutPtr( pItem, (QWebFrame *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QSize contentsSize () const
*/
HB_FUNC( QWEBFRAME_CONTENTSSIZE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->contentsSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
QWebElement documentElement () const
*/
HB_FUNC( QWEBFRAME_DOCUMENTELEMENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->documentElement (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );  }
}


/*
QWebElementCollection findAllElements ( const QString & selectorQuery ) const
*/
HB_FUNC( QWEBFRAME_FINDALLELEMENTS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QWebElementCollection * ptr = new QWebElementCollection( obj->findAllElements ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENTCOLLECTION", true );  }
}


/*
QWebElement findFirstElement ( const QString & selectorQuery ) const
*/
HB_FUNC( QWEBFRAME_FINDFIRSTELEMENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QWebElement * ptr = new QWebElement( obj->findFirstElement ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBELEMENT", true );  }
}


/*
QString frameName () const
*/
HB_FUNC( QWEBFRAME_FRAMENAME )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->frameName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QRect geometry () const
*/
HB_FUNC( QWEBFRAME_GEOMETRY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
bool hasFocus () const
*/
HB_FUNC( QWEBFRAME_HASFOCUS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasFocus (  );
    hb_retl( b );
  }
}


/*
QWebHitTestResult hitTestContent ( const QPoint & pos ) const
*/
HB_FUNC( QWEBFRAME_HITTESTCONTENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWebHitTestResult * ptr = new QWebHitTestResult( obj->hitTestContent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBHITTESTRESULT", true );  }
}


/*
QIcon icon () const
*/
HB_FUNC( QWEBFRAME_ICON )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );  }
}


/*
void load ( const QUrl & url )
*/
HB_FUNC( QWEBFRAME_LOAD1 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->load ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
HB_FUNC( QWEBFRAME_LOAD2 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QNetworkAccessManager::GetOperation : hb_parni(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->load ( *par1,  (QNetworkAccessManager::Operation) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC( QWEBFRAME_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QWEBFRAME_LOAD1 );
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && (ISNUM(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QWEBFRAME_LOAD2 );
  }
}


/*
QWebPage * page () const
*/
HB_FUNC( QWEBFRAME_PAGE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebPage * ptr = obj->page (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBPAGE" );  }
}


/*
QWebFrame * parentFrame () const
*/
HB_FUNC( QWEBFRAME_PARENTFRAME )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->parentFrame (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );  }
}


/*
QPoint pos () const
*/
HB_FUNC( QWEBFRAME_POS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );  }
}


/*
void render ( QPainter * painter )
*/
HB_FUNC( QWEBFRAME_RENDER1 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, const QRegion & clip )
*/
HB_FUNC( QWEBFRAME_RENDER2 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion * par2 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )
*/
HB_FUNC( QWEBFRAME_RENDER3 )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->render ( par1,  (QWebFrame::RenderLayer) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRegion & clip )
//[3]void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )

HB_FUNC( QWEBFRAME_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    HB_FUNC_EXEC( QWEBFRAME_RENDER1 );
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQREGION(2) )
  {
    HB_FUNC_EXEC( QWEBFRAME_RENDER2 );
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISNUM(2) && (ISQREGION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QWEBFRAME_RENDER3 );
  }
}

/*
QString renderTreeDump () const
*/
HB_FUNC( QWEBFRAME_RENDERTREEDUMP )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->renderTreeDump (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUrl requestedUrl () const
*/
HB_FUNC( QWEBFRAME_REQUESTEDURL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->requestedUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );  }
}


/*
void scroll ( int dx, int dy )
*/
HB_FUNC( QWEBFRAME_SCROLL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->scroll ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect scrollBarGeometry ( Qt::Orientation orientation ) const
*/
HB_FUNC( QWEBFRAME_SCROLLBARGEOMETRY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QRect * ptr = new QRect( obj->scrollBarGeometry (  (Qt::Orientation) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
int scrollBarMaximum ( Qt::Orientation orientation ) const
*/
HB_FUNC( QWEBFRAME_SCROLLBARMAXIMUM )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->scrollBarMaximum (  (Qt::Orientation) par1 );
    hb_retni( i );
  }
}


/*
int scrollBarMinimum ( Qt::Orientation orientation ) const
*/
HB_FUNC( QWEBFRAME_SCROLLBARMINIMUM )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->scrollBarMinimum (  (Qt::Orientation) par1 );
    hb_retni( i );
  }
}


/*
Qt::ScrollBarPolicy scrollBarPolicy ( Qt::Orientation orientation ) const
*/
HB_FUNC( QWEBFRAME_SCROLLBARPOLICY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->scrollBarPolicy (  (Qt::Orientation) par1 );
    hb_retni( i );
  }
}


/*
int scrollBarValue ( Qt::Orientation orientation ) const
*/
HB_FUNC( QWEBFRAME_SCROLLBARVALUE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->scrollBarValue (  (Qt::Orientation) par1 );
    hb_retni( i );
  }
}


/*
QPoint scrollPosition () const
*/
HB_FUNC( QWEBFRAME_SCROLLPOSITION )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->scrollPosition (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );  }
}


/*
void scrollToAnchor ( const QString & anchor )
*/
HB_FUNC( QWEBFRAME_SCROLLTOANCHOR )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->scrollToAnchor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSecurityOrigin securityOrigin () const
*/
HB_FUNC( QWEBFRAME_SECURITYORIGIN )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->securityOrigin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );  }
}


/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC( QWEBFRAME_SETCONTENT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setContent ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocus ()
*/
HB_FUNC( QWEBFRAME_SETFOCUS )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC( QWEBFRAME_SETHTML )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHtml ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollBarPolicy ( Qt::Orientation orientation, Qt::ScrollBarPolicy policy )
*/
HB_FUNC( QWEBFRAME_SETSCROLLBARPOLICY )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setScrollBarPolicy (  (Qt::Orientation) par1,  (Qt::ScrollBarPolicy) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollBarValue ( Qt::Orientation orientation, int value )
*/
HB_FUNC( QWEBFRAME_SETSCROLLBARVALUE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setScrollBarValue (  (Qt::Orientation) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollPosition ( const QPoint & pos )
*/
HB_FUNC( QWEBFRAME_SETSCROLLPOSITION )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScrollPosition ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextSizeMultiplier ( qreal factor )
*/
HB_FUNC( QWEBFRAME_SETTEXTSIZEMULTIPLIER )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTextSizeMultiplier ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC( QWEBFRAME_SETURL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZoomFactor ( qreal factor )
*/
HB_FUNC( QWEBFRAME_SETZOOMFACTOR )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setZoomFactor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textSizeMultiplier () const
*/
HB_FUNC( QWEBFRAME_TEXTSIZEMULTIPLIER )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->textSizeMultiplier (  );
    hb_retnd( r );
  }
}


/*
QString title () const
*/
HB_FUNC( QWEBFRAME_TITLE )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toHtml () const
*/
HB_FUNC( QWEBFRAME_TOHTML )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toHtml (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC( QWEBFRAME_TOPLAINTEXT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toPlainText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUrl url () const
*/
HB_FUNC( QWEBFRAME_URL )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );  }
}


/*
qreal zoomFactor () const
*/
HB_FUNC( QWEBFRAME_ZOOMFACTOR )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->zoomFactor (  );
    hb_retnd( r );
  }
}


/*
QVariant evaluateJavaScript ( const QString & scriptSource )
*/
HB_FUNC( QWEBFRAME_EVALUATEJAVASCRIPT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->evaluateJavaScript ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
void print ( QPrinter * printer ) const
*/
HB_FUNC( QWEBFRAME_PRINT )
{
  QWebFrame * obj = (QWebFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * par1 = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




