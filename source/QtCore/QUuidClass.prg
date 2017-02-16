/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QUUID

CLASS QUuid

   DATA pointer
   DATA class_id INIT Class_Id_QUuid
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD toString
   METHOD toByteArray
   METHOD toRfc4122
   METHOD isNull
   METHOD variant
   METHOD version
   METHOD fromRfc4122
   METHOD createUuid
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QUuid
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QUuid
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QUuid
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QUuid
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QUuid
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QUuid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP


/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QUuid>

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
QUuid()
*/
HB_FUNC_STATIC( QUUID_NEW1 )
{
  QUuid * o = NULL;
  o = new QUuid (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUuid(uint l, ushort w1, ushort w2, uchar b1, uchar b2, uchar b3, uchar b4, uchar b5, uchar b6, uchar b7, uchar b8)
*/
HB_FUNC_STATIC( QUUID_NEW2 )
{
  QUuid * o = NULL;
  uint par1 = hb_parni(1);
  ushort par2 = hb_parni(2);
  ushort par3 = hb_parni(3);
  uchar par4 = ISCHAR(4)? (uchar) hb_parc(4)[0] : (ISNUM(4)? hb_parni(4) : 0);
  uchar par5 = ISCHAR(5)? (uchar) hb_parc(5)[0] : (ISNUM(5)? hb_parni(5) : 0);
  uchar par6 = ISCHAR(6)? (uchar) hb_parc(6)[0] : (ISNUM(6)? hb_parni(6) : 0);
  uchar par7 = ISCHAR(7)? (uchar) hb_parc(7)[0] : (ISNUM(7)? hb_parni(7) : 0);
  uchar par8 = ISCHAR(8)? (uchar) hb_parc(8)[0] : (ISNUM(8)? hb_parni(8) : 0);
  uchar par9 = ISCHAR(9)? (uchar) hb_parc(9)[0] : (ISNUM(9)? hb_parni(9) : 0);
  uchar par10 = ISCHAR(10)? (uchar) hb_parc(10)[0] : (ISNUM(10)? hb_parni(10) : 0);
  uchar par11 = ISCHAR(11)? (uchar) hb_parc(11)[0] : (ISNUM(11)? hb_parni(11) : 0);
  o = new QUuid ( par1, par2, par3, par4, par5, par6, par7, par8, par9, par10, par11 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUuid(const QString &)
*/
HB_FUNC_STATIC( QUUID_NEW3 )
{
  QUuid * o = NULL;
  QString par1 = hb_parc(1);
  o = new QUuid ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUuid(const char *)
*/
HB_FUNC_STATIC( QUUID_NEW4 )
{
  QUuid * o = NULL;
  const char * par1 = hb_parc(1);
  o = new QUuid (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUuid(const QByteArray &)
*/
HB_FUNC_STATIC( QUUID_NEW5 )
{
  QUuid * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUuid ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}



//[1]QUuid()
//[2]QUuid(uint l, ushort w1, ushort w2, uchar b1, uchar b2, uchar b3, uchar b4, uchar b5, uchar b6, uchar b7, uchar b8)
//[3]QUuid(const QString &)
//[4]QUuid(const char *)
//[5]QUuid(const QByteArray &)
//[6]QUuid(const GUID &guid)

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QUUID_NEW1 );
  }
  else if( ISNUMPAR(11) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) && ISNUM(10) && ISNUM(11) )
  {
    HB_FUNC_EXEC( QUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW3 );
    //HB_FUNC_EXEC( QUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUUID_DELETE )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString toString() const;
*/
HB_FUNC_STATIC( QUUID_TOSTRING )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QUUID_TOBYTEARRAY )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toRfc4122() const
*/
HB_FUNC_STATIC( QUUID_TORFC4122 )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toRfc4122 (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QUUID_ISNULL )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QUuid::Variant variant() const
*/
HB_FUNC_STATIC( QUUID_VARIANT )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->variant (  ) );
  }
}


/*
QUuid::Version version() const
*/
HB_FUNC_STATIC( QUUID_VERSION )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->version (  ) );
  }
}



/*
static QUuid fromRfc4122(const QByteArray &)
*/
HB_FUNC_STATIC( QUUID_FROMRFC4122 )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUuid * ptr = new QUuid( QUuid::fromRfc4122 ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QUUID", true );
}


/*
static QUuid createUuid()
*/
HB_FUNC_STATIC( QUUID_CREATEUUID )
{
  QUuid * ptr = new QUuid( QUuid::createUuid (  ) );
  _qt4xhb_createReturnClass ( ptr, "QUUID", true );
}




#pragma ENDDUMP
