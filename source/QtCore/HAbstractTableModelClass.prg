/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

REQUEST QMODELINDEX

CLASS HAbstractTableModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB

   METHOD setDisplayRoleCB
   METHOD setDecorationRoleCB
   METHOD setEditRoleCB
   METHOD setToolTipRoleCB
   METHOD setStatusTipRoleCB
   METHOD setWhatsThisRoleCB
   METHOD setSizeHintRoleCB
   METHOD setFontRoleCB
   METHOD setTextAlignmentRoleCB
   METHOD setBackgroundRoleCB
   METHOD setForegroundRoleCB

   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

METHOD destroyObject() CLASS HAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN NIL

CLASS HDBFTableModel INHERIT HAbstractTableModel
END CLASS

CLASS HArrayTableModel INHERIT HAbstractTableModel
END CLASS

#pragma BEGINDUMP

#include <HAbstractTableModel.h>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
HAbstractTableModel( QObject * parent = 0 )
*/
HB_FUNC( HABSTRACTTABLEMODEL_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    HAbstractTableModel * obj = new HAbstractTableModel( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~HAbstractTableModel()
*/
HB_FUNC( HABSTRACTTABLEMODEL_DELETE )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

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

// linhas e colunas

/*
void setRowCountCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETROWCOUNTCB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
HB_FUNC( HABSTRACTTABLEMODEL_SETCOLUMNCOUNTCB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

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

// células

/*
void setDisplayRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETDISPLAYROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setDisplayRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setDecorationRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETDECORATIONROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setDecorationRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setEditRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETEDITROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setEditRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setToolTipRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETTOOLTIPROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setToolTipRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setStatusTipRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETSTATUSTIPROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setStatusTipRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setWhatsThisRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETWHATSTHISROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setWhatsThisRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setSizeHintRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETSIZEHINTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setSizeHintRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setFontRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETFONTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setFontRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setTextAlignmentRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setTextAlignmentRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setBackgroundRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setBackgroundRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setForegroundRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setForegroundRoleCB( PBLOCKORSYMBOL( 1 ) );
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

// cabeçalho horizontal

/*
void setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHorizontalHeaderDisplayRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHorizontalHeaderDecorationRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setHorizontalHeaderFontRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHorizontalHeaderFontRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHorizontalHeaderTextAlignmentRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHorizontalHeaderBackgroundRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setHorizontalHeaderForegroundRoleCB( PBLOCKORSYMBOL( 1 ) );
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

// cabeçalho vertical


/*
void setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setVerticalHeaderDisplayRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setVerticalHeaderDecorationRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setVerticalHeaderFontRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setVerticalHeaderFontRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setVerticalHeaderTextAlignmentRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETVERTICALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setVerticalHeaderBackgroundRoleCB( PBLOCKORSYMBOL( 1 ) );
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
void setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
*/
HB_FUNC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) )
    {
#endif
      obj->setVerticalHeaderForegroundRoleCB( PBLOCKORSYMBOL( 1 ) );
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/

/*
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/

/*
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/

/*
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/

/*
void reloadData()
*/
HB_FUNC( HABSTRACTTABLEMODEL_RELOADDATA )
{
  HAbstractTableModel * obj = static_cast< HAbstractTableModel * >( Qt4xHb::itemGetPtrStackSelfItem() );

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

// /*
// QModelIndex createIndex ( int row, int column )
// */
// HB_FUNC( HABSTRACTTABLEMODEL_CREATEINDEX )
// {
//   HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
//   if( obj )
//   {
//     QModelIndex * ptr = new QModelIndex( obj->createIndex ( hb_parni(1), hb_parni(2) ) );
//     _qt4xhb_createReturnClass ( ptr, "QMODELINDEX" );  }
// }

#pragma ENDDUMP
