$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLRESULT
REQUEST QVARIANT
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD
#endif

CLASS QSqlDriver INHERIT QObject

   METHOD delete
   METHOD beginTransaction
   METHOD close
   METHOD commitTransaction
   METHOD createResult
   METHOD escapeIdentifier
   METHOD formatValue
   METHOD handle
   METHOD hasFeature
   METHOD isIdentifierEscaped
   METHOD isOpen
   METHOD isOpenError
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD open
   METHOD primaryIndex
   METHOD record
   METHOD rollbackTransaction
   METHOD setNumericalPrecisionPolicy
   METHOD sqlStatement
   METHOD stripDelimiters
   METHOD subscribeToNotification
   METHOD subscribedToNotifications
   METHOD tables
   METHOD unsubscribeFromNotification

   METHOD onNotification

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlDriver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlError>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QVariant>

$deleteMethod

/*
virtual bool beginTransaction ()
*/
$virtualMethod=|bool|beginTransaction|

/*
virtual void close () = 0
*/
$virtualMethod=|void|close|

/*
virtual bool commitTransaction ()
*/
$virtualMethod=|bool|commitTransaction|

/*
virtual QSqlResult * createResult () const = 0
*/
$virtualMethod=|QSqlResult *|createResult|

/*
virtual QString escapeIdentifier ( const QString & identifier, IdentifierType type ) const
*/
$virtualMethod=|QString|escapeIdentifier|const QString &,QSqlDriver::IdentifierType

/*
virtual QString formatValue ( const QSqlField & field, bool trimStrings = false ) const
*/
$virtualMethod=|QString|formatValue|const QSqlField &,bool=false

/*
virtual QVariant handle () const
*/
$virtualMethod=|QVariant|handle|

/*
virtual bool hasFeature ( DriverFeature feature ) const = 0
*/
$virtualMethod=|bool|hasFeature|QSqlDriver::DriverFeature

/*
bool isIdentifierEscaped ( const QString & identifier, IdentifierType type ) const
*/
$method=|bool|isIdentifierEscaped|const QString &,QSqlDriver::IdentifierType

/*
virtual bool isOpen () const
*/
$virtualMethod=|bool|isOpen|

/*
bool isOpenError () const
*/
$method=|bool|isOpenError|

/*
QSqlError lastError () const
*/
$method=|QSqlError|lastError|

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
*/
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

/*
virtual bool open ( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0
*/
$virtualMethod=|bool|open|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString(),int=-1,const QString &=QString()

/*
virtual QSqlIndex primaryIndex ( const QString & tableName ) const
*/
$virtualMethod=|QSqlIndex|primaryIndex|const QString &

/*
virtual QSqlRecord record ( const QString & tableName ) const
*/
$virtualMethod=|QSqlRecord|record|const QString &

/*
virtual bool rollbackTransaction ()
*/
$virtualMethod=|bool|rollbackTransaction|

/*
void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

/*
virtual QString sqlStatement ( StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const
*/
$virtualMethod=|QString|sqlStatement|QSqlDriver::StatementType,const QString &,const QSqlRecord &,bool

/*
QString stripDelimiters ( const QString & identifier, IdentifierType type ) const
*/
$method=|QString|stripDelimiters|const QString &,QSqlDriver::IdentifierType

/*
bool subscribeToNotification ( const QString & name )
*/
$method=|bool|subscribeToNotification|const QString &

/*
QStringList subscribedToNotifications () const
*/
$method=|QStringList|subscribedToNotifications|

/*
virtual QStringList tables ( QSql::TableType tableType ) const
*/
$virtualMethod=|QStringList|tables|QSql::TableType

/*
bool unsubscribeFromNotification ( const QString & name )
*/
$method=|bool|unsubscribeFromNotification|const QString &

#pragma ENDDUMP
