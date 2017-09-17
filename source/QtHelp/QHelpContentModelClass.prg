/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QVARIANT
REQUEST QMODELINDEX
#endif

CLASS QHelpContentModel INHERIT QAbstractItemModel

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD contentItemAt
   METHOD createContents
   METHOD isCreatingContents
   METHOD columnCount
   METHOD data
   METHOD index
   METHOD parent
   METHOD rowCount

   METHOD onContentsCreated
   METHOD onContentsCreationStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpContentModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpContentModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QHELPCONTENTMODEL_DELETE )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QHelpContentItem * contentItemAt ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_CONTENTITEMAT )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QHelpContentItem * ptr = obj->contentItemAt ( *PQMODELINDEX(1) );
      _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTITEM", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void createContents ( const QString & customFilterName )
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_CREATECONTENTS )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->createContents ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCreatingContents () const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_ISCREATINGCONTENTS )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isCreatingContents () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_COLUMNCOUNT )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RINT( obj->columnCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt4xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant data ( const QModelIndex & index, int role ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_DATA )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), PINT(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_INDEX )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt4xhb_itemGetPtr(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QModelIndex parent ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_PARENT )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_ROWCOUNT )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RINT( obj->rowCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt4xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
