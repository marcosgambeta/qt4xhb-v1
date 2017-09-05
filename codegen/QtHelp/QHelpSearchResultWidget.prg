$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpSearchResultWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD linkAt
   METHOD onRequestShowLink
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpSearchResultWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QUrl linkAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_LINKAT )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->linkAt ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}





#pragma ENDDUMP
