%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractXmlNodeModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVector>

$deleteMethod

$prototypeV2=QXmlNamePool & namePool() const

$prototypeV2=virtual QUrl baseUri( const QXmlNodeModelIndex & node ) const

$prototypeV2=virtual QXmlNodeModelIndex elementById( const QXmlName & id ) const

$prototypeV2=virtual QVector<QXmlName> namespaceBindings( const QXmlNodeModelIndex & node ) const

$prototypeV2=virtual QVector<QXmlNodeModelIndex> nodesByIdref( const QXmlName & idref ) const

$prototypeV2=virtual QString stringValue( const QXmlNodeModelIndex & node ) const

#pragma ENDDUMP
