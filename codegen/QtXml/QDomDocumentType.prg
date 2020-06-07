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

$prototype=QDomDocumentType ()
$internalConstructor=|new1|

$prototype=QDomDocumentType ( const QDomDocumentType & n )
$internalConstructor=|new2|const QDomDocumentType &

/*
[1]QDomDocumentType ()
[2]QDomDocumentType ( const QDomDocumentType & n )
*/

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentType_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocumentType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototype=QDomNamedNodeMap entities () const
$method=|QDomNamedNodeMap|entities|

$prototypeV2=QString internalSubset() const

$prototypeV2=QString name() const

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomNamedNodeMap notations () const
$method=|QDomNamedNodeMap|notations|

$prototypeV2=QString publicId() const

$prototypeV2=QString systemId() const

#pragma ENDDUMP
