/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR

CLASS QGLColormap

   DATA pointer
   DATA class_id INIT Class_Id_QGLColormap
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QGLColormap
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QGLColormap
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QGLColormap
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QGLColormap
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QGLColormap
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QGLColormap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGLColormap>

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
QGLColormap ()
*/
HB_FUNC_STATIC( QGLCOLORMAP_NEW1 )
{
  QGLColormap * o = NULL;
  o = new QGLColormap (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLColormap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGLColormap ( const QGLColormap & map )
*/
HB_FUNC_STATIC( QGLCOLORMAP_NEW2 )
{
  QGLColormap * o = NULL;
  QGLColormap * par1 = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGLColormap ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLColormap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QGLCOLORMAP_DELETE )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QColor entryColor ( int idx ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ENTRYCOLOR )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor * ptr = new QColor( obj->entryColor ( par1 ) );
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
    int par1 = hb_parni(1);
    QRgb i = obj->entryRgb ( par1 );
    hb_retni( i );
  }
}


/*
int find ( QRgb color ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_FIND )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par1 = hb_parni(1);
    int i = obj->find ( par1 );
    hb_retni( i );
  }
}


/*
int findNearest ( QRgb color ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_FINDNEAREST )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par1 = hb_parni(1);
    int i = obj->findNearest ( par1 );
    hb_retni( i );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ISEMPTY )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}



/*
void setEntry ( int idx, QRgb color )
*/
HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY1 )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QRgb par2 = hb_parni(2);
    obj->setEntry ( par1, par2 );
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
    int par1 = hb_parni(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setEntry ( par1, par2 );
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
HB_FUNC_STATIC( QGLCOLORMAP_SIZE )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->size (  );
    hb_retni( i );
  }
}





#pragma ENDDUMP
