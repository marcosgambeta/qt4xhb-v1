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

$prototype=QDomNamedNodeMap ()
$internalConstructor=|new1|

$prototype=QDomNamedNodeMap ( const QDomNamedNodeMap & n )
$internalConstructor=|new2|const QDomNamedNodeMap &

/*
[1]QDomNamedNodeMap ()
[2]QDomNamedNodeMap ( const QDomNamedNodeMap & n )
*/

HB_FUNC_STATIC( QDOMNAMEDNODEMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNamedNodeMap_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNAMEDNODEMAP(1) )
  {
    QDomNamedNodeMap_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool contains( const QString & name ) const

$prototypeV2=int count() const

$prototypeV2=bool isEmpty() const

$prototypeV2=QDomNode item( int index ) const

$prototypeV2=uint length() const

$prototypeV2=QDomNode namedItem( const QString & name ) const

$prototypeV2=QDomNode namedItemNS( const QString & nsURI, const QString & localName ) const

$prototypeV2=QDomNode removeNamedItem( const QString & name )

$prototypeV2=QDomNode removeNamedItemNS( const QString & nsURI, const QString & localName )

$prototypeV2=QDomNode setNamedItem( const QDomNode & newNode )

$prototypeV2=QDomNode setNamedItemNS( const QDomNode & newNode )

$prototypeV2=int size() const

$extraMethods

#pragma ENDDUMP
