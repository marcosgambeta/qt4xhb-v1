/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QFileSystemWatcher INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPath
   METHOD addPaths
   METHOD directories
   METHOD files
   METHOD removePath
   METHOD removePaths

   METHOD onDirectoryChanged
   METHOD onFileChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileSystemWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QFileSystemWatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QStringList>

/*
QFileSystemWatcher(QObject * parent = 0)
*/
void QFileSystemWatcher_new1()
{
  QFileSystemWatcher * obj = new QFileSystemWatcher( OPQOBJECT(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/
void QFileSystemWatcher_new2()
{
  QFileSystemWatcher * obj = new QFileSystemWatcher( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QFileSystemWatcher(QObject * parent = 0)
[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILESYSTEMWATCHER_DELETE )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
void addPath ( const QString & path )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->addPath( PQSTRING(1) );
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
void addPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->addPaths( PQSTRINGLIST(1) );
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
QStringList directories () const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_DIRECTORIES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->directories() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList files () const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_FILES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->files() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removePath ( const QString & path )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->removePath( PQSTRING(1) );
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
void removePaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->removePaths( PQSTRINGLIST(1) );
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

void QFileSystemWatcherSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QFILESYSTEMWATCHER_ONDIRECTORYCHANGED )
{
  QFileSystemWatcherSlots_connect_signal( "directoryChanged(QString)", "directoryChanged(QString)" );
}

HB_FUNC_STATIC( QFILESYSTEMWATCHER_ONFILECHANGED )
{
  QFileSystemWatcherSlots_connect_signal( "fileChanged(QString)", "fileChanged(QString)" );
}

#pragma ENDDUMP
