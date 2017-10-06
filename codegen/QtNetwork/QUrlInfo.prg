$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QUrlInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD group
   METHOD isDir
   METHOD isExecutable
   METHOD isFile
   METHOD isReadable
   METHOD isSymLink
   METHOD isValid
   METHOD isWritable
   METHOD lastModified
   METHOD lastRead
   METHOD name
   METHOD owner
   METHOD permissions
   METHOD setDir
   METHOD setFile
   METHOD setGroup
   METHOD setLastModified
   METHOD setLastRead
   METHOD setName
   METHOD setOwner
   METHOD setPermissions
   METHOD setReadable
   METHOD setSize
   METHOD setSymLink
   METHOD setWritable
   METHOD size
   METHOD equal
   METHOD greaterThan
   METHOD lessThan

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QUrlInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUrlInfo ()
*/
$constructor=|new1|

/*
QUrlInfo ( const QUrlInfo & ui )
*/
$constructor=|new2|const QUrlInfo &

/*
QUrlInfo ( const QString & name, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
*/
$constructor=|new3|const QString &,int,const QString &,const QString &,qint64,const QDateTime &,const QDateTime &,bool,bool,bool,bool,bool,bool

/*
QUrlInfo ( const QUrl & url, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
*/
$constructor=|new4|const QUrl &,int,const QString &,const QString &,qint64,const QDateTime &,const QDateTime &,bool,bool,bool,bool,bool,bool

//[1]QUrlInfo ()
//[2]QUrlInfo ( const QUrlInfo & ui )
//[3]QUrlInfo ( const QString & name, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
//[4]QUrlInfo ( const QUrl & url, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )

HB_FUNC_STATIC( QURLINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURLINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURLINFO(1) )
  {
    HB_FUNC_EXEC( QURLINFO_NEW2 );
  }
  else if( ISNUMPAR(13) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && ISNUM(5) && ISQDATETIME(6) && ISQDATETIME(7) && ISLOG(8) && ISLOG(9) && ISLOG(10) && ISLOG(11) && ISLOG(12) && ISLOG(13) )
  {
    HB_FUNC_EXEC( QURLINFO_NEW3 );
  }
  else if( ISNUMPAR(13) && ISQURL(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && ISNUM(5) && ISQDATETIME(6) && ISQDATETIME(7) && ISLOG(8) && ISLOG(9) && ISLOG(10) && ISLOG(11) && ISLOG(12) && ISLOG(13) )
  {
    HB_FUNC_EXEC( QURLINFO_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString group () const
*/
$method=|QString|group|

/*
bool isDir () const
*/
$method=|bool|isDir|

/*
bool isExecutable () const
*/
$method=|bool|isExecutable|

/*
bool isFile () const
*/
$method=|bool|isFile|

/*
bool isReadable () const
*/
$method=|bool|isReadable|

/*
bool isSymLink () const
*/
$method=|bool|isSymLink|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

/*
QDateTime lastModified () const
*/
$method=|QDateTime|lastModified|

/*
QDateTime lastRead () const
*/
$method=|QDateTime|lastRead|

/*
QString name () const
*/
$method=|QString|name|

/*
QString owner () const
*/
$method=|QString|owner|

/*
int permissions () const
*/
$method=|int|permissions|

/*
virtual void setDir ( bool b )
*/
$virtualMethod=|void|setDir|bool

/*
virtual void setFile ( bool b )
*/
$virtualMethod=|void|setFile|bool

/*
virtual void setGroup ( const QString & s )
*/
$virtualMethod=|void|setGroup|const QString &

/*
virtual void setLastModified ( const QDateTime & dt )
*/
$virtualMethod=|void|setLastModified|const QDateTime &

/*
void setLastRead ( const QDateTime & dt )
*/
$method=|void|setLastRead|const QDateTime &

/*
virtual void setName ( const QString & name )
*/
$virtualMethod=|void|setName|const QString &

/*
virtual void setOwner ( const QString & s )
*/
$virtualMethod=|void|setOwner|const QString &

/*
virtual void setPermissions ( int p )
*/
$virtualMethod=|void|setPermissions|int

/*
virtual void setReadable ( bool b )
*/
$virtualMethod=|void|setReadable|bool

/*
virtual void setSize ( qint64 size )
*/
$virtualMethod=|void|setSize|qint64

/*
virtual void setSymLink ( bool b )
*/
$virtualMethod=|void|setSymLink|bool

/*
virtual void setWritable ( bool b )
*/
$virtualMethod=|void|setWritable|bool

/*
qint64 size () const
*/
$method=|qint64|size|

/*
static bool equal ( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
$staticMethod=|bool|equal|const QUrlInfo &,const QUrlInfo &,int

/*
static bool greaterThan ( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
$staticMethod=|bool|greaterThan|const QUrlInfo &,const QUrlInfo &,int

/*
static bool lessThan ( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
$staticMethod=|bool|lessThan|const QUrlInfo &,const QUrlInfo &,int

$extraMethods

#pragma ENDDUMP
