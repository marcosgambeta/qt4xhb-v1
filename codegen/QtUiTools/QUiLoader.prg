%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtUiTools

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtCore/QDir>
#include <QtGui/QAction>
#include <QtGui/QLayout>

$prototype=QUiLoader ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void addPluginPath( const QString & path )

$prototypeV2=QStringList availableLayouts() const

$prototypeV2=QStringList availableWidgets() const

$prototypeV2=void clearPluginPaths()

$prototypeV2=virtual QAction * createAction( QObject * parent = 0, const QString & name = QString() )

$prototypeV2=virtual QActionGroup * createActionGroup( QObject * parent = 0, const QString & name = QString() )

$prototypeV2=virtual QLayout * createLayout( const QString & className, QObject * parent = 0, const QString & name = QString() )

$prototypeV2=virtual QWidget * createWidget( const QString & className, QWidget * parent = 0, const QString & name = QString() )

$prototypeV2=bool isLanguageChangeEnabled() const

$prototypeV2=QWidget * load( QIODevice * device, QWidget * parentWidget = 0 )

$prototypeV2=QStringList pluginPaths() const

$prototypeV2=void setLanguageChangeEnabled( bool enabled )

$prototypeV2=void setWorkingDirectory( const QDir & dir )

$prototypeV2=QDir workingDirectory() const

#pragma ENDDUMP
