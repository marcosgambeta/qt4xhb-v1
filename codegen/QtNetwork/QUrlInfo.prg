%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QUrlInfo ()
$internalConstructor=|new1|

$prototype=QUrlInfo ( const QUrlInfo & ui )
$internalConstructor=|new2|const QUrlInfo &

$prototype=QUrlInfo ( const QString & name, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
$internalConstructor=|new3|const QString &,int,const QString &,const QString &,qint64,const QDateTime &,const QDateTime &,bool,bool,bool,bool,bool,bool

$prototype=QUrlInfo ( const QUrl & url, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
$internalConstructor=|new4|const QUrl &,int,const QString &,const QString &,qint64,const QDateTime &,const QDateTime &,bool,bool,bool,bool,bool,bool

/*
[1]QUrlInfo ()
[2]QUrlInfo ( const QUrlInfo & ui )
[3]QUrlInfo ( const QString & name, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
[4]QUrlInfo ( const QUrl & url, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
*/

HB_FUNC_STATIC( QURLINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrlInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQURLINFO(1) )
  {
    QUrlInfo_new2();
  }
  else if( ISNUMPAR(13) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && ISNUM(5) && ISQDATETIME(6) && ISQDATETIME(7) && ISLOG(8) && ISLOG(9) && ISLOG(10) && ISLOG(11) && ISLOG(12) && ISLOG(13) )
  {
    QUrlInfo_new3();
  }
  else if( ISNUMPAR(13) && ISQURL(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && ISNUM(5) && ISQDATETIME(6) && ISQDATETIME(7) && ISLOG(8) && ISLOG(9) && ISLOG(10) && ISLOG(11) && ISLOG(12) && ISLOG(13) )
  {
    QUrlInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString group() const

$prototypeV2=bool isDir() const

$prototypeV2=bool isExecutable() const

$prototypeV2=bool isFile() const

$prototypeV2=bool isReadable() const

$prototypeV2=bool isSymLink() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isWritable() const

$prototypeV2=QDateTime lastModified() const

$prototypeV2=QDateTime lastRead() const

$prototypeV2=QString name() const

$prototypeV2=QString owner() const

$prototypeV2=int permissions() const

$prototypeV2=virtual void setDir( bool b )

$prototypeV2=virtual void setFile( bool b )

$prototypeV2=virtual void setGroup( const QString & s )

$prototypeV2=virtual void setLastModified( const QDateTime & dt )

$prototypeV2=void setLastRead( const QDateTime & dt )

$prototypeV2=virtual void setName( const QString & name )

$prototypeV2=virtual void setOwner( const QString & s )

$prototypeV2=virtual void setPermissions( int p )

$prototypeV2=virtual void setReadable( bool b )

$prototypeV2=virtual void setSize( qint64 size )

$prototypeV2=virtual void setSymLink( bool b )

$prototypeV2=virtual void setWritable( bool b )

$prototypeV2=qint64 size() const

$prototypeV2=static bool equal( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )

$prototypeV2=static bool greaterThan( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )

$prototypeV2=static bool lessThan( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )

$extraMethods

#pragma ENDDUMP
