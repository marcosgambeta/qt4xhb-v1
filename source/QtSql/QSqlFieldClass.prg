/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSqlField

   DATA pointer
   DATA class_id INIT Class_Id_QSqlField
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clear
   METHOD defaultValue
   METHOD isAutoValue
   METHOD isGenerated
   METHOD isNull
   METHOD isReadOnly
   METHOD isValid
   METHOD length
   METHOD name
   METHOD precision
   METHOD requiredStatus
   METHOD setAutoValue
   METHOD setDefaultValue
   METHOD setGenerated
   METHOD setLength
   METHOD setName
   METHOD setPrecision
   METHOD setReadOnly
   METHOD setRequired
   METHOD setRequiredStatus
   METHOD setType
   METHOD setValue
   METHOD type
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlField
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlField>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
*/
HB_FUNC_STATIC( QSQLFIELD_NEW1 )
{
  QSqlField * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  o = new QSqlField ( par1, ISNIL(2)? QVariant::Invalid : (QVariant::Type) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSqlField ( const QSqlField & other )
*/
HB_FUNC_STATIC( QSQLFIELD_NEW2 )
{
  QSqlField * o = NULL;
  QSqlField * par1 = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlField ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
//[2]QSqlField ( const QSqlField & other )

HB_FUNC_STATIC( QSQLFIELD_NEW )
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

HB_FUNC_STATIC( QSQLFIELD_DELETE )
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
HB_FUNC_STATIC( QSQLFIELD_CLEAR )
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
HB_FUNC_STATIC( QSQLFIELD_DEFAULTVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->defaultValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool isAutoValue () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isAutoValue (  ) );
  }
}


/*
bool isGenerated () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISGENERATED )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isGenerated (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISNULL )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISREADONLY )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLFIELD_ISVALID )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int length () const
*/
HB_FUNC_STATIC( QSQLFIELD_LENGTH )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QSQLFIELD_NAME )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
int precision () const
*/
HB_FUNC_STATIC( QSQLFIELD_PRECISION )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->precision (  ) );
  }
}


/*
RequiredStatus requiredStatus () const
*/
HB_FUNC_STATIC( QSQLFIELD_REQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->requiredStatus (  ) );
  }
}


/*
void setAutoValue ( bool autoVal )
*/
HB_FUNC_STATIC( QSQLFIELD_SETAUTOVALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoValue ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QSQLFIELD_SETDEFAULTVALUE )
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
HB_FUNC_STATIC( QSQLFIELD_SETGENERATED )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGenerated ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLength ( int fieldLength )
*/
HB_FUNC_STATIC( QSQLFIELD_SETLENGTH )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLength ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLFIELD_SETNAME )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrecision ( int precision )
*/
HB_FUNC_STATIC( QSQLFIELD_SETPRECISION )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrecision ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadOnly ( bool readOnly )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREADONLY )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadOnly ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRequired ( bool required )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREQUIRED )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRequired ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRequiredStatus ( RequiredStatus required )
*/
HB_FUNC_STATIC( QSQLFIELD_SETREQUIREDSTATUS )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRequiredStatus (  (QSqlField::RequiredStatus) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( QVariant::Type type )
*/
HB_FUNC_STATIC( QSQLFIELD_SETTYPE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setType (  (QVariant::Type) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QSQLFIELD_SETVALUE )
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
HB_FUNC_STATIC( QSQLFIELD_TYPE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type (  ) );
  }
}


/*
QVariant value () const
*/
HB_FUNC_STATIC( QSQLFIELD_VALUE )
{
  QSqlField * obj = (QSqlField *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


HB_FUNC_STATIC( QSQLFIELD_NEWFROM )
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

HB_FUNC_STATIC( QSQLFIELD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLFIELD_NEWFROM );
}

HB_FUNC_STATIC( QSQLFIELD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLFIELD_NEWFROM );
}

HB_FUNC_STATIC( QSQLFIELD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLFIELD_SETSELFDESTRUCTION )
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
