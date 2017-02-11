/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSqlField>

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
QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
*/
HB_FUNC( QSQLFIELD_NEW1 )
{
  QSqlField * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  int par2 = ISNIL(2)? (int) QVariant::Invalid : hb_parni(2);
  o = new QSqlField ( par1,  (QVariant::Type) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlField *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSqlField ( const QSqlField & other )
*/
HB_FUNC( QSQLFIELD_NEW2 )
{
  QSqlField * o = NULL;
  QSqlField * par1 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlField ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlField *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
//[2]QSqlField ( const QSqlField & other )

HB_FUNC( QSQLFIELD_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSQLFIELD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    HB_FUNC_EXEC( QSQLFIELD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSQLFIELD_DELETE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC( QSQLFIELD_CLEAR )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant defaultValue () const
*/
HB_FUNC( QSQLFIELD_DEFAULTVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->defaultValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
bool isAutoValue () const
*/
HB_FUNC( QSQLFIELD_ISAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isAutoValue (  );
    hb_retl( b );
  }
}


/*
bool isGenerated () const
*/
HB_FUNC( QSQLFIELD_ISGENERATED )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isGenerated (  );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QSQLFIELD_ISNULL )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC( QSQLFIELD_ISREADONLY )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadOnly (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QSQLFIELD_ISVALID )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
int length () const
*/
HB_FUNC( QSQLFIELD_LENGTH )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->length (  );
    hb_retni( i );
  }
}


/*
QString name () const
*/
HB_FUNC( QSQLFIELD_NAME )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int precision () const
*/
HB_FUNC( QSQLFIELD_PRECISION )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->precision (  );
    hb_retni( i );
  }
}


/*
RequiredStatus requiredStatus () const
*/
HB_FUNC( QSQLFIELD_REQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->requiredStatus (  );
    hb_retni( i );
  }
}


/*
void setAutoValue ( bool autoVal )
*/
HB_FUNC( QSQLFIELD_SETAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAutoValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultValue ( const QVariant & value )
*/
HB_FUNC( QSQLFIELD_SETDEFAULTVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDefaultValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGenerated ( bool gen )
*/
HB_FUNC( QSQLFIELD_SETGENERATED )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setGenerated ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLength ( int fieldLength )
*/
HB_FUNC( QSQLFIELD_SETLENGTH )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLength ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setName ( const QString & name )
*/
HB_FUNC( QSQLFIELD_SETNAME )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrecision ( int precision )
*/
HB_FUNC( QSQLFIELD_SETPRECISION )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrecision ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadOnly ( bool readOnly )
*/
HB_FUNC( QSQLFIELD_SETREADONLY )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setReadOnly ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRequired ( bool required )
*/
HB_FUNC( QSQLFIELD_SETREQUIRED )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setRequired ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRequiredStatus ( RequiredStatus required )
*/
HB_FUNC( QSQLFIELD_SETREQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRequiredStatus (  (QSqlField::RequiredStatus) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( QVariant::Type type )
*/
HB_FUNC( QSQLFIELD_SETTYPE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QVariant::Type) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( const QVariant & value )
*/
HB_FUNC( QSQLFIELD_SETVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant::Type type () const
*/
HB_FUNC( QSQLFIELD_TYPE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
QVariant value () const
*/
HB_FUNC( QSQLFIELD_VALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}



