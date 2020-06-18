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

$prototype=void addPluginPath ( const QString & path )
$method=|void|addPluginPath|const QString &

$prototypeV2=QStringList availableLayouts() const

$prototypeV2=QStringList availableWidgets() const

$prototypeV2=void clearPluginPaths()

$prototype=virtual QAction * createAction ( QObject * parent = 0, const QString & name = QString() )
$virtualMethod=|QAction *|createAction|QObject *=0,const QString &=QString()

$prototype=virtual QActionGroup * createActionGroup ( QObject * parent = 0, const QString & name = QString() )
$virtualMethod=|QActionGroup *|createActionGroup|QObject *=0,const QString &=QString()

$prototype=virtual QLayout * createLayout ( const QString & className, QObject * parent = 0, const QString & name = QString() )
$virtualMethod=|QLayout *|createLayout|const QString &,QObject *=0,const QString &=QString()

$prototype=virtual QWidget * createWidget ( const QString & className, QWidget * parent = 0, const QString & name = QString() )
$virtualMethod=|QWidget *|createWidget|const QString &,QWidget *=0,const QString &=QString()

$prototypeV2=bool isLanguageChangeEnabled() const

$prototype=QWidget * load ( QIODevice * device, QWidget * parentWidget = 0 )
$method=|QWidget *|load|QIODevice *,QWidget *=0

$prototypeV2=QStringList pluginPaths() const

$prototype=void setLanguageChangeEnabled ( bool enabled )
$method=|void|setLanguageChangeEnabled|bool

$prototype=void setWorkingDirectory ( const QDir & dir )
$method=|void|setWorkingDirectory|const QDir &

$prototypeV2=QDir workingDirectory() const

#pragma ENDDUMP
