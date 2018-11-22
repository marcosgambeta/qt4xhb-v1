%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
$internalConstructor=|new1|const QString &=QString(),int=-1,int=-1,const QString &=QString(),const QString &=QString()

$prototype=QXmlParseException ( const QXmlParseException & other )
$internalConstructor=|new2|const QXmlParseException &

//[1]QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
//[2]QXmlParseException ( const QXmlParseException & other )

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW )
{
  if( ISBETWEEN(0,5) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    QXmlParseException_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
  {
    QXmlParseException_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int columnNumber () const
$method=|int|columnNumber|

$prototype=int lineNumber () const
$method=|int|lineNumber|

$prototype=QString message () const
$method=|QString|message|

$prototype=QString publicId () const
$method=|QString|publicId|

$prototype=QString systemId () const
$method=|QString|systemId|

$extraMethods

#pragma ENDDUMP
