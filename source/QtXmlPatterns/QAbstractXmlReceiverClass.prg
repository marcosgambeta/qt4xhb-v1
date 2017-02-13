/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAbstractXmlReceiver

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractXmlReceiver
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QAbstractXmlReceiver
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAbstractXmlReceiver
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAbstractXmlReceiver
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAbstractXmlReceiver
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAbstractXmlReceiver
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAbstractXmlReceiver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractXmlReceiver>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_DELETE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void atomicValue ( const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ATOMICVALUE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->atomicValue ( *par1 );
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
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * par2 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->attribute ( *par1, *par2 );
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
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_COMMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->comment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endDocument () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ENDDOCUMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endDocument (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endElement () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ENDELEMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endElement (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endOfSequence () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ENDOFSEQUENCE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endOfSequence (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void namespaceBinding ( const QXmlName & name ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_NAMESPACEBINDING )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->namespaceBinding ( *par1 );
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
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    obj->processingInstruction ( *par1, par2 );
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
    obj->startDocument (  );
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
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->startElement ( *par1 );
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
    obj->startOfSequence (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
