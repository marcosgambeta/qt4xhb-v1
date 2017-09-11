$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMNODELIST
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QBYTEARRAY
#endif

CLASS QDomDocument INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   //METHOD setContent1
   //METHOD setContent2
   //METHOD setContent3
   //METHOD setContent4
   //METHOD setContent5
   //METHOD setContent6
   //METHOD setContent7
   //METHOD setContent8
   //METHOD setContent
   METHOD toByteArray
   METHOD toString

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomDocument>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomDocument ()
*/
$internalConstructor=|new1|

/*
QDomDocument ( const QString & name )
*/
$internalConstructor=|new2|const QString &

/*
QDomDocument ( const QDomDocumentType & doctype )
*/
$internalConstructor=|new3|const QDomDocumentType &

/*
QDomDocument ( const QDomDocument & x )
*/
$internalConstructor=|new4|const QDomDocument &

//[1]QDomDocument ()
//[2]QDomDocument ( const QString & name )
//[3]QDomDocument ( const QDomDocumentType & doctype )
//[4]QDomDocument ( const QDomDocument & x )

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

$deleteMethod

/*
QDomAttr createAttribute ( const QString & name )
*/
$method=|QDomAttr|createAttribute|const QString &

/*
QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
*/
$method=|QDomAttr|createAttributeNS|const QString &,const QString &

/*
QDomCDATASection createCDATASection ( const QString & value )
*/
$method=|QDomCDATASection|createCDATASection|const QString &

/*
QDomComment createComment ( const QString & value )
*/
$method=|QDomComment|createComment|const QString &

/*
QDomDocumentFragment createDocumentFragment ()
*/
$method=|QDomDocumentFragment|createDocumentFragment|

/*
QDomElement createElement ( const QString & tagName )
*/
$method=|QDomElement|createElement|const QString &

/*
QDomElement createElementNS ( const QString & nsURI, const QString & qName )
*/
$method=|QDomElement|createElementNS|const QString &,const QString &

/*
QDomEntityReference createEntityReference ( const QString & name )
*/
$method=|QDomEntityReference|createEntityReference|const QString &

/*
QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
*/
$method=|QDomProcessingInstruction|createProcessingInstruction|const QString &,const QString &

/*
QDomText createTextNode ( const QString & value )
*/
$method=|QDomText|createTextNode|const QString &

/*
QDomDocumentType doctype () const
*/
$method=|QDomDocumentType|doctype|

/*
QDomElement documentElement () const
*/
$method=|QDomElement|documentElement|

/*
QDomElement elementById ( const QString & elementId )
*/
$method=|QDomElement|elementById|const QString &

/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
$method=|QDomNodeList|elementsByTagName|const QString &

/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
*/
$method=|QDomNodeList|elementsByTagNameNS|const QString &,const QString &

/*
QDomImplementation implementation () const
*/
$method=|QDomImplementation|implementation|

/*
QDomNode importNode ( const QDomNode & importedNode, bool deep )
*/
$method=|QDomNode|importNode|const QDomNode &,bool

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

%% TODO: implementar setContent (QString *=0)

/*
bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent1|const QByteArray &,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent2|const QString &,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent3|QIODevice *,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent4|QXmlInputSource *,bool,QString *=0,int *=0,int *=0

/*
bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent5|const QString &,QString *=0,int *=0,int *=0

/*
bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent6|const QByteArray &,QString *=0,int *=0,int *=0

/*
bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent7|QIODevice *,QString *=0,int *=0,int *=0

/*
bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/
%% $method=|bool|setContent,setContent8|QXmlInputSource *,QXmlReader *,QString *=0,int *=0,int *=0

//[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[5]bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[7]bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )

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

/*
QByteArray toByteArray ( int indent = 1 ) const
*/
$method=|QByteArray|toByteArray|int=1

/*
QString toString ( int indent = 1 ) const
*/
$method=|QString|toString|int=1

#pragma ENDDUMP
