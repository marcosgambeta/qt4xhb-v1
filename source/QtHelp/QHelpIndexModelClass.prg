/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpIndexModel INHERIT QStringListModel

   DATA class_id INIT Class_Id_QHelpIndexModel
   DATA self_destruction INIT .F.

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex
   METHOD onIndexCreated
   METHOD onIndexCreationStarted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpIndexModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpIndexModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"



/*
void createIndex ( const QString & customFilterName )
*/
HB_FUNC_STATIC( QHELPINDEXMODEL_CREATEINDEX )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->createIndex ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex filter ( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXMODEL_FILTER )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->filter ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool isCreatingIndex () const
*/
HB_FUNC_STATIC( QHELPINDEXMODEL_ISCREATINGINDEX )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isCreatingIndex () );
  }
}






#pragma ENDDUMP
