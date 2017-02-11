/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QXMLNAMEPOOL
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME

CLASS QSimpleXmlNodeModel INHERIT QAbstractXmlNodeModel

   DATA class_id INIT Class_Id_QSimpleXmlNodeModel
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD namePool
   METHOD baseUri
   METHOD elementById
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD stringValue
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSimpleXmlNodeModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
