%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QStringList addApplicationFont ( const QByteArray & fontData, const QString & fileName )
$virtualMethod=|QStringList|addApplicationFont|const QByteArray &,const QString &

$prototype=virtual QString fontDir () const
$virtualMethod=|QString|fontDir|

$prototype=virtual QFontEngine * fontEngine ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
$virtualMethod=|QFontEngine *|fontEngine|const QByteArray &,qreal,QFont::HintingPreference

$prototype=virtual void populateFontDatabase ()
$virtualMethod=|void|populateFontDatabase|

$prototype=virtual void releaseHandle ( void * handle )
$virtualMethod=|void|releaseHandle|void *

$prototype=static void registerFont ( const QString & familyName, const QString & foundryName, QFont::Weight weight, QFont::Style style, QFont::Stretch stretch, bool antialiased, bool scalable, int pixelSize, const QSupportedWritingSystems & writingSystems, void * usrPtr )
$staticMethod=|void|registerFont|const QString &,const QString &,QFont::Weight,QFont::Style,QFont::Stretch,bool,bool,int,const QSupportedWritingSystems &,void *

$prototype=static void registerQPF2Font ( const QByteArray & dataArray, void * handle )
$staticMethod=|void|registerQPF2Font|const QByteArray &,void *

$extraMethods

#pragma ENDDUMP
