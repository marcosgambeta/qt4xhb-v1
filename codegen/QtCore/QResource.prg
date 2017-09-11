$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QLOCALE
#endif

CLASS QResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD data
   METHOD fileName
   METHOD isCompressed
   METHOD isValid
   METHOD locale
   METHOD setFileName
   METHOD setLocale
   METHOD size
   METHOD registerResource
   METHOD unregisterResource

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QResource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
*/
HB_FUNC_STATIC( QRESOURCE_NEW )
{
  QLocale par2 = ISNIL(2)? QLocale() : *(QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QResource * o = new QResource ( OPQSTRING(1,QString()), par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
QString absoluteFilePath () const
*/
$method=|QString|absoluteFilePath|

/*
const uchar * data () const
*/
HB_FUNC_STATIC( QRESOURCE_DATA )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uchar * ptr = obj->data ();
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );
  }
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool isCompressed () const
*/
HB_FUNC_STATIC( QRESOURCE_ISCOMPRESSED )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCompressed () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QRESOURCE_ISVALID )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QLocale locale () const
*/
HB_FUNC_STATIC( QRESOURCE_LOCALE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setFileName ( const QString & file )
*/
$method=|void|setFileName|const QString &

/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QRESOURCE_SETLOCALE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QRESOURCE_SIZE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}



/*
bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC_STATIC( QRESOURCE_REGISTERRESOURCE )
{
  RBOOL( QResource::registerResource ( PQSTRING(1), OPQSTRING(2,QString()) ) );
}



/*
bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC_STATIC( QRESOURCE_UNREGISTERRESOURCE )
{
  RBOOL( QResource::unregisterResource ( PQSTRING(1), OPQSTRING(2,QString()) ) );
}

$extraMethods

#pragma ENDDUMP
