$header

#include "hbclass.ch"

CLASS QSqlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseText
   METHOD driverText
   METHOD isValid
   METHOD number
   METHOD setDatabaseText
   METHOD setDriverText
   METHOD setNumber
   METHOD setType
   METHOD text
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
*/
$internalConstructor=|new1|const QString &=QString(),const QString &=QString(),QSqlError::ErrorType=QSqlError::NoError,int=-1

/*
QSqlError ( const QSqlError & other )
*/
$internalConstructor=|new2|const QSqlError &

//[1]QSqlError ( const QString & driverText = QString(), const QString & databaseText = QString(), ErrorType type = NoError, int number = -1 )
//[2]QSqlError ( const QSqlError & other )

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISBETWEEN(0,4) && (ISCHAR(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QSqlError_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    QSqlError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString databaseText () const
*/
$method=|QString|databaseText|

/*
QString driverText () const
*/
$method=|QString|driverText|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int number () const
*/
$method=|int|number|

/*
void setDatabaseText ( const QString & databaseText )
*/
$method=|void|setDatabaseText|const QString &

/*
void setDriverText ( const QString & driverText )
*/
$method=|void|setDriverText|const QString &

/*
void setNumber ( int number )
*/
$method=|void|setNumber|int

/*
void setType ( ErrorType type )
*/
$method=|void|setType|QSqlError::ErrorType

/*
QString text () const
*/
$method=|QString|text|

/*
ErrorType type () const
*/
$method=|QSqlError::ErrorType|type|

$extraMethods

#pragma ENDDUMP
