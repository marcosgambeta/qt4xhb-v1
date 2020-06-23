%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomImplementation ()
$internalConstructor=|new1|

$prototype=QDomImplementation ( const QDomImplementation & x )
$internalConstructor=|new2|const QDomImplementation &

/*
[1]QDomImplementation ()
[2]QDomImplementation ( const QDomImplementation & x )
*/

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomImplementation_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMIMPLEMENTATION(1) )
  {
    QDomImplementation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QDomDocument createDocument( const QString & nsURI, const QString & qName, const QDomDocumentType & doctype )

$prototypeV2=QDomDocumentType createDocumentType( const QString & qName, const QString & publicId, const QString & systemId )

$prototypeV2=bool hasFeature( const QString & feature, const QString & version ) const

$prototypeV2=bool isNull()

$prototypeV2=static QDomImplementation::InvalidDataPolicy invalidDataPolicy()

$prototypeV2=static void setInvalidDataPolicy( QDomImplementation::InvalidDataPolicy policy )

$extraMethods

#pragma ENDDUMP
