/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QGRAPHICSITEM
REQUEST QPOINT
REQUEST QPOLYGON
REQUEST QPAINTERPATH
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QMATRIX
REQUEST QGRAPHICSSCENE
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QGraphicsView INHERIT QAbstractScrollArea

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD backgroundBrush
   METHOD cacheMode
   METHOD centerOn1
   METHOD centerOn2
   METHOD centerOn3
   METHOD centerOn
   METHOD dragMode
   METHOD ensureVisible1
   METHOD ensureVisible2
   METHOD ensureVisible3
   METHOD ensureVisible
   METHOD fitInView1
   METHOD fitInView2
   METHOD fitInView3
   METHOD fitInView
   METHOD foregroundBrush
   METHOD isInteractive
   METHOD isTransformed
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD items1
   METHOD items2
   METHOD items3
   METHOD items4
   METHOD items5
   METHOD items6
   METHOD items7
   METHOD items
   METHOD mapFromScene1
   METHOD mapFromScene2
   METHOD mapFromScene3
   METHOD mapFromScene4
   METHOD mapFromScene5
   METHOD mapFromScene6
   METHOD mapFromScene
   METHOD mapToScene1
   METHOD mapToScene2
   METHOD mapToScene3
   METHOD mapToScene4
   METHOD mapToScene5
   METHOD mapToScene6
   METHOD mapToScene
   METHOD matrix
   METHOD optimizationFlags
   METHOD render
   METHOD renderHints
   METHOD resetCachedContent
   METHOD resetMatrix
   METHOD resetTransform
   METHOD resizeAnchor
   METHOD rotate
   METHOD rubberBandSelectionMode
   METHOD scale
   METHOD scene
   METHOD sceneRect
   METHOD setAlignment
   METHOD setBackgroundBrush
   METHOD setCacheMode
   METHOD setDragMode
   METHOD setForegroundBrush
   METHOD setInteractive
   METHOD setMatrix
   METHOD setOptimizationFlag
   METHOD setOptimizationFlags
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setResizeAnchor
   METHOD setRubberBandSelectionMode
   METHOD setScene
   METHOD setSceneRect1
   METHOD setSceneRect2
   METHOD setSceneRect
   METHOD setTransform
   METHOD setTransformationAnchor
   METHOD setViewportUpdateMode
   METHOD shear
   METHOD transform
   METHOD transformationAnchor
   METHOD translate
   METHOD viewportTransform
   METHOD viewportUpdateMode
   METHOD inputMethodQuery
   METHOD sizeHint
   METHOD invalidateScene
   METHOD updateScene
   METHOD updateSceneRect

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QGraphicsView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_NEW1 )
{
  QGraphicsView * o = new QGraphicsView ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_NEW2 )
{
  QGraphicsView * o = new QGraphicsView ( PQGRAPHICSSCENE(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsView ( QWidget * parent = 0 )
//[2]QGraphicsView ( QGraphicsScene * scene, QWidget * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSSCENE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSVIEW_DELETE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ALIGNMENT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
QBrush backgroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_BACKGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->backgroundBrush () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
CacheMode cacheMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CACHEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->cacheMode () );
  }
}

