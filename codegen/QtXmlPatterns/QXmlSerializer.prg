$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlSerializer INHERIT QAbstractXmlReceiver

   DATA self_destruction INIT .F.

   METHOD new
   METHOD codec
   METHOD outputDevice
   METHOD setCodec
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD namespaceBinding
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlSerializer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
*/
$constructor=|new|const QXmlQuery &,QIODevice *

/*
const QTextCodec * codec () const
*/
$method=|const QTextCodec *|codec|

/*
QIODevice * outputDevice () const
*/
$method=|QIODevice *|outputDevice|

/*
void setCodec ( const QTextCodec * outputCodec )
*/
$method=|void|setCodec|const QTextCodec *

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
virtual void namespaceBinding ( const QXmlName & nb )
*/
$virtualMethod=|void|namespaceBinding|const QXmlName &

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
