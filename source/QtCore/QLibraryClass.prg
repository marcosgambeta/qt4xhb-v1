/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QLibrary INHERIT QObject

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QLibrary
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLibrary>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLibrary(QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW1 )
{
  QLibrary * o = new QLibrary ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QLibrary(const QString& fileName, QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW2 )
{
  QLibrary * o = new QLibrary ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW3 )
{
  QLibrary * o = new QLibrary ( PQSTRING(1), PINT(2), OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIBRARY_NEW4 )
{
  QLibrary * o = new QLibrary ( PQSTRING(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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

HB_FUNC_STATIC( QLIBRARY_DELETE )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void *resolve(const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE1 )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * retptr = obj->resolve ( (const char *) hb_parc(1) );
    hb_retptr( (void *) retptr );
  }
}

/*
bool load()
*/
HB_FUNC_STATIC( QLIBRARY_LOAD )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load () );
  }
}

/*
bool unload()
*/
HB_FUNC_STATIC( QLIBRARY_UNLOAD )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unload () );
  }
}

/*
bool isLoaded() const
*/
HB_FUNC_STATIC( QLIBRARY_ISLOADED )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLoaded () );
  }
}

/*
void setFileName(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAME )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString fileName() const
*/
HB_FUNC_STATIC( QLIBRARY_FILENAME )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
void setFileNameAndVersion(const QString &fileName, int verNum)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION1 )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileNameAndVersion ( PQSTRING(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION2 )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileNameAndVersion ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QLIBRARY_ERRORSTRING )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
void setLoadHints(LoadHints hints)
*/
HB_FUNC_STATIC( QLIBRARY_SETLOADHINTS )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLoadHints ( (QLibrary::LoadHints) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
LoadHints loadHints() const
*/
HB_FUNC_STATIC( QLIBRARY_LOADHINTS )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->loadHints () );
  }
}

/*
static void *resolve(const QString &fileName, const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE2 )
{
  void * retptr = QLibrary::resolve ( PQSTRING(1), (const char *) hb_parc(2) );
  hb_retptr( (void *) retptr );
}

/*
static void *resolve(const QString &fileName, int verNum, const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE3 )
{
  void * retptr = QLibrary::resolve ( PQSTRING(1), PINT(2), (const char *) hb_parc(3) );
  hb_retptr( (void *) retptr );
}

/*
static void *resolve(const QString &fileName, const QString &version, const char *symbol)
*/
HB_FUNC_STATIC( QLIBRARY_RESOLVE4 )
{
  void * retptr = QLibrary::resolve ( PQSTRING(1), PQSTRING(2), (const char *) hb_parc(3) );
  hb_retptr( (void *) retptr );
}

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
}

/*
static bool isLibrary(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_ISLIBRARY )
{
  RBOOL( QLibrary::isLibrary ( PQSTRING(1) ) );
}

#pragma ENDDUMP
