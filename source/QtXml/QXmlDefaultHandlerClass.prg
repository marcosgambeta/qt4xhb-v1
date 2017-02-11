/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlDefaultHandler INHERIT QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

   DATA class_id INIT Class_Id_QXmlDefaultHandler
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD attributeDecl
   METHOD characters
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endDocument
   METHOD endElement
   METHOD endEntity
   METHOD endPrefixMapping
   METHOD error
   METHOD errorString
   METHOD externalEntityDecl
   METHOD fatalError
   METHOD ignorableWhitespace
   METHOD internalEntityDecl
   METHOD notationDecl
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startCDATA
   METHOD startDTD
   METHOD startDocument
   METHOD startElement
   METHOD startEntity
   METHOD startPrefixMapping
   METHOD unparsedEntityDecl
   METHOD warning
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlDefaultHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
