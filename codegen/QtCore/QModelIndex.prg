$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD child
   METHOD column
   METHOD data
   METHOD flags
   METHOD internalId
   METHOD internalPointer
   METHOD isValid
   METHOD model
   METHOD parent
   METHOD row
   METHOD sibling
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QModelIndex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QModelIndex ()
*/
HB_FUNC_STATIC( QMODELINDEX_NEW1 )
{
  QModelIndex * o = new QModelIndex ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QModelIndex ( const QModelIndex & other )
*/
HB_FUNC_STATIC( QMODELINDEX_NEW2 )
{
  QModelIndex * o = new QModelIndex ( *PQMODELINDEX(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QModelIndex ()
//[2]QModelIndex ( const QModelIndex & other )

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMODELINDEX_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QMODELINDEX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMODELINDEX_DELETE )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QModelIndex child ( int row, int column ) const
*/
HB_FUNC_STATIC( QMODELINDEX_CHILD )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->child ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int column () const
*/
HB_FUNC_STATIC( QMODELINDEX_COLUMN )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->column () );
  }
}


/*
QVariant data ( int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QMODELINDEX_DATA )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( OPINT(1,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QMODELINDEX_FLAGS )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}


/*
qint64 internalId () const
*/
HB_FUNC_STATIC( QMODELINDEX_INTERNALID )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->internalId () );
  }
}


/*
void * internalPointer () const
*/
HB_FUNC_STATIC( QMODELINDEX_INTERNALPOINTER )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * retptr = obj->internalPointer ();
  hb_retptr( (void *) retptr );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QMODELINDEX_ISVALID )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
const QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QMODELINDEX_MODEL )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
QModelIndex parent () const
*/
HB_FUNC_STATIC( QMODELINDEX_PARENT )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int row () const
*/
HB_FUNC_STATIC( QMODELINDEX_ROW )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->row () );
  }
}


/*
QModelIndex sibling ( int row, int column ) const
*/
HB_FUNC_STATIC( QMODELINDEX_SIBLING )
{
  QModelIndex * obj = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->sibling ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

$extraMethods

#pragma ENDDUMP
