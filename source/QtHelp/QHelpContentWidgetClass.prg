/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpContentWidget INHERIT QTreeView

   DATA class_id INIT Class_Id_QHelpContentWidget
   DATA self_destruction INIT .F.

   METHOD indexOf
   METHOD onLinkActivated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpContentWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpContentWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"



/*
QModelIndex indexOf ( const QUrl & link )
*/
HB_FUNC_STATIC( QHELPCONTENTWIDGET_INDEXOF )
{
  QHelpContentWidget * obj = (QHelpContentWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexOf ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}





#pragma ENDDUMP
