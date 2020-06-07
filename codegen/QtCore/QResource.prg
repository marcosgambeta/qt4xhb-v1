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

$prototype=const uchar * data () const
$method=|const uchar *|data|

$prototypeV2=QString fileName() const

$prototypeV2=bool isCompressed() const

$prototypeV2=bool isValid() const

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setFileName ( const QString & file )
$method=|void|setFileName|const QString &

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=qint64 size () const
$method=|qint64|size|

$prototype=static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|registerResource|const QString &,const QString &=QString()

$prototype=static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|unregisterResource|const QString &,const QString &=QString()

$extraMethods

#pragma ENDDUMP
