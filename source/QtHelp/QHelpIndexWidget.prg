/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QHelpIndexWidget INHERIT QListView

   METHOD activateCurrentItem
   METHOD filterIndices

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpIndexWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtHelp/QHelpIndexWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
void activateCurrentItem()
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_ACTIVATECURRENTITEM )
{
  QHelpIndexWidget * obj = static_cast< QHelpIndexWidget * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->activateCurrentItem();
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
void filterIndices( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_FILTERINDICES )
{
  QHelpIndexWidget * obj = static_cast< QHelpIndexWidget * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && HB_ISCHAR( 1 ) && ( HB_ISCHAR( 2 ) || HB_ISNIL( 2 ) ) )
    {
#endif
      obj->filterIndices( PQSTRING( 1 ), OPQSTRING( 2, QString() ) );
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

void QHelpIndexWidgetSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHELPINDEXWIDGET_ONLINKACTIVATED )
{
  QHelpIndexWidgetSlots_connect_signal( "linkActivated(QUrl,QString)", "linkActivated(QUrl,QString)" );
}

#pragma ENDDUMP
