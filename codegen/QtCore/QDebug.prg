$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDEBUG
#endif

CLASS QDebug

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD maybeSpace
   METHOD nospace
   METHOD space
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDebug>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDebug ( QIODevice * device )
*/
HB_FUNC_STATIC( QDEBUG_NEW1 )
{
  QDebug * o = new QDebug ( PQIODEVICE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDebug ( QString * string )
*/
HB_FUNC_STATIC( QDEBUG_NEW2 )
{
  QString * par1 = NULL;
  QDebug * o = new QDebug ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDebug ( QtMsgType type )
*/
HB_FUNC_STATIC( QDEBUG_NEW3 )
{
  QDebug * o = new QDebug ( (QtMsgType) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDebug ( const QDebug & other )
*/
HB_FUNC_STATIC( QDEBUG_NEW4 )
{
  QDebug * o = new QDebug ( *PQDEBUG(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDebug ( QIODevice * device )
//[2]QDebug ( QString * string )
//[3]QDebug ( QtMsgType type )
//[4]QDebug ( const QDebug & other )

HB_FUNC_STATIC( QDEBUG_NEW )
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

HB_FUNC_STATIC( QDEBUG_DELETE )
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
HB_FUNC_STATIC( QDEBUG_MAYBESPACE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDebug * ptr = &obj->maybeSpace ();
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}


/*
QDebug & nospace ()
*/
HB_FUNC_STATIC( QDEBUG_NOSPACE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDebug * ptr = &obj->nospace ();
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}


/*
QDebug & space ()
*/
HB_FUNC_STATIC( QDEBUG_SPACE )
{
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDebug * ptr = &obj->space ();
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}

$extraMethods

#pragma ENDDUMP
