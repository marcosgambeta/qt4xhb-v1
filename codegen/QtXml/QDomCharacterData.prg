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

$beginClassFrom=QDomNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomCharacterData ()
$internalConstructor=|new1|

$prototype=QDomCharacterData ( const QDomCharacterData & x )
$internalConstructor=|new2|

/*
[1]QDomCharacterData ()
[2]QDomCharacterData ( const QDomCharacterData & x )
*/

HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomCharacterData_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    QDomCharacterData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=void appendData( const QString & arg )

$prototypeV2=QString data() const

$prototypeV2=void deleteData( unsigned long offset, unsigned long count )

$prototypeV2=void insertData( unsigned long offset, const QString & arg )

$prototypeV2=uint length() const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=void replaceData( unsigned long offset, unsigned long count, const QString & arg )

$prototypeV2=void setData( const QString & v )

$prototypeV2=QString substringData( unsigned long offset, unsigned long count )

#pragma ENDDUMP
