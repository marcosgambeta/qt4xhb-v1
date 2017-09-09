$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpIndexModel INHERIT QStringListModel

   DATA self_destruction INIT .F.

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex
   METHOD onIndexCreated
   METHOD onIndexCreationStarted
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpIndexModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
void createIndex ( const QString & customFilterName )
*/
$method=|void|createIndex|const QString &

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
    RBOOL( obj->isCreatingIndex () );
  }
}






#pragma ENDDUMP
