%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSql

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

#include <QtSql/QSqlError>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlRecord>
#include <QtCore/QVariant>

$deleteMethod

$prototypeV2=virtual bool beginTransaction()

$prototypeV2=virtual void close() = 0

$prototypeV2=virtual bool commitTransaction()

$prototypeV2=virtual QSqlResult * createResult() const = 0

$prototypeV2=virtual QString escapeIdentifier( const QString & identifier, QSqlDriver::IdentifierType type ) const

$prototypeV2=virtual QString formatValue( const QSqlField & field, bool trimStrings = false ) const

$prototypeV2=virtual QVariant handle() const

$prototypeV2=virtual bool hasFeature( QSqlDriver::DriverFeature feature ) const = 0

$prototypeV2=bool isIdentifierEscaped( const QString & identifier, QSqlDriver::IdentifierType type ) const

$prototypeV2=virtual bool isOpen() const

$prototypeV2=bool isOpenError() const

$prototypeV2=QSqlError lastError() const

$prototypeV2=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const

$prototypeV2=virtual bool open( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0

$prototypeV2=virtual QSqlIndex primaryIndex( const QString & tableName ) const

$prototypeV2=virtual QSqlRecord record( const QString & tableName ) const

$prototypeV2=virtual bool rollbackTransaction()

$prototypeV2=void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )

$prototypeV2=virtual QString sqlStatement( QSqlDriver::StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const

$prototypeV2=QString stripDelimiters( const QString & identifier, QSqlDriver::IdentifierType type ) const

$prototypeV2=bool subscribeToNotification( const QString & name )

$prototypeV2=QStringList subscribedToNotifications() const

$prototypeV2=virtual QStringList tables( QSql::TableType tableType ) const

$prototypeV2=bool unsubscribeFromNotification( const QString & name )

$beginSignals
$signal=|notification(QString)
$endSignals

#pragma ENDDUMP
