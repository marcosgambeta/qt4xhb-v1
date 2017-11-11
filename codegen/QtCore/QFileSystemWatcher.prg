$header

#include "hbclass.ch"

CLASS QFileSystemWatcher INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPath
   METHOD addPaths
   METHOD directories
   METHOD files
   METHOD removePath
   METHOD removePaths

   METHOD onDirectoryChanged
   METHOD onFileChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFileSystemWatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QFileSystemWatcher(QObject * parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/
$internalConstructor=|new2|const QStringList &,QObject *=0

//[1]QFileSystemWatcher(QObject * parent = 0)
//[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addPath ( const QString & path )
*/
$method=|void|addPath|const QString &

/*
void addPaths ( const QStringList & paths )
*/
$method=|void|addPaths|const QStringList &

/*
QStringList directories () const
*/
$method=|QStringList|directories|

/*
QStringList files () const
*/
$method=|QStringList|files|

/*
void removePath ( const QString & path )
*/
$method=|void|removePath|const QString &

/*
void removePaths ( const QStringList & paths )
*/
$method=|void|removePaths|const QStringList &

#pragma ENDDUMP
