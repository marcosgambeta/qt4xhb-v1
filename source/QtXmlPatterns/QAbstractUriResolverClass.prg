/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QAbstractUriResolver INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD resolve
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractUriResolver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractUriResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

HB_FUNC_STATIC( QABSTRACTURIRESOLVER_DELETE )
{
  QAbstractUriResolver * obj = (QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUrl resolve ( const QUrl & relative, const QUrl & baseURI ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTURIRESOLVER_RESOLVE )
{
  QAbstractUriResolver * obj = (QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->resolve ( *PQURL(1), *PQURL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}

#pragma ENDDUMP
