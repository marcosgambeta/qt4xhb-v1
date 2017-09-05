$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLFIELD
REQUEST QVARIANT
#endif

CLASS QSqlRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD clearValues
   METHOD contains
   METHOD count
   METHOD field1
   METHOD field2
   METHOD field
   METHOD fieldName
   METHOD indexOf
   METHOD insert
   METHOD isEmpty
   METHOD isGenerated1
   METHOD isGenerated2
   METHOD isGenerated
   METHOD isNull1
   METHOD isNull2
   METHOD isNull
   METHOD remove
   METHOD replace
   METHOD setGenerated1
   METHOD setGenerated2
   METHOD setGenerated
   METHOD setNull1
   METHOD setNull2
   METHOD setNull
   METHOD setValue1
   METHOD setValue2
   METHOD setValue
   METHOD value1
   METHOD value2
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlRecord>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlField>
#include <QVariant>

/*
QSqlRecord ()
*/
HB_FUNC_STATIC( QSQLRECORD_NEW1 )
{
  QSqlRecord * o = new QSqlRecord ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSqlRecord ( const QSqlRecord & other )
*/
HB_FUNC_STATIC( QSQLRECORD_NEW2 )
{
  QSqlRecord * o = new QSqlRecord ( *PQSQLRECORD(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSqlRecord ()
//[2]QSqlRecord ( const QSqlRecord & other )

HB_FUNC_STATIC( QSQLRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLRECORD(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_APPEND )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( *PQSQLFIELD(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSQLRECORD_CLEAR )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearValues ()
*/
HB_FUNC_STATIC( QSQLRECORD_CLEARVALUES )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearValues ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_CONTAINS )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PQSTRING(1) ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QSQLRECORD_COUNT )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
QSqlField field ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELD1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlField * ptr = new QSqlField( obj->field ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLFIELD", true );
  }
}


/*
QSqlField field ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELD2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlField * ptr = new QSqlField( obj->field ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLFIELD", true );
  }
}


//[1]QSqlField field ( int index ) const
//[2]QSqlField field ( const QString & name ) const

HB_FUNC_STATIC( QSQLRECORD_FIELD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_FIELD1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_FIELD2 );
  }
}

/*
QString fieldName ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELDNAME )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fieldName ( PINT(1) ) );
  }
}


/*
int indexOf ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_INDEXOF )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( PQSTRING(1) ) );
  }
}


/*
void insert ( int pos, const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_INSERT )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insert ( PINT(1), *PQSQLFIELD(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QSQLRECORD_ISEMPTY )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isGenerated ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISGENERATED1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isGenerated ( PQSTRING(1) ) );
  }
}


/*
bool isGenerated ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISGENERATED2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isGenerated ( PINT(1) ) );
  }
}


//[1]bool isGenerated ( const QString & name ) const
//[2]bool isGenerated ( int index ) const

HB_FUNC_STATIC( QSQLRECORD_ISGENERATED )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISGENERATED1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISGENERATED2 );
  }
}

/*
bool isNull ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISNULL1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull ( PQSTRING(1) ) );
  }
}


/*
bool isNull ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_ISNULL2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull ( PINT(1) ) );
  }
}


//[1]bool isNull ( const QString & name ) const
//[2]bool isNull ( int index ) const

HB_FUNC_STATIC( QSQLRECORD_ISNULL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISNULL1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_ISNULL2 );
  }
}

/*
void remove ( int pos )
*/
HB_FUNC_STATIC( QSQLRECORD_REMOVE )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->remove ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void replace ( int pos, const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_REPLACE )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->replace ( PINT(1), *PQSQLFIELD(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGenerated ( const QString & name, bool generated )
*/
HB_FUNC_STATIC( QSQLRECORD_SETGENERATED1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGenerated ( PQSTRING(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGenerated ( int index, bool generated )
*/
HB_FUNC_STATIC( QSQLRECORD_SETGENERATED2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGenerated ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGenerated ( const QString & name, bool generated )
//[2]void setGenerated ( int index, bool generated )

HB_FUNC_STATIC( QSQLRECORD_SETGENERATED )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETGENERATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETGENERATED2 );
  }
}

/*
void setNull ( int index )
*/
HB_FUNC_STATIC( QSQLRECORD_SETNULL1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNull ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNull ( const QString & name )
*/
HB_FUNC_STATIC( QSQLRECORD_SETNULL2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNull ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setNull ( int index )
//[2]void setNull ( const QString & name )

HB_FUNC_STATIC( QSQLRECORD_SETNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETNULL1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETNULL2 );
  }
}

/*
void setValue ( int index, const QVariant & val )
*/
HB_FUNC_STATIC( QSQLRECORD_SETVALUE1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PINT(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( const QString & name, const QVariant & val )
*/
HB_FUNC_STATIC( QSQLRECORD_SETVALUE2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setValue ( int index, const QVariant & val )
//[2]void setValue ( const QString & name, const QVariant & val )

HB_FUNC_STATIC( QSQLRECORD_SETVALUE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETVALUE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSQLRECORD_SETVALUE2 );
  }
}

/*
QVariant value ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_VALUE1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariant value ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_VALUE2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant value ( int index ) const
//[2]QVariant value ( const QString & name ) const

HB_FUNC_STATIC( QSQLRECORD_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSQLRECORD_VALUE2 );
  }
}

$extraMethods

#pragma ENDDUMP
