/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QPoint>

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
QPoint()
*/
HB_FUNC( QPOINT_NEW1 )
{
  QPoint * o = NULL;
  o = new QPoint (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPoint *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QPoint(int xpos, int ypos)
*/
HB_FUNC( QPOINT_NEW2 )
{
  QPoint * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  o = new QPoint ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPoint *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QPoint()
//[2]QPoint(int xpos, int ypos)

HB_FUNC( QPOINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOINT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOINT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QPOINT_DELETE )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC( QPOINT_ISNULL )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
int manhattanLength() const
*/
HB_FUNC( QPOINT_MANHATTANLENGTH )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->manhattanLength (  );
    hb_retni( i );
  }
}




/*
void setX(int x)
*/
HB_FUNC( QPOINT_SETX )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(int y)
*/
HB_FUNC( QPOINT_SETY )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int x() const
*/
HB_FUNC( QPOINT_X )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->x (  );
    hb_retni( i );
  }
}


/*
int y() const
*/
HB_FUNC( QPOINT_Y )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->y (  );
    hb_retni( i );
  }
}



