/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
REQUEST QHELPSEARCHQUERYWIDGET
REQUEST QHELPSEARCHRESULTWIDGET
#endif

CLASS QHelpSearchEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD hitCount
   METHOD query
   METHOD queryWidget
   METHOD resultWidget
   METHOD cancelIndexing
   METHOD cancelSearching
   METHOD reindexDocumentation
   METHOD search

   METHOD onIndexingFinished
   METHOD onIndexingStarted
   METHOD onSearchingFinished
   METHOD onSearchingStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpSearchEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtHelp/QHelpSearchEngine>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtHelp/QHelpSearchQueryWidget>
#include <QtHelp/QHelpSearchResultWidget>

/*
QHelpSearchEngine( QHelpEngineCore * helpEngine, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_NEW )
{
  if( ISBETWEEN(1, 2) && ISQHELPENGINECORE(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    QHelpSearchEngine * obj = new QHelpSearchEngine( PQHELPENGINECORE(1), OPQOBJECT( 2, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QHELPSEARCHENGINE_DELETE )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int hitCount() const
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_HITCOUNT )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->hitCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QList<QHelpSearchQuery> query() const
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_QUERY )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QHelpSearchQuery> list = obj->query();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QHELPSEARCHQUERY");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemPutPtr( NULL, new QHelpSearchQuery( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemPutL( NULL, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QHELPSEARCHQUERY", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QHelpSearchQueryWidget * queryWidget()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_QUERYWIDGET )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QHelpSearchQueryWidget * ptr = obj->queryWidget();
      Qt4xHb::createReturnQObjectClass(ptr, "QHELPSEARCHQUERYWIDGET");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QHelpSearchResultWidget * resultWidget()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_RESULTWIDGET )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QHelpSearchResultWidget * ptr = obj->resultWidget();
      Qt4xHb::createReturnQObjectClass(ptr, "QHELPSEARCHRESULTWIDGET");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void cancelIndexing()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_CANCELINDEXING )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancelIndexing();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void cancelSearching()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_CANCELSEARCHING )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancelSearching();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void reindexDocumentation()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_REINDEXDOCUMENTATION )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reindexDocumentation();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void search( const QList<QHelpSearchQuery> & queryList )
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_SEARCH )
{
  QHelpSearchEngine * obj = qobject_cast<QHelpSearchEngine*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QHelpSearchQuery> par1;
      PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QHelpSearchQuery*>( hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) ) );
      }
      obj->search( par1 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QHelpSearchEngineSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QHELPSEARCHENGINE_ONINDEXINGFINISHED )
{
  QHelpSearchEngineSlots_connect_signal("indexingFinished()", "indexingFinished()");
}

HB_FUNC_STATIC( QHELPSEARCHENGINE_ONINDEXINGSTARTED )
{
  QHelpSearchEngineSlots_connect_signal("indexingStarted()", "indexingStarted()");
}

HB_FUNC_STATIC( QHELPSEARCHENGINE_ONSEARCHINGFINISHED )
{
  QHelpSearchEngineSlots_connect_signal("searchingFinished(int)", "searchingFinished(int)");
}

HB_FUNC_STATIC( QHELPSEARCHENGINE_ONSEARCHINGSTARTED )
{
  QHelpSearchEngineSlots_connect_signal("searchingStarted()", "searchingStarted()");
}

#pragma ENDDUMP
