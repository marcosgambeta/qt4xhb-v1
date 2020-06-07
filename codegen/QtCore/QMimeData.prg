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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtCore/QUrl>

$prototype=QMimeData ()
$constructor=|new|

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant colorData () const
$method=|QVariant|colorData|

$prototype=QByteArray data ( const QString & mimeType ) const
$method=|QByteArray|data|const QString &

$prototype=virtual QStringList formats () const
$virtualMethod=|QStringList|formats|

$prototypeV2=bool hasColor() const

$prototype=virtual bool hasFormat ( const QString & mimeType ) const
$virtualMethod=|bool|hasFormat|const QString &

$prototypeV2=bool hasHtml() const

$prototypeV2=bool hasImage() const

$prototypeV2=bool hasText() const

$prototypeV2=bool hasUrls() const

$prototypeV2=QString html() const

$prototype=QVariant imageData () const
$method=|QVariant|imageData|

$prototype=void removeFormat ( const QString & mimeType )
$method=|void|removeFormat|const QString &

$prototype=void setColorData ( const QVariant & color )
$method=|void|setColorData|const QVariant &

$prototype=void setData ( const QString & mimeType, const QByteArray & data )
$method=|void|setData|const QString &,const QByteArray &

$prototype=void setHtml ( const QString & html )
$method=|void|setHtml|const QString &

$prototype=void setImageData ( const QVariant & image )
$method=|void|setImageData|const QVariant &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setUrls ( const QList<QUrl> & urls )
$method=|void|setUrls|const QList<QUrl> &

$prototypeV2=QString text() const

$prototype=QList<QUrl> urls () const
$method=|QList<QUrl>|urls|

#pragma ENDDUMP
