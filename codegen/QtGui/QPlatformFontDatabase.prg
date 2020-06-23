%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

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

$prototypeV2=virtual QStringList addApplicationFont( const QByteArray & fontData, const QString & fileName )

$prototypeV2=virtual QString fontDir() const

$prototypeV2=virtual QFontEngine * fontEngine( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )

$prototypeV2=virtual void populateFontDatabase()

$prototypeV2=virtual void releaseHandle( void * handle )

$prototypeV2=static void registerFont( const QString & familyName, const QString & foundryName, QFont::Weight weight, QFont::Style style, QFont::Stretch stretch, bool antialiased, bool scalable, int pixelSize, const QSupportedWritingSystems & writingSystems, void * usrPtr )

$prototypeV2=static void registerQPF2Font( const QByteArray & dataArray, void * handle )

$extraMethods

#pragma ENDDUMP