/*
void centerOn ( const QPointF & pos )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->centerOn ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerOn ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->centerOn ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void centerOn ( const QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->centerOn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void centerOn ( const QPointF & pos )
//[2]void centerOn ( qreal x, qreal y )
//[3]void centerOn ( const QGraphicsItem * item )

HB_FUNC_STATIC( QGRAPHICSVIEW_CENTERON )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_CENTERON1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_CENTERON2 );
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_CENTERON3 );
  }
}

/*
DragMode dragMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_DRAGMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->dragMode () );
  }
}

/*
void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureVisible ( *PQRECTF(1), OPINT(2,50), OPINT(3,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureVisible ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPINT(5,50), OPINT(6,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->ensureVisible ( par1, OPINT(2,50), OPINT(3,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ensureVisible ( const QRectF & rect, int xmargin = 50, int ymargin = 50 )
//[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
//[3]void ensureVisible ( const QGraphicsItem * item, int xmargin = 50, int ymargin = 50 )

HB_FUNC_STATIC( QGRAPHICSVIEW_ENSUREVISIBLE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ENSUREVISIBLE1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ENSUREVISIBLE2 );
  }
  else if( ISBETWEEN(1,3) && ISQGRAPHICSITEM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ENSUREVISIBLE3 );
  }
}

/*
void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    obj->fitInView ( *PQRECTF(1), (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::IgnoreAspectRatio : hb_parni(5);
    obj->fitInView ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), (Qt::AspectRatioMode) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    obj->fitInView ( par1, (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void fitInView ( const QRectF & rect, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[2]void fitInView ( qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )
//[3]void fitInView ( const QGraphicsItem * item, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio )

HB_FUNC_STATIC( QGRAPHICSVIEW_FITINVIEW )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_FITINVIEW1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_FITINVIEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQGRAPHICSITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_FITINVIEW3 );
  }
}

/*
QBrush foregroundBrush () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_FOREGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foregroundBrush () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
bool isInteractive () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ISINTERACTIVE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isInteractive () );
  }
}

/*
bool isTransformed () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ISTRANSFORMED )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTransformed () );
  }
}

/*
QGraphicsItem * itemAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->itemAt ( *PQPOINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsItem * itemAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

//[1]QGraphicsItem * itemAt ( const QPoint & pos ) const
//[2]QGraphicsItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMAT2 );
  }
}

/*
QList<QGraphicsItem *> items () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
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
QList<QGraphicsItem *> items ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ( *PQPOINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
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
QList<QGraphicsItem *> items ( int x, int y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ( PINT(1), PINT(2) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
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
QList<QGraphicsItem *> items ( int x, int y, int w, int h, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS4 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::IntersectsItemShape : hb_parni(5);
    QList<QGraphicsItem *> list = obj->items ( PINT(1), PINT(2), PINT(3), PINT(4), (Qt::ItemSelectionMode) par5 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
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
QList<QGraphicsItem *> items ( const QRect & rect, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS5 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->items ( *PQRECT(1), (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
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
QList<QGraphicsItem *> items ( const QPolygon & polygon, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS6 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->items ( *PQPOLYGON(1), (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
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
QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS7 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->items ( *PQPAINTERPATH(1), (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QList<QGraphicsItem *> items () const
//[2]QList<QGraphicsItem *> items ( const QPoint & pos ) const
//[3]QList<QGraphicsItem *> items ( int x, int y ) const
//[4]QList<QGraphicsItem *> items ( int x, int y, int w, int h, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
//[5]QList<QGraphicsItem *> items ( const QRect & rect, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
//[6]QList<QGraphicsItem *> items ( const QPolygon & polygon, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
//[7]QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_ITEMS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS3 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS4 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS5 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS6 );
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_ITEMS7 );
  }
}

/*
QPoint mapFromScene ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromScene ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPolygon mapFromScene ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPolygon mapFromScene ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE4 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapFromScene ( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPoint mapFromScene ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE5 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->mapFromScene ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE6 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->mapFromScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

//[1]QPoint mapFromScene ( const QPointF & point ) const
//[2]QPolygon mapFromScene ( const QRectF & rect ) const
//[3]QPolygon mapFromScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
//[5]QPoint mapFromScene ( qreal x, qreal y ) const
//[6]QPolygon mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE5 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPFROMSCENE6 );
  }
}

/*
QPointF mapToScene ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( const QRect & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *PQRECT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToScene ( const QPolygon & polygon ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE3 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *PQPOLYGON(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE4 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->mapToScene ( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPointF mapToScene ( int x, int y ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE5 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( int x, int y, int w, int h ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE6 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

//[1]QPointF mapToScene ( const QPoint & point ) const
//[2]QPolygonF mapToScene ( const QRect & rect ) const
//[3]QPolygonF mapToScene ( const QPolygon & polygon ) const
//[4]QPainterPath mapToScene ( const QPainterPath & path ) const
//[5]QPointF mapToScene ( int x, int y ) const
//[6]QPolygonF mapToScene ( int x, int y, int w, int h ) const

HB_FUNC_STATIC( QGRAPHICSVIEW_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE3 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE5 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_MAPTOSCENE6 );
  }
}

/*
QMatrix matrix () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_MATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrix () );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}

/*
OptimizationFlags optimizationFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_OPTIMIZATIONFLAGS )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->optimizationFlags () );
  }
}

/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRect & source = QRect(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RENDER )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect par3 = ISNIL(3)? QRect() : *(QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) Qt::KeepAspectRatio : hb_parni(4);
    obj->render ( PQPAINTER(1), par2, par3, (Qt::AspectRatioMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainter::RenderHints renderHints () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RENDERHINTS )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->renderHints () );
  }
}

/*
void resetCachedContent ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETCACHEDCONTENT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resetCachedContent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetMatrix ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETMATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resetMatrix ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetTransform ()
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESETTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resetTransform ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
ViewportAnchor resizeAnchor () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RESIZEANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->resizeAnchor () );
  }
}

/*
void rotate ( qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_ROTATE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->rotate ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ItemSelectionMode rubberBandSelectionMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_RUBBERBANDSELECTIONMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->rubberBandSelectionMode () );
  }
}

/*
void scale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCALE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsScene * scene () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCENE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsScene * ptr = obj->scene ();
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSSCENE" );
  }
}

/*
QRectF sceneRect () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SCENERECT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->sceneRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETALIGNMENT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETBACKGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackgroundBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCacheMode ( CacheMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETCACHEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCacheMode ( (QGraphicsView::CacheMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragMode ( DragMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETDRAGMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDragMode ( (QGraphicsView::DragMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForegroundBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETFOREGROUNDBRUSH )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForegroundBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInteractive ( bool allowed )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETINTERACTIVE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInteractive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMatrix ( const QMatrix & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETMATRIX )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMatrix ( *PQMATRIX(1), OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptimizationFlag ( OptimizationFlag flag, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETOPTIMIZATIONFLAG )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptimizationFlag ( (QGraphicsView::OptimizationFlag) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptimizationFlags ( OptimizationFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETOPTIMIZATIONFLAGS )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptimizationFlags ( (QGraphicsView::OptimizationFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRENDERHINT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHint ( (QPainter::RenderHint) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderHints ( QPainter::RenderHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRENDERHINTS )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHints ( (QPainter::RenderHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setResizeAnchor ( ViewportAnchor anchor )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRESIZEANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeAnchor ( (QGraphicsView::ViewportAnchor) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRubberBandSelectionMode ( Qt::ItemSelectionMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETRUBBERBANDSELECTIONMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRubberBandSelectionMode ( (Qt::ItemSelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScene ( QGraphicsScene * scene )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsScene * par1 = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScene ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSceneRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT1 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSceneRect ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT2 )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSceneRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSVIEW_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_SETSCENERECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSVIEW_SETSCENERECT2 );
  }
}

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTransform ( *PQTRANSFORM(1), OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformationAnchor ( ViewportAnchor anchor )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETTRANSFORMATIONANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTransformationAnchor ( (QGraphicsView::ViewportAnchor) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewportUpdateMode ( ViewportUpdateMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SETVIEWPORTUPDATEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setViewportUpdateMode ( (QGraphicsView::ViewportUpdateMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void shear ( qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SHEAR )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->shear ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform transform () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform () );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
ViewportAnchor transformationAnchor () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSFORMATIONANCHOR )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->transformationAnchor () );
  }
}

/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_TRANSLATE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform viewportTransform () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_VIEWPORTTRANSFORM )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->viewportTransform () );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
ViewportUpdateMode viewportUpdateMode () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_VIEWPORTUPDATEMODE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->viewportUpdateMode () );
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_INPUTMETHODQUERY )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_SIZEHINT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void invalidateScene ( const QRectF & rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_INVALIDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QGraphicsScene::AllLayers : hb_parni(2);
    obj->invalidateScene ( par1, (QGraphicsScene::SceneLayers) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updateScene ( const QList<QRectF> & rects )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENE )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QRectF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->updateScene ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updateSceneRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSVIEW_UPDATESCENERECT )
{
  QGraphicsView * obj = (QGraphicsView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateSceneRect ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
