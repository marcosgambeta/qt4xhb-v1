%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QFileSystemWatcher(QObject * parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
$internalConstructor=|new2|const QStringList &,QObject *=0

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
$addMethod=new

$deleteMethod

$prototypeV2=void addPath( const QString & path )

$prototypeV2=void addPaths( const QStringList & paths )

$prototypeV2=QStringList directories() const

$prototypeV2=QStringList files() const

$prototypeV2=void removePath( const QString & path )

$prototypeV2=void removePaths( const QStringList & paths )

$beginSignals
$signal=|directoryChanged(QString)
$signal=|fileChanged(QString)
$endSignals

#pragma ENDDUMP
