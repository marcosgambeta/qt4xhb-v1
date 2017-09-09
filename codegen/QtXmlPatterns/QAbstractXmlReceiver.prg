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
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ATOMICVALUE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->atomicValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void attribute ( const QXmlName & name, const QStringRef & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ATTRIBUTE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * par2 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->attribute ( *PQXMLNAME(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void characters ( const QStringRef & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_CHARACTERS )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->characters ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_NAMESPACEBINDING )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->namespaceBinding ( *PQXMLNAME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void processingInstruction ( const QXmlName & target, const QString & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_PROCESSINGINSTRUCTION )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->processingInstruction ( *PQXMLNAME(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startDocument () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_STARTDOCUMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startElement ( const QXmlName & name ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_STARTELEMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startElement ( *PQXMLNAME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startOfSequence () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_STARTOFSEQUENCE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
