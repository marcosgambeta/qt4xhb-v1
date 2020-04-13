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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
$internalConstructor=|new1|const QString &=QString(),QVariant::Type=QVariant::Invalid

$prototype=QSqlField ( const QSqlField & other )
$internalConstructor=|new2|const QSqlField &

/*
[1]QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
[2]QSqlField ( const QSqlField & other )
*/

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
$addMethod=new

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant defaultValue () const
$method=|QVariant|defaultValue|

$prototype=bool isAutoValue () const
$method=|bool|isAutoValue|

$prototype=bool isGenerated () const
$method=|bool|isGenerated|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int length () const
$method=|int|length|

$prototype=QString name () const
$method=|QString|name|

$prototype=int precision () const
$method=|int|precision|

$prototype=RequiredStatus requiredStatus () const
$method=|QSqlField::RequiredStatus|requiredStatus|

$prototype=void setAutoValue ( bool autoVal )
$method=|void|setAutoValue|bool

$prototype=void setDefaultValue ( const QVariant & value )
$method=|void|setDefaultValue|const QVariant &

$prototype=void setGenerated ( bool gen )
$method=|void|setGenerated|bool

$prototype=void setLength ( int fieldLength )
$method=|void|setLength|int

$prototype=void setName ( const QString & name )
$method=|void|setName|const QString &

$prototype=void setPrecision ( int precision )
$method=|void|setPrecision|int

$prototype=void setReadOnly ( bool readOnly )
$method=|void|setReadOnly|bool

$prototype=void setRequired ( bool required )
$method=|void|setRequired|bool

$prototype=void setRequiredStatus ( RequiredStatus required )
$method=|void|setRequiredStatus|QSqlField::RequiredStatus

$prototype=void setType ( QVariant::Type type )
$method=|void|setType|QVariant::Type

$prototype=void setValue ( const QVariant & value )
$method=|void|setValue|const QVariant &

$prototype=QVariant::Type type () const
$method=|QVariant::Type|type|

$prototype=QVariant value () const
$method=|QVariant|value|

$extraMethods

#pragma ENDDUMP
