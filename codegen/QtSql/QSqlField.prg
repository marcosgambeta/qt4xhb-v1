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

$prototypeV2=void clear()

$prototypeV2=QVariant defaultValue() const

$prototypeV2=bool isAutoValue() const

$prototypeV2=bool isGenerated() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isValid() const

$prototypeV2=int length() const

$prototypeV2=QString name() const

$prototypeV2=int precision() const

$prototypeV2=QSqlField::RequiredStatus requiredStatus() const

$prototypeV2=void setAutoValue( bool autoVal )

$prototypeV2=void setDefaultValue( const QVariant & value )

$prototypeV2=void setGenerated( bool gen )

$prototypeV2=void setLength( int fieldLength )

$prototypeV2=void setName( const QString & name )

$prototypeV2=void setPrecision( int precision )

$prototypeV2=void setReadOnly( bool readOnly )

$prototypeV2=void setRequired( bool required )

$prototypeV2=void setRequiredStatus( QSqlField::RequiredStatus required )

$prototypeV2=void setType( QVariant::Type type )

$prototypeV2=void setValue( const QVariant & value )

$prototypeV2=QVariant::Type type() const

$prototypeV2=QVariant value() const

$extraMethods

#pragma ENDDUMP
