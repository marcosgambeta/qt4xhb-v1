/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLFIELD
REQUEST QVARIANT
#endif

CLASS QSqlRecord

   DATA pointer
   DATA class_id INIT Class_Id_QSqlRecord
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QSqlRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlRecord>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QSqlField>
#include <QVariant>

/*
QSqlRecord ()
*/
HB_FUNC_STATIC( QSQLRECORD_NEW1 )
{
  QSqlRecord * o = NULL;
  o = new QSqlRecord (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlRecord ( const QSqlRecord & other )
*/
HB_FUNC_STATIC( QSQLRECORD_NEW2 )
{
  QSqlRecord * o = NULL;
  QSqlRecord * par1 = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlRecord ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QSQLRECORD_DELETE )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append ( const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_APPEND )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlField * par1 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->append ( *par1 );
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
    obj->clear (  );
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
    obj->clearValues (  );
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
    hb_retl( obj->contains ( PQSTRING(1) ) );
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
    hb_retni( obj->count (  ) );
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
    QString str1 = obj->fieldName ( PINT(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    hb_retni( obj->indexOf ( PQSTRING(1) ) );
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
    QSqlField * par2 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insert ( PINT(1), *par2 );
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
    hb_retl( obj->isEmpty (  ) );
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
    hb_retl( obj->isGenerated ( PQSTRING(1) ) );
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
    hb_retl( obj->isGenerated ( PINT(1) ) );
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
    hb_retl( obj->isNull ( PQSTRING(1) ) );
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
    hb_retl( obj->isNull ( PINT(1) ) );
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
    QSqlField * par2 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->replace ( PINT(1), *par2 );
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
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( PINT(1), *par2 );
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
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( PQSTRING(1), *par2 );
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


HB_FUNC_STATIC( QSQLRECORD_NEWFROM )
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

HB_FUNC_STATIC( QSQLRECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLRECORD_NEWFROM );
}

HB_FUNC_STATIC( QSQLRECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLRECORD_NEWFROM );
}

HB_FUNC_STATIC( QSQLRECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLRECORD_SETSELFDESTRUCTION )
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
