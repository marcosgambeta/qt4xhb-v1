/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QAbstractItemDelegate INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createEditor
   METHOD editorEvent
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry
   METHOD helpEvent

   METHOD onCloseEditor
   METHOD onCommitData
   METHOD onSizeHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DELETE )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_CREATEEDITOR )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->createEditor ( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual bool editorEvent ( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_EDITOREVENT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par2 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->editorEvent ( PQEVENT(1), par2, *PQSTYLEOPTIONVIEWITEM(3), *PQMODELINDEX(4) ) );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->paint ( PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETEDITORDATA )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEditorData ( PQWIDGET(1), *PQMODELINDEX(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETMODELDATA )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par2 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModelData ( PQWIDGET(1), par2, *PQMODELINDEX(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SIZEHINT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint ( *PQSTYLEOPTIONVIEWITEM(1), *PQMODELINDEX(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_UPDATEEDITORGEOMETRY )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateEditorGeometry ( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool helpEvent ( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_HELPEVENT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpEvent * par1 = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAbstractItemView * par2 = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->helpEvent ( par1, par2, *PQSTYLEOPTIONVIEWITEM(3), *PQMODELINDEX(4) ) );
  }
}

#pragma ENDDUMP
