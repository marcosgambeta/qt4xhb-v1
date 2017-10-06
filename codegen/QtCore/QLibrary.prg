$header

#include "hbclass.ch"

CLASS QLibrary INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD resolve1
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion1
   METHOD setFileNameAndVersion2
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
   METHOD resolve2
   METHOD resolve3
   METHOD resolve4
   METHOD resolve
   METHOD isLibrary

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLibrary>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLibrary(QObject *parent = 0)
*/
$constructor=|new1|QObject *=0

/*
QLibrary(const QString& fileName, QObject *parent = 0)
*/
$constructor=|new2|const QString &,QObject *=0

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
*/
$constructor=|new3|const QString &,int,QObject *=0

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
*/
$constructor=|new4|const QString &,const QString &,QObject *=0

//[1]QLibrary(QObject *parent = 0)
//[2]QLibrary(const QString& fileName, QObject *parent = 0)
//[3]QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
//[4]QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)

HB_FUNC_STATIC( QLIBRARY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLIBRARY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void *resolve(const char *symbol)
*/
$method=|void *|resolve,resolve1|const char *

/*
bool load()
*/
$method=|bool|load|

/*
bool unload()
*/
$method=|bool|unload|

/*
bool isLoaded() const
*/
$method=|bool|isLoaded|

/*
void setFileName(const QString &fileName)
*/
$method=|void|setFileName|const QString &

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
void setFileNameAndVersion(const QString &fileName, int verNum)
*/
$method=|void|setFileNameAndVersion,setFileNameAndVersion1|const QString &,int

/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
$method=|void|setFileNameAndVersion,setFileNameAndVersion2|const QString &,const QString &

//[1]void setFileNameAndVersion(const QString &fileName, int verNum)
//[2]void setFileNameAndVersion(const QString &fileName, const QString &version)

HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLIBRARY_SETFILENAMEANDVERSION1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLIBRARY_SETFILENAMEANDVERSION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
void setLoadHints(LoadHints hints)
*/
$method=|void|setLoadHints|QLibrary::LoadHints

/*
LoadHints loadHints() const
*/
$method=|QLibrary::LoadHints|loadHints|

/*
static void *resolve(const QString &fileName, const char *symbol)
*/
$staticMethod=|void *|resolve,resolve2|const QString &,const char *

/*
static void *resolve(const QString &fileName, int verNum, const char *symbol)
*/
$staticMethod=|void *|resolve,resolve3|const QString &,int,const char *

/*
static void *resolve(const QString &fileName, const QString &version, const char *symbol)
*/
$staticMethod=|void *|resolve,resolve4|const QString &,const QString &,const char *

//[1]void *resolve(const char *symbol)
//[2]static void *resolve(const QString &fileName, const char *symbol)
//[3]static void *resolve(const QString &fileName, int verNum, const char *symbol)
//[4]static void *resolve(const QString &fileName, const QString &version, const char *symbol)

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE2 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE3 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QLIBRARY_RESOLVE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isLibrary(const QString &fileName)
*/
$staticMethod=|bool|isLibrary|const QString &

#pragma ENDDUMP
