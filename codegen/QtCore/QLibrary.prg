$header

#include "hbclass.ch"

CLASS QLibrary INHERIT QObject

   METHOD new
   METHOD delete
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
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
$internalConstructor=|new1|QObject *=0

/*
QLibrary(const QString& fileName, QObject *parent = 0)
*/
$internalConstructor=|new2|const QString &,QObject *=0

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
*/
$internalConstructor=|new3|const QString &,int,QObject *=0

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
*/
$internalConstructor=|new4|const QString &,const QString &,QObject *=0

//[1]QLibrary(QObject *parent = 0)
//[2]QLibrary(const QString& fileName, QObject *parent = 0)
//[3]QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
//[4]QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)

HB_FUNC_STATIC( QLIBRARY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QLibrary_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QLibrary_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QLibrary_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QLibrary_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

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
$internalMethod=|void|setFileNameAndVersion,setFileNameAndVersion1|const QString &,int

/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
$internalMethod=|void|setFileNameAndVersion,setFileNameAndVersion2|const QString &,const QString &

//[1]void setFileNameAndVersion(const QString &fileName, int verNum)
//[2]void setFileNameAndVersion(const QString &fileName, const QString &version)

HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QLibrary_setFileNameAndVersion1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_setFileNameAndVersion2();
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
void *resolve(const char *symbol)
*/
$internalMethod=|void *|resolve,resolve1|const char *

/*
static void *resolve(const QString &fileName, const char *symbol)
*/
$internalStaticMethod=|void *|resolve,resolve2|const QString &,const char *

/*
static void *resolve(const QString &fileName, int verNum, const char *symbol)
*/
$internalStaticMethod=|void *|resolve,resolve3|const QString &,int,const char *

/*
static void *resolve(const QString &fileName, const QString &version, const char *symbol)
*/
$internalStaticMethod=|void *|resolve,resolve4|const QString &,const QString &,const char *

//[1]void *resolve(const char *symbol)
//[2]static void *resolve(const QString &fileName, const char *symbol)
//[3]static void *resolve(const QString &fileName, int verNum, const char *symbol)
//[4]static void *resolve(const QString &fileName, const QString &version, const char *symbol)

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLibrary_resolve1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_resolve2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    QLibrary_resolve3();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QLibrary_resolve4();
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
