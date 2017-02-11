/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSqlRecord>

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

#include <QSqlField>
#include <QVariant>

/*
QSqlRecord ()
*/
HB_FUNC( QSQLRECORD_NEW1 )
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
HB_FUNC( QSQLRECORD_NEW2 )
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

HB_FUNC( QSQLRECORD_NEW )
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

HB_FUNC( QSQLRECORD_DELETE )
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
HB_FUNC( QSQLRECORD_APPEND )
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
HB_FUNC( QSQLRECORD_CLEAR )
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
HB_FUNC( QSQLRECORD_CLEARVALUES )
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
HB_FUNC( QSQLRECORD_CONTAINS )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->contains ( par1 );
    hb_retl( b );
  }
}


/*
int count () const
*/
HB_FUNC( QSQLRECORD_COUNT )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
QSqlField field ( int index ) const
*/
HB_FUNC( QSQLRECORD_FIELD1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSqlField * ptr = new QSqlField( obj->field ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLFIELD", true );  }
}


/*
QSqlField field ( const QString & name ) const
*/
HB_FUNC( QSQLRECORD_FIELD2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSqlField * ptr = new QSqlField( obj->field ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLFIELD", true );  }
}


//[1]QSqlField field ( int index ) const
//[2]QSqlField field ( const QString & name ) const

HB_FUNC( QSQLRECORD_FIELD )
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
HB_FUNC( QSQLRECORD_FIELDNAME )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->fieldName ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int indexOf ( const QString & name ) const
*/
HB_FUNC( QSQLRECORD_INDEXOF )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int i = obj->indexOf ( par1 );
    hb_retni( i );
  }
}


/*
void insert ( int pos, const QSqlField & field )
*/
HB_FUNC( QSQLRECORD_INSERT )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSqlField * par2 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insert ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty () const
*/
HB_FUNC( QSQLRECORD_ISEMPTY )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}


/*
bool isGenerated ( const QString & name ) const
*/
HB_FUNC( QSQLRECORD_ISGENERATED1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->isGenerated ( par1 );
    hb_retl( b );
  }
}


/*
bool isGenerated ( int index ) const
*/
HB_FUNC( QSQLRECORD_ISGENERATED2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isGenerated ( par1 );
    hb_retl( b );
  }
}


//[1]bool isGenerated ( const QString & name ) const
//[2]bool isGenerated ( int index ) const

HB_FUNC( QSQLRECORD_ISGENERATED )
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
HB_FUNC( QSQLRECORD_ISNULL1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->isNull ( par1 );
    hb_retl( b );
  }
}


/*
bool isNull ( int index ) const
*/
HB_FUNC( QSQLRECORD_ISNULL2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isNull ( par1 );
    hb_retl( b );
  }
}


//[1]bool isNull ( const QString & name ) const
//[2]bool isNull ( int index ) const

HB_FUNC( QSQLRECORD_ISNULL )
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
HB_FUNC( QSQLRECORD_REMOVE )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->remove ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void replace ( int pos, const QSqlField & field )
*/
HB_FUNC( QSQLRECORD_REPLACE )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSqlField * par2 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->replace ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGenerated ( const QString & name, bool generated )
*/
HB_FUNC( QSQLRECORD_SETGENERATED1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2 = hb_parl(2);
    obj->setGenerated ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGenerated ( int index, bool generated )
*/
HB_FUNC( QSQLRECORD_SETGENERATED2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setGenerated ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGenerated ( const QString & name, bool generated )
//[2]void setGenerated ( int index, bool generated )

HB_FUNC( QSQLRECORD_SETGENERATED )
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
HB_FUNC( QSQLRECORD_SETNULL1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNull ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNull ( const QString & name )
*/
HB_FUNC( QSQLRECORD_SETNULL2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setNull ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setNull ( int index )
//[2]void setNull ( const QString & name )

HB_FUNC( QSQLRECORD_SETNULL )
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
HB_FUNC( QSQLRECORD_SETVALUE1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( const QString & name, const QVariant & val )
*/
HB_FUNC( QSQLRECORD_SETVALUE2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setValue ( int index, const QVariant & val )
//[2]void setValue ( const QString & name, const QVariant & val )

HB_FUNC( QSQLRECORD_SETVALUE )
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
HB_FUNC( QSQLRECORD_VALUE1 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
QVariant value ( const QString & name ) const
*/
HB_FUNC( QSQLRECORD_VALUE2 )
{
  QSqlRecord * obj = (QSqlRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


//[1]QVariant value ( int index ) const
//[2]QVariant value ( const QString & name ) const

HB_FUNC( QSQLRECORD_VALUE )
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


