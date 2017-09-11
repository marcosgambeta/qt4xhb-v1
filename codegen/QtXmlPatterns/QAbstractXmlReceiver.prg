$header

#include "hbclass.ch"

CLASS QAbstractXmlReceiver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractXmlReceiver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void atomicValue ( const QVariant & value ) = 0
*/
$virtualMethod=|void|atomicValue|const QVariant &

/*
virtual void attribute ( const QXmlName & name, const QStringRef & value ) = 0
*/
$virtualMethod=|void|attribute|const QXmlName &,const QStringRef &

/*
virtual void characters ( const QStringRef & value ) = 0
*/
$virtualMethod=|void|characters|const QStringRef &

/*
virtual void comment ( const QString & value ) = 0
*/
$virtualMethod=|void|comment|const QString &

/*
virtual void endDocument () = 0
*/
$virtualMethod=|void|endDocument|

/*
virtual void endElement () = 0
*/
$virtualMethod=|void|endElement|

/*
virtual void endOfSequence () = 0
*/
$virtualMethod=|void|endOfSequence|

/*
virtual void namespaceBinding ( const QXmlName & name ) = 0
*/
$virtualMethod=|void|namespaceBinding|const QXmlName &

/*
virtual void processingInstruction ( const QXmlName & target, const QString & value ) = 0
*/
$virtualMethod=|void|processingInstruction|const QXmlName &,const QString &

/*
virtual void startDocument () = 0
*/
$virtualMethod=|void|startDocument|

/*
virtual void startElement ( const QXmlName & name ) = 0
*/
$virtualMethod=|void|startElement|const QXmlName &

/*
virtual void startOfSequence () = 0
*/
$virtualMethod=|void|startOfSequence|

$extraMethods

#pragma ENDDUMP
