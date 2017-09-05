$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QPluginLoader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD errorString
   METHOD fileName
   METHOD instance
   METHOD isLoaded
   METHOD load
   METHOD loadHints
   METHOD setFileName
   METHOD setLoadHints
   METHOD unload
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPluginLoader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPluginLoader ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPLUGINLOADER_NEW1 )
{
  QPluginLoader * o = new QPluginLoader ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPLUGINLOADER_NEW2 )
{
  QPluginLoader * o = new QPluginLoader ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QPluginLoader ( QObject * parent = 0 )
//[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPLUGINLOADER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPLUGINLOADER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString errorString () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_ERRORSTRING )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_FILENAME )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
QObject * instance ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_INSTANCE )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->instance ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
bool isLoaded () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_ISLOADED )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLoaded () );
  }
}


/*
bool load ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_LOAD )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load () );
  }
}


/*
QLibrary::LoadHints loadHints () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_LOADHINTS )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->loadHints () );
  }
}


/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QPLUGINLOADER_SETFILENAME )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLoadHints ( QLibrary::LoadHints loadHints )
*/
HB_FUNC_STATIC( QPLUGINLOADER_SETLOADHINTS )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLoadHints ( (QLibrary::LoadHints) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool unload ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_UNLOAD )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unload () );
  }
}






#pragma ENDDUMP
