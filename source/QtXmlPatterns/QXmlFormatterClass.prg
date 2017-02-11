/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlFormatter INHERIT QXmlSerializer

   DATA class_id INIT Class_Id_QXmlFormatter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QXmlFormatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
