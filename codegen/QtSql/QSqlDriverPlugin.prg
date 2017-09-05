$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlDriverPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QSqlDriver * create ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QSQLDRIVERPLUGIN_CREATE )
{
  QSqlDriverPlugin * obj = (QSqlDriverPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlDriver * ptr = obj->create ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QSQLDRIVER" );
  }
}


/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QSQLDRIVERPLUGIN_KEYS )
{
  QSqlDriverPlugin * obj = (QSqlDriverPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}




#pragma ENDDUMP
