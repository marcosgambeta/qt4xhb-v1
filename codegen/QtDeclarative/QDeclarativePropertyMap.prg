$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDeclarativePropertyMap INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD contains
   METHOD count
   METHOD insert
   METHOD isEmpty
   METHOD keys
   METHOD size
   METHOD value
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativePropertyMap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativePropertyMap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativePropertyMap ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_NEW )
{
  QDeclarativePropertyMap * o = new QDeclarativePropertyMap ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_DELETE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ( const QString & key )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_CLEAR )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_CONTAINS )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PQSTRING(1) ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_COUNT )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
void insert ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_INSERT )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insert ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_ISEMPTY )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
QStringList keys () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_KEYS )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_SIZE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->size () );
  }
}


/*
QVariant value ( const QString & key ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_VALUE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}






#pragma ENDDUMP
