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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
$constructor=|new|const QString &=QString(),const QLocale &=QLocale()

$deleteMethod

$prototypeV2=QString absoluteFilePath() const

$prototypeV2=const uchar * data() const

$prototypeV2=QString fileName() const

$prototypeV2=bool isCompressed() const

$prototypeV2=bool isValid() const

$prototypeV2=QLocale locale() const

$prototypeV2=void setFileName( const QString & file )

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=qint64 size() const

$prototype=static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|registerResource|const QString &,const QString &=QString()

$prototype=static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|unregisterResource|const QString &,const QString &=QString()

$extraMethods

#pragma ENDDUMP
