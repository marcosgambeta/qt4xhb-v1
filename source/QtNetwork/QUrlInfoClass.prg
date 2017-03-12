/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QUrlInfo

   DATA pointer
   DATA class_id INIT Class_Id_QUrlInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QUrlInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QUrlInfo>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QUrlInfo ()
*/
HB_FUNC_STATIC( QURLINFO_NEW1 )
{
  QUrlInfo * o = NULL;
  o = new QUrlInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUrlInfo ( const QUrlInfo & ui )
*/
HB_FUNC_STATIC( QURLINFO_NEW2 )
{
  QUrlInfo * o = NULL;
  QUrlInfo * par1 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUrlInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUrlInfo ( const QString & name, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
*/
HB_FUNC_STATIC( QURLINFO_NEW3 )
{
  QUrlInfo * o = NULL;
  QString par1 = hb_parc(1);
  int par2 = hb_parni(2);
  QString par3 = hb_parc(3);
  QString par4 = hb_parc(4);
  qint64 par5 = hb_parni(5);
  QDateTime * par6 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDateTime * par7 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUrlInfo ( par1, par2, par3, par4, par5, *par6, *par7, (bool) hb_parl(8), (bool) hb_parl(9), (bool) hb_parl(10), (bool) hb_parl(11), (bool) hb_parl(12), (bool) hb_parl(13) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUrlInfo ( const QUrl & url, int permissions, const QString & owner, const QString & group, qint64 size, const QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool isReadable, bool isExecutable )
*/
HB_FUNC_STATIC( QURLINFO_NEW4 )
{
  QUrlInfo * o = NULL;
  QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  QString par3 = hb_parc(3);
  QString par4 = hb_parc(4);
  qint64 par5 = hb_parni(5);
  QDateTime * par6 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDateTime * par7 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUrlInfo ( *par1, par2, par3, par4, par5, *par6, *par7, (bool) hb_parl(8), (bool) hb_parl(9), (bool) hb_parl(10), (bool) hb_parl(11), (bool) hb_parl(12), (bool) hb_parl(13) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


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

HB_FUNC_STATIC( QURLINFO_DELETE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString group () const
*/
HB_FUNC_STATIC( QURLINFO_GROUP )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->group (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isDir () const
*/
HB_FUNC_STATIC( QURLINFO_ISDIR )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDir (  ) );
  }
}


/*
bool isExecutable () const
*/
HB_FUNC_STATIC( QURLINFO_ISEXECUTABLE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isExecutable (  ) );
  }
}


/*
bool isFile () const
*/
HB_FUNC_STATIC( QURLINFO_ISFILE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFile (  ) );
  }
}


/*
bool isReadable () const
*/
HB_FUNC_STATIC( QURLINFO_ISREADABLE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
bool isSymLink () const
*/
HB_FUNC_STATIC( QURLINFO_ISSYMLINK )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSymLink (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QURLINFO_ISVALID )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QURLINFO_ISWRITABLE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
QDateTime lastModified () const
*/
HB_FUNC_STATIC( QURLINFO_LASTMODIFIED )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastModified (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime lastRead () const
*/
HB_FUNC_STATIC( QURLINFO_LASTREAD )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastRead (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QURLINFO_NAME )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString owner () const
*/
HB_FUNC_STATIC( QURLINFO_OWNER )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->owner (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int permissions () const
*/
HB_FUNC_STATIC( QURLINFO_PERMISSIONS )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->permissions (  ) );
  }
}


/*
virtual void setDir ( bool b )
*/
HB_FUNC_STATIC( QURLINFO_SETDIR )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDir ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFile ( bool b )
*/
HB_FUNC_STATIC( QURLINFO_SETFILE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFile ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGroup ( const QString & s )
*/
HB_FUNC_STATIC( QURLINFO_SETGROUP )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setLastModified ( const QDateTime & dt )
*/
HB_FUNC_STATIC( QURLINFO_SETLASTMODIFIED )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLastModified ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastRead ( const QDateTime & dt )
*/
HB_FUNC_STATIC( QURLINFO_SETLASTREAD )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLastRead ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setName ( const QString & name )
*/
HB_FUNC_STATIC( QURLINFO_SETNAME )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setOwner ( const QString & s )
*/
HB_FUNC_STATIC( QURLINFO_SETOWNER )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setOwner ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPermissions ( int p )
*/
HB_FUNC_STATIC( QURLINFO_SETPERMISSIONS )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPermissions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setReadable ( bool b )
*/
HB_FUNC_STATIC( QURLINFO_SETREADABLE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSize ( qint64 size )
*/
HB_FUNC_STATIC( QURLINFO_SETSIZE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSymLink ( bool b )
*/
HB_FUNC_STATIC( QURLINFO_SETSYMLINK )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSymLink ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setWritable ( bool b )
*/
HB_FUNC_STATIC( QURLINFO_SETWRITABLE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWritable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QURLINFO_SIZE )
{
  QUrlInfo * obj = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}



/*
bool equal ( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
HB_FUNC_STATIC( QURLINFO_EQUAL )
{
  QUrlInfo * par1 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUrlInfo * par2 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = hb_parni(3);
  hb_retl( QUrlInfo::equal ( *par1, *par2, par3 ) );
}


/*
bool greaterThan ( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
HB_FUNC_STATIC( QURLINFO_GREATERTHAN )
{
  QUrlInfo * par1 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUrlInfo * par2 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = hb_parni(3);
  hb_retl( QUrlInfo::greaterThan ( *par1, *par2, par3 ) );
}


/*
bool lessThan ( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
HB_FUNC_STATIC( QURLINFO_LESSTHAN )
{
  QUrlInfo * par1 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUrlInfo * par2 = (QUrlInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = hb_parni(3);
  hb_retl( QUrlInfo::lessThan ( *par1, *par2, par3 ) );
}


HB_FUNC_STATIC( QURLINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QURLINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QURLINFO_NEWFROM );
}

HB_FUNC_STATIC( QURLINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QURLINFO_NEWFROM );
}

HB_FUNC_STATIC( QURLINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QURLINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
