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
$method=|QColor|entryColor|int

/*
QRgb entryRgb ( int idx ) const
*/
$method=|QRgb|entryRgb|int

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
$method=|void|setEntry,setEntry1|int,QRgb

/*
void setEntry ( int idx, const QColor & color )
*/
$method=|void|setEntry,setEntry2|int,const QColor &

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int size () const
*/
$method=|int|size|

$extraMethods

#pragma ENDDUMP
