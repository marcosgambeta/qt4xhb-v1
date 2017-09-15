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
$constructor=|new1|QObject *=0

/*
QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/
$constructor=|new2|const QString &,QObject *=0

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
$method=|QString|errorString|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QObject * instance ()
*/
$method=|QObject *|instance|

/*
bool isLoaded () const
*/
$method=|bool|isLoaded|

/*
bool load ()
*/
$method=|bool|load|

/*
QLibrary::LoadHints loadHints () const
*/
$method=|QLibrary::LoadHints|loadHints|

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setLoadHints ( QLibrary::LoadHints loadHints )
*/
$method=|void|setLoadHints|QLibrary::LoadHints

/*
bool unload ()
*/
$method=|bool|unload|

#pragma ENDDUMP
