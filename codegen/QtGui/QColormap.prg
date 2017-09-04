$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QCOLORMAP
#endif

CLASS QColormap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD colorAt
   METHOD colormap
   METHOD depth
   METHOD mode
   METHOD pixel
   METHOD size
   METHOD instance

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QColormap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QColor>

/*
QColormap ( const QColormap & colormap )
*/
HB_FUNC_STATIC( QCOLORMAP_NEW )
{
  QColormap * o = new QColormap ( *PQCOLORMAP(1));
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QCOLORMAP_DELETE )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
const QColor colorAt ( uint pixel ) const
*/
HB_FUNC_STATIC( QCOLORMAP_COLORAT )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->colorAt ( PUINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
const QVector<QColor> colormap () const
*/
HB_FUNC_STATIC( QCOLORMAP_COLORMAP )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QColor> list = obj->colormap ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QCOLOR" );
    #else
    pDynSym = hb_dynsymFindName( "QCOLOR" );
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
        hb_itemPutPtr( pItem, (QColor *) new QColor ( list[i] ) );
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
int depth () const
*/
HB_FUNC_STATIC( QCOLORMAP_DEPTH )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->depth () );
  }
}

/*
Mode mode () const
*/
HB_FUNC_STATIC( QCOLORMAP_MODE )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->mode () );
  }
}

/*
uint pixel ( const QColor & color ) const
*/
HB_FUNC_STATIC( QCOLORMAP_PIXEL )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    hb_retni( (uint) obj->pixel ( par1 ) );
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QCOLORMAP_SIZE )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->size () );
  }
}

/*
QColormap instance ( int screen = -1 )
*/
HB_FUNC_STATIC( QCOLORMAP_INSTANCE )
{
  QColormap * ptr = new QColormap( QColormap::instance ( OPINT(1,-1) ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLORMAP" );
}

$extraMethods

#pragma ENDDUMP
