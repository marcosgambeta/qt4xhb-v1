/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDebug>

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
QDebug ( QIODevice * device )
*/
HB_FUNC( QDEBUG_NEW1 )
{
  QDebug * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDebug ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDebug *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDebug ( QString * string )
*/
HB_FUNC( QDEBUG_NEW2 )
{
  QDebug * o = NULL;
  QString * par1 = NULL;
  o = new QDebug ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDebug *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDebug ( QtMsgType type )
*/
HB_FUNC( QDEBUG_NEW3 )
{
  QDebug * o = NULL;
  int par1 = hb_parni(1);
  o = new QDebug (  (QtMsgType) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDebug *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDebug ( const QDebug & other )
*/
HB_FUNC( QDEBUG_NEW4 )
{
  QDebug * o = NULL;
  QDebug * par1 = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDebug ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDebug *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDebug ( QIODevice * device )
//[2]QDebug ( QString * string )
//[3]QDebug ( QtMsgType type )
//[4]QDebug ( const QDebug & other )

HB_FUNC( QDEBUG_NEW )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QDEBUG_DELETE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDebug & maybeSpace ()
*/
HB_FUNC( QDEBUG_MAYBESPACE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDebug * ptr = &obj->maybeSpace (  );
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );  }
}


/*
QDebug & nospace ()
*/
HB_FUNC( QDEBUG_NOSPACE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDebug * ptr = &obj->nospace (  );
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );  }
}


/*
QDebug & space ()
*/
HB_FUNC( QDEBUG_SPACE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDebug * ptr = &obj->space (  );
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );  }
}




