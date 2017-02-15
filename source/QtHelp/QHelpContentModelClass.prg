/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHELPCONTENTITEM
REQUEST QVARIANT
REQUEST QMODELINDEX

CLASS QHelpContentModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QHelpContentModel
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QHelpContentModel>

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
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QHelpContentItem * ptr = obj->contentItemAt ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );
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
    QString par1 = hb_parc(1);
    obj->createContents ( par1 );
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
    hb_retl( obj->isCreatingContents (  ) );
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
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->columnCount ( par1 );
    hb_retni( i );
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
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->data ( *par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->index ( par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->rowCount ( par1 );
    hb_retni( i );
  }
}





#pragma ENDDUMP
