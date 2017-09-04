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

PROCEDURE destroyObject () CLASS QResource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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


HB_FUNC_STATIC( QRESOURCE_DELETE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString absoluteFilePath () const
*/
HB_FUNC_STATIC( QRESOURCE_ABSOLUTEFILEPATH )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->absoluteFilePath () );
  }
}


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
HB_FUNC_STATIC( QRESOURCE_FILENAME )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


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
HB_FUNC_STATIC( QRESOURCE_SETFILENAME )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
