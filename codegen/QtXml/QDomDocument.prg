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

$prototype=QDomDocument ()
$internalConstructor=|new1|

$prototype=QDomDocument ( const QString & name )
$internalConstructor=|new2|const QString &

$prototype=QDomDocument ( const QDomDocumentType & doctype )
$internalConstructor=|new3|const QDomDocumentType &

$prototype=QDomDocument ( const QDomDocument & x )
$internalConstructor=|new4|const QDomDocument &

/*
[1]QDomDocument ()
[2]QDomDocument ( const QString & name )
[3]QDomDocument ( const QDomDocumentType & doctype )
[4]QDomDocument ( const QDomDocument & x )
*/

HB_FUNC_STATIC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocument_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDomDocument_new2();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocument_new3();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    QDomDocument_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QDomAttr createAttribute ( const QString & name )
$method=|QDomAttr|createAttribute|const QString &

$prototype=QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
$method=|QDomAttr|createAttributeNS|const QString &,const QString &

$prototype=QDomCDATASection createCDATASection ( const QString & value )
$method=|QDomCDATASection|createCDATASection|const QString &

$prototype=QDomComment createComment ( const QString & value )
$method=|QDomComment|createComment|const QString &

$prototype=QDomDocumentFragment createDocumentFragment ()
$method=|QDomDocumentFragment|createDocumentFragment|

$prototype=QDomElement createElement ( const QString & tagName )
$method=|QDomElement|createElement|const QString &

$prototype=QDomElement createElementNS ( const QString & nsURI, const QString & qName )
$method=|QDomElement|createElementNS|const QString &,const QString &

$prototype=QDomEntityReference createEntityReference ( const QString & name )
$method=|QDomEntityReference|createEntityReference|const QString &

$prototype=QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
$method=|QDomProcessingInstruction|createProcessingInstruction|const QString &,const QString &

$prototype=QDomText createTextNode ( const QString & value )
$method=|QDomText|createTextNode|const QString &

$prototype=QDomDocumentType doctype () const
$method=|QDomDocumentType|doctype|

$prototype=QDomElement documentElement () const
$method=|QDomElement|documentElement|

$prototype=QDomElement elementById ( const QString & elementId )
$method=|QDomElement|elementById|const QString &

$prototype=QDomNodeList elementsByTagName ( const QString & tagname ) const
$method=|QDomNodeList|elementsByTagName|const QString &

$prototype=QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
$method=|QDomNodeList|elementsByTagNameNS|const QString &,const QString &

$prototype=QDomImplementation implementation () const
$method=|QDomImplementation|implementation|

$prototype=QDomNode importNode ( const QDomNode & importedNode, bool deep )
$method=|QDomNode|importNode|const QDomNode &,bool

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

%% TODO: implementar setContent (QString *=0)

$prototype=bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent1|const QByteArray &,bool,QString *=0,int *=0,int *=0

$prototype=bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent2|const QString &,bool,QString *=0,int *=0,int *=0

$prototype=bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent3|QIODevice *,bool,QString *=0,int *=0,int *=0

$prototype=bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent4|QXmlInputSource *,bool,QString *=0,int *=0,int *=0

$prototype=bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent5|const QString &,QString *=0,int *=0,int *=0

$prototype=bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent6|const QByteArray &,QString *=0,int *=0,int *=0

$prototype=bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent7|QIODevice *,QString *=0,int *=0,int *=0

$prototype=bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
%% $method=|bool|setContent,setContent8|QXmlInputSource *,QXmlReader *,QString *=0,int *=0,int *=0

/*
[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[5]bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[7]bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

%% HB_FUNC_STATIC( QDOMDOCUMENT_SETCONTENT )
%% {
%%   if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISLOG(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT1 );
%%   }
%%   else if( ISBETWEEN(2,5) && ISCHAR(1) && ISLOG(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT2 );
%%   }
%%   else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISLOG(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT3 );
%%   }
%%   else if( ISBETWEEN(2,5) && ISQXMLINPUTSOURCE(1) && ISLOG(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT4 );
%%   }
%%   else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT5 );
%%   }
%%   else if( ISBETWEEN(1,4) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT6 );
%%   }
%%   else if( ISBETWEEN(1,4) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT7 );
%%   }
%%   else if( ISBETWEEN(2,5) && ISQXMLINPUTSOURCE(1) && ISQXMLREADER(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
%%   {
%%     HB_FUNC_EXEC( QDOMDOCUMENT_SETCONTENT8 );
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%%
%% }
%% $addMethod=setContext

$prototype=QByteArray toByteArray ( int indent = 1 ) const
$method=|QByteArray|toByteArray|int=1

$prototype=QString toString ( int indent = 1 ) const
$method=|QString|toString|int=1

#pragma ENDDUMP
