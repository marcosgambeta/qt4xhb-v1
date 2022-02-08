/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS HAbstractTableModelV2 INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB
   METHOD setDataCB
   METHOD setHeaderDataCB
   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractTableModelV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <HAbstractTableModelV2.h>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
HAbstractTableModelV2( QObject * parent = 0 )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    HAbstractTableModelV2 * obj = new HAbstractTableModelV2( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~HAbstractTableModelV2()
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_DELETE )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
void setRowCountCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETROWCOUNTCB )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setRowCountCB( PBLOCKORSYMBOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnCountCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETCOLUMNCOUNTCB )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setColumnCountCB( PBLOCKORSYMBOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETDATACB )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setDataCB( PBLOCKORSYMBOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeaderDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETHEADERDATACB )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHeaderDataCB( PBLOCKORSYMBOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlagsCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETFLAGSCB )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setFlagsCB( PBLOCKORSYMBOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSetDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETSETDATACB )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setSetDataCB( PBLOCKORSYMBOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/

/*
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/

/*
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/

/*
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/

/*
Qt::ItemFlagsflags( const QModelIndex &index ) const
*/

/*
bool setData( const QModelIndex &index, const QVariant &value, int role = Qt::EditRole )
*/

/*
void reloadData()
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_RELOADDATA )
{
  HAbstractTableModelV2 * obj = static_cast< HAbstractTableModelV2 * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->reloadData();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
