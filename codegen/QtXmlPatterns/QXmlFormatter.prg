$header

#include "hbclass.ch"

CLASS QXmlFormatter INHERIT QXmlSerializer

   METHOD new
   METHOD indentationDepth
   METHOD setIndentationDepth
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlFormatter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice )
*/
$constructor=|new|const QXmlQuery &,QIODevice *

/*
int indentationDepth () const
*/
$method=|int|indentationDepth|

/*
void setIndentationDepth ( int depth )
*/
$method=|void|setIndentationDepth|int

/*
virtual void atomicValue ( const QVariant & value )
*/
$virtualMethod=|void|atomicValue|const QVariant &

/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
$virtualMethod=|void|attribute|const QXmlName &,const QStringRef &

/*
virtual void characters ( const QStringRef & value )
*/
$virtualMethod=|void|characters|const QStringRef &

/*
virtual void comment ( const QString & value )
*/
$virtualMethod=|void|comment|const QString &

/*
virtual void endDocument ()
*/
$virtualMethod=|void|endDocument|

/*
virtual void endElement ()
*/
$virtualMethod=|void|endElement|

/*
virtual void endOfSequence ()
*/
$virtualMethod=|void|endOfSequence|

/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
$virtualMethod=|void|processingInstruction|const QXmlName &,const QString &

/*
virtual void startDocument ()
*/
$virtualMethod=|void|startDocument|

/*
virtual void startElement ( const QXmlName & name )
*/
$virtualMethod=|void|startElement|const QXmlName &

/*
virtual void startOfSequence ()
*/
$virtualMethod=|void|startOfSequence|

#pragma ENDDUMP
