/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <habstractlistmodel.h>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC( HABSTRACTLISTMODEL_NEW )
{
  HAbstractListModel * o = NULL;
  QObject * parent = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new HAbstractListModel ( parent );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HAbstractListModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC( HABSTRACTLISTMODEL_DELETE )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
  linhas
*/

HB_FUNC( HABSTRACTLISTMODEL_SETROWCOUNTCB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
  células
*/

HB_FUNC( HABSTRACTLISTMODEL_SETDISPLAYROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETDECORATIONROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETEDITROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEditRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETTOOLTIPROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToolTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETSTATUSTIPROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStatusTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETWHATSTHISROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWhatsThisRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETSIZEHINTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeHintRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETFONTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETTEXTALIGNMENTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETBACKGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETFOREGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
  cabeçalho horizontal
*/

HB_FUNC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERDISPLAYROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERDECORATIONROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERFONTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
  cabeçalho vertical
*/

HB_FUNC( HABSTRACTLISTMODEL_SETVERTICALHEADERDISPLAYROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETVERTICALHEADERDECORATIONROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETVERTICALHEADERFONTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETVERTICALHEADERBACKGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_SETVERTICALHEADERFOREGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC( HABSTRACTLISTMODEL_RELOADDATA )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reloadData();
  }
  hb_itemReturn( hb_stackSelfItem() );
}
