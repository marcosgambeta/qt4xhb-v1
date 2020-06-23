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

$beginClassFrom=QSharedData

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtCore/QUrl>
#include <QtCore/QVector>
#include <QtXmlPatterns/QSourceLocation>

$deleteMethod

$prototypeV2=virtual QUrl baseUri( const QXmlNodeModelIndex & n ) const = 0

$prototypeV2=virtual QXmlNodeModelIndex::DocumentOrder compareOrder( const QXmlNodeModelIndex & ni1, const QXmlNodeModelIndex & ni2 ) const = 0

$prototypeV2=virtual QUrl documentUri( const QXmlNodeModelIndex & n ) const = 0

$prototypeV2=virtual QXmlNodeModelIndex elementById( const QXmlName & id ) const = 0

$prototypeV2=virtual QXmlNodeModelIndex::NodeKind kind( const QXmlNodeModelIndex & ni ) const = 0

$prototypeV2=virtual QXmlName name( const QXmlNodeModelIndex & ni ) const = 0

$prototypeV2=virtual QVector<QXmlName> namespaceBindings( const QXmlNodeModelIndex & n ) const = 0

$prototypeV2=virtual QVector<QXmlNodeModelIndex> nodesByIdref( const QXmlName & idref ) const = 0

$prototypeV2=virtual QXmlNodeModelIndex root( const QXmlNodeModelIndex & n ) const = 0

$prototypeV2=QSourceLocation sourceLocation( const QXmlNodeModelIndex & index ) const

$prototypeV2=virtual QString stringValue( const QXmlNodeModelIndex & n ) const = 0

$prototypeV2=virtual QVariant typedValue( const QXmlNodeModelIndex & node ) const = 0

#pragma ENDDUMP
