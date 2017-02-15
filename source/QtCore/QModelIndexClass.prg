/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL

CLASS QModelIndex

   DATA pointer
   DATA class_id INIT Class_Id_QModelIndex
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QModelIndex
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QModelIndex
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QModelIndex
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QModelIndex
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QModelIndex
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QModelIndex>

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
QModelIndex ()
*/
HB_FUNC_STATIC( QMODELINDEX_NEW1 )
{
  QModelIndex * o = NULL;
  o = new QModelIndex (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QModelIndex *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QModelIndex ( const QModelIndex & other )
*/
HB_FUNC_STATIC( QMODELINDEX_NEW2 )
{
  QModelIndex * o = NULL;
  QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QModelIndex ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QModelIndex *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex * ptr = new QModelIndex( obj->child ( par1, par2 ) );
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
    int i = obj->column (  );
    hb_retni( i );
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
    int par1 = ISNIL(1)? Qt::DisplayRole : hb_parni(1);
    QVariant * ptr = new QVariant( obj->data ( par1 ) );
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
    int i = obj->flags (  );
    hb_retni( i );
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
    qint64 i = obj->internalId (  );
    hb_retni( i );
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
    void * retptr = obj->internalPointer (  );
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
    hb_retl( obj->isValid (  ) );
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
    const QAbstractItemModel * ptr = obj->model (  );
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
    QModelIndex * ptr = new QModelIndex( obj->parent (  ) );
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
    int i = obj->row (  );
    hb_retni( i );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex * ptr = new QModelIndex( obj->sibling ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}




#pragma ENDDUMP
