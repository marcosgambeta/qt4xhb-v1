/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME
REQUEST QABSTRACTFILEENGINE

CLASS QAbstractFileEngine

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractFileEngine
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD atEnd
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD entryList
   METHOD error
   METHOD errorString
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD open
   METHOD owner
   METHOD ownerId
   METHOD pos
   METHOD readLine
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD seek
   METHOD setFileName
   METHOD setPermissions
   METHOD setSize
   METHOD size
   METHOD supportsExtension
   METHOD write
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAbstractFileEngine
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAbstractFileEngine
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAbstractFileEngine
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAbstractFileEngine
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAbstractFileEngine
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAbstractFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractFileEngine>

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

#include <QDateTime>

HB_FUNC( QABSTRACTFILEENGINE_DELETE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool atEnd () const
*/
HB_FUNC( QABSTRACTFILEENGINE_ATEND )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atEnd (  );
    hb_retl( b );
  }
}



/*
virtual bool caseSensitive () const
*/
HB_FUNC( QABSTRACTFILEENGINE_CASESENSITIVE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->caseSensitive (  );
    hb_retl( b );
  }
}


/*
virtual bool close ()
*/
HB_FUNC( QABSTRACTFILEENGINE_CLOSE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->close (  );
    hb_retl( b );
  }
}


/*
virtual bool copy ( const QString & newName )
*/
HB_FUNC( QABSTRACTFILEENGINE_COPY )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->copy ( par1 );
    hb_retl( b );
  }
}


/*
virtual QStringList entryList ( QDir::Filters filters, const QStringList & filterNames ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_ENTRYLIST )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
    QStringList strl = obj->entryList (  (QDir::Filters) par1, par2 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QFile::FileError error () const
*/
HB_FUNC( QABSTRACTFILEENGINE_ERROR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString () const
*/
HB_FUNC( QABSTRACTFILEENGINE_ERRORSTRING )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
virtual FileFlags fileFlags ( FileFlags type = FileInfoAll ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_FILEFLAGS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QAbstractFileEngine::FileInfoAll : hb_parni(1);
    int i = obj->fileFlags (  (QAbstractFileEngine::FileFlags) par1 );
    hb_retni( i );
  }
}


/*
virtual QString fileName ( FileName file = DefaultName ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_FILENAME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QAbstractFileEngine::DefaultName : hb_parni(1);
    QString str1 = obj->fileName (  (QAbstractFileEngine::FileName) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QDateTime fileTime ( FileTime time ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_FILETIME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->fileTime (  (QAbstractFileEngine::FileTime) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
virtual bool flush ()
*/
HB_FUNC( QABSTRACTFILEENGINE_FLUSH )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->flush (  );
    hb_retl( b );
  }
}


/*
virtual int handle () const
*/
HB_FUNC( QABSTRACTFILEENGINE_HANDLE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->handle (  );
    hb_retni( i );
  }
}


/*
virtual bool isRelativePath () const
*/
HB_FUNC( QABSTRACTFILEENGINE_ISRELATIVEPATH )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRelativePath (  );
    hb_retl( b );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC( QABSTRACTFILEENGINE_ISSEQUENTIAL )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSequential (  );
    hb_retl( b );
  }
}


/*
virtual bool link ( const QString & newName )
*/
HB_FUNC( QABSTRACTFILEENGINE_LINK )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->link ( par1 );
    hb_retl( b );
  }
}



/*
virtual bool mkdir ( const QString & dirName, bool createParentDirectories ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_MKDIR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2 = hb_parl(2);
    bool b = obj->mkdir ( par1, par2 );
    hb_retl( b );
  }
}


/*
virtual bool open ( QIODevice::OpenMode mode )
*/
HB_FUNC( QABSTRACTFILEENGINE_OPEN )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->open (  (QIODevice::OpenMode) par1 );
    hb_retl( b );
  }
}


/*
virtual QString owner ( FileOwner owner ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_OWNER )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->owner (  (QAbstractFileEngine::FileOwner) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual uint ownerId ( FileOwner owner ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_OWNERID )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    uint i = obj->ownerId (  (QAbstractFileEngine::FileOwner) par1 );
    hb_retni( i );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC( QABSTRACTFILEENGINE_POS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->pos (  );
    hb_retni( i );
  }
}



/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
HB_FUNC( QABSTRACTFILEENGINE_READLINE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 par2 = hb_parni(2);
    qint64 i = obj->readLine ( par1, par2 );
    hb_retni( i );
  }
}


/*
virtual bool remove ()
*/
HB_FUNC( QABSTRACTFILEENGINE_REMOVE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->remove (  );
    hb_retl( b );
  }
}


/*
virtual bool rename ( const QString & newName )
*/
HB_FUNC( QABSTRACTFILEENGINE_RENAME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->rename ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool rmdir ( const QString & dirName, bool recurseParentDirectories ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_RMDIR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2 = hb_parl(2);
    bool b = obj->rmdir ( par1, par2 );
    hb_retl( b );
  }
}


/*
virtual bool seek ( qint64 offset )
*/
HB_FUNC( QABSTRACTFILEENGINE_SEEK )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    bool b = obj->seek ( par1 );
    hb_retl( b );
  }
}


/*
virtual void setFileName ( const QString & file )
*/
HB_FUNC( QABSTRACTFILEENGINE_SETFILENAME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setPermissions ( uint perms )
*/
HB_FUNC( QABSTRACTFILEENGINE_SETPERMISSIONS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    bool b = obj->setPermissions ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool setSize ( qint64 size )
*/
HB_FUNC( QABSTRACTFILEENGINE_SETSIZE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    bool b = obj->setSize ( par1 );
    hb_retl( b );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC( QABSTRACTFILEENGINE_SIZE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC( QABSTRACTFILEENGINE_SUPPORTSEXTENSION )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->supportsExtension (  (QAbstractFileEngine::Extension) par1 );
    hb_retl( b );
  }
}



/*
virtual qint64 write ( const char * data, qint64 len )
*/
HB_FUNC( QABSTRACTFILEENGINE_WRITE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    qint64 par2 = hb_parni(2);
    qint64 i = obj->write (  (const char *) par1, par2 );
    hb_retni( i );
  }
}



/*
QAbstractFileEngine * create ( const QString & fileName )
*/
HB_FUNC( QABSTRACTFILEENGINE_CREATE )
{
  QString par1 = hb_parc(1);
  QAbstractFileEngine * ptr = QAbstractFileEngine::create ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QABSTRACTFILEENGINE" );}




#pragma ENDDUMP
