$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
#endif

CLASS QDirIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD hasNext
   METHOD next
   METHOD path

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDirIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
*/
$constructor=|new1|const QDir &,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

/*
QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
*/
$constructor=|new2|const QString &,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

/*
QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
*/
$constructor=|new3|const QString &,QDir::Filters,QDir::IteratorFlags=QDir::NoIteratorFlags

/*
QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )
*/
$constructor=|new4|const QString &,const QStringList &,QDir::Filters=QDir::NoFilter,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

//[1]QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
//[2]QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
//[3]QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
//[4]QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )

%% TODO: resolver conflito entre casos 2 e 3

HB_FUNC_STATIC( QDIRITERATOR_NEW )
{
  if( ISBETWEEN(1,2) && ISQDIR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW3 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDIRITERATOR_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QFileInfo fileInfo () const
*/
$method=|QFileInfo|fileInfo|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QString filePath () const
*/
$method=|QString|filePath|

/*
bool hasNext () const
*/
$method=|bool|hasNext|

/*
QString next ()
*/
$method=|QString|next|

/*
QString path () const
*/
$method=|QString|path|

$extraMethods

#pragma ENDDUMP
