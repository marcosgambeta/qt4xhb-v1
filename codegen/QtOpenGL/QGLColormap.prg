$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGLColormap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD entryColor
   METHOD entryRgb
   METHOD find
   METHOD findNearest
   METHOD isEmpty
   METHOD setEntry1
   METHOD setEntry2
   METHOD setEntry
   METHOD size

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLColormap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLColormap ()
*/
HB_FUNC_STATIC( QGLCOLORMAP_NEW1 )
{
  QGLColormap * o = new QGLColormap ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLColormap ( const QGLColormap & map )
*/
HB_FUNC_STATIC( QGLCOLORMAP_NEW2 )
{
  QGLColormap * o = new QGLColormap ( *PQGLCOLORMAP(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLColormap ()
//[2]QGLColormap ( const QGLColormap & map )

HB_FUNC_STATIC( QGLCOLORMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLCOLORMAP(1) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QColor entryColor ( int idx ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ENTRYCOLOR )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->entryColor ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QRgb entryRgb ( int idx ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ENTRYRGB )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb i = obj->entryRgb ( PINT(1) );
    hb_retni( i );
  }
}

/*
int find ( QRgb color ) const
*/
$method=|int|find|QRgb

/*
int findNearest ( QRgb color ) const
*/
$method=|int|findNearest|QRgb

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
void setEntry ( int idx, QRgb color )
*/
HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY1 )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par2 = hb_parni(2);
    obj->setEntry ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEntry ( int idx, const QColor & color )
*/
HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY2 )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setEntry ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setEntry ( int idx, QRgb color )
//[2]void setEntry ( int idx, const QColor & color )

HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_SETENTRY1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_SETENTRY2 );
  }
}

/*
int size () const
*/
$method=|int|size|

$extraMethods

#pragma ENDDUMP
