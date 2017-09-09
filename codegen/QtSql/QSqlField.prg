$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSqlField

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD defaultValue
   METHOD isAutoValue
   METHOD isGenerated
   METHOD isNull
   METHOD isReadOnly
   METHOD isValid
   METHOD length
   METHOD name
   METHOD precision
   METHOD requiredStatus
   METHOD setAutoValue
   METHOD setDefaultValue
   METHOD setGenerated
   METHOD setLength
   METHOD setName
   METHOD setPrecision
   METHOD setReadOnly
   METHOD setRequired
   METHOD setRequiredStatus
   METHOD setType
   METHOD setValue
   METHOD type
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlField>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
*/
$internalConstructor=|new1|const QString &=QString(),QVariant::Type=QVariant::Invalid

/*
QSqlField ( const QSqlField & other )
*/
$internalConstructor=|new2|const QSqlField &

//[1]QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
//[2]QSqlField ( const QSqlField & other )

HB_FUNC_STATIC( QSQLFIELD_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(1)||ISNIL(1)) )
  {
    QSqlField_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    QSqlField_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
QVariant defaultValue () const
*/
$method=|QVariant|defaultValue|

/*
bool isAutoValue () const
*/
$method=|bool|isAutoValue|

/*
bool isGenerated () const
*/
$method=|bool|isGenerated|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int length () const
*/
$method=|int|length|

/*
QString name () const
*/
$method=|QString|name|

/*
int precision () const
*/
$method=|int|precision|

/*
RequiredStatus requiredStatus () const
*/
$method=|QSqlField::RequiredStatus|requiredStatus|

/*
void setAutoValue ( bool autoVal )
*/
$method=|void|setAutoValue|bool

/*
void setDefaultValue ( const QVariant & value )
*/
$method=|void|setDefaultValue|const QVariant &

/*
void setGenerated ( bool gen )
*/
$method=|void|setGenerated|bool

/*
void setLength ( int fieldLength )
*/
$method=|void|setLength|int

/*
void setName ( const QString & name )
*/
$method=|void|setName|const QString &

/*
void setPrecision ( int precision )
*/
$method=|void|setPrecision|int

/*
void setReadOnly ( bool readOnly )
*/
$method=|void|setReadOnly|bool

/*
void setRequired ( bool required )
*/
$method=|void|setRequired|bool

/*
void setRequiredStatus ( RequiredStatus required )
*/
$method=|void|setRequiredStatus|QSqlField::RequiredStatus

/*
void setType ( QVariant::Type type )
*/
$method=|void|setType|QVariant::Type

/*
void setValue ( const QVariant & value )
*/
$method=|void|setValue|const QVariant &

/*
QVariant::Type type () const
*/
$method=|QVariant::Type|type|

/*
QVariant value () const
*/
$method=|QVariant|value|

$extraMethods

#pragma ENDDUMP
