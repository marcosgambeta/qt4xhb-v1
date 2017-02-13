/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBSECURITYORIGIN

CLASS QWebDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QWebDatabase
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QWebDatabase
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QWebDatabase
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QWebDatabase
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QWebDatabase
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QWebDatabase
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QWebDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWebDatabase>

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

#include <QWebSecurityOrigin>

/*
QWebDatabase ( const QWebDatabase & other )
*/
HB_FUNC( QWEBDATABASE_NEW )
{
  QWebDatabase * o = NULL;
  QWebDatabase * par1 = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QWebDatabase ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC( QWEBDATABASE_DELETE )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString displayName () const
*/
HB_FUNC( QWEBDATABASE_DISPLAYNAME )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->displayName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
qint64 expectedSize () const
*/
HB_FUNC( QWEBDATABASE_EXPECTEDSIZE )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->expectedSize (  );
    hb_retni( i );
  }
}


/*
QString fileName () const
*/
HB_FUNC( QWEBDATABASE_FILENAME )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString name () const
*/
HB_FUNC( QWEBDATABASE_NAME )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QWebSecurityOrigin origin () const
*/
HB_FUNC( QWEBDATABASE_ORIGIN )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->origin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );  }
}


/*
qint64 size () const
*/
HB_FUNC( QWEBDATABASE_SIZE )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}



/*
void removeAllDatabases ()
*/
HB_FUNC( QWEBDATABASE_REMOVEALLDATABASES )
{
  QWebDatabase::removeAllDatabases (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeDatabase ( const QWebDatabase & db )
*/
HB_FUNC( QWEBDATABASE_REMOVEDATABASE )
{
  QWebDatabase * par1 = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWebDatabase::removeDatabase ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
