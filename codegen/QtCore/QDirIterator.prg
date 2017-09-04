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

PROCEDURE destroyObject () CLASS QDirIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDirIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW1 )
{
  int par2 = ISNIL(2)? (int) QDirIterator::NoIteratorFlags : hb_parni(2);
  QDirIterator * o = new QDirIterator ( *PQDIR(1), (QDirIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW2 )
{
  int par2 = ISNIL(2)? (int) QDirIterator::NoIteratorFlags : hb_parni(2);
  QDirIterator * o = new QDirIterator ( PQSTRING(1), (QDirIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW3 )
{
  int par3 = ISNIL(3)? (int) QDirIterator::NoIteratorFlags : hb_parni(3);
  QDirIterator * o = new QDirIterator ( PQSTRING(1), (QDir::Filters) hb_parni(2), (QDirIterator::IteratorFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )
*/
HB_FUNC_STATIC( QDIRITERATOR_NEW4 )
{
  int par4 = ISNIL(4)? (int) QDirIterator::NoIteratorFlags : hb_parni(4);
  QDirIterator * o = new QDirIterator ( PQSTRING(1), PQSTRINGLIST(2), ISNIL(3)? QDir::NoFilter : (QDir::Filters) hb_parni(3), (QDirIterator::IteratorFlags) par4 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
//[2]QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
//[3]QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
//[4]QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )

// TODO: resolver conflito entre casos 2 e 3

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

HB_FUNC_STATIC( QDIRITERATOR_DELETE )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QFileInfo fileInfo () const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILEINFO )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfo * ptr = new QFileInfo( obj->fileInfo () );
    _qt4xhb_createReturnClass ( ptr, "QFILEINFO", true );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILENAME )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
QString filePath () const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILEPATH )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->filePath () );
  }
}


/*
bool hasNext () const
*/
HB_FUNC_STATIC( QDIRITERATOR_HASNEXT )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasNext () );
  }
}


/*
QString next ()
*/
HB_FUNC_STATIC( QDIRITERATOR_NEXT )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->next () );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QDIRITERATOR_PATH )
{
  QDirIterator * obj = (QDirIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->path () );
  }
}

$extraMethods

#pragma ENDDUMP
