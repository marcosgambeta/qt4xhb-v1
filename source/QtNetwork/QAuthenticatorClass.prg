/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QVARIANTHASH

CLASS QAuthenticator

   DATA pointer
   DATA class_id INIT Class_Id_QAuthenticator
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD option
   METHOD options
   METHOD password
   METHOD realm
   METHOD setOption
   METHOD setPassword
   METHOD setUser
   METHOD user
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAuthenticator
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAuthenticator
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAuthenticator
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAuthenticator
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAuthenticator
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAuthenticator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAuthenticator>

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
QAuthenticator ()
*/
HB_FUNC_STATIC( QAUTHENTICATOR_NEW1 )
{
  QAuthenticator * o = NULL;
  o = new QAuthenticator (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAuthenticator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QAuthenticator ( const QAuthenticator & other )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_NEW2 )
{
  QAuthenticator * o = NULL;
  QAuthenticator * par1 = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QAuthenticator ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAuthenticator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QAuthenticator ()
//[2]QAuthenticator ( const QAuthenticator & other )

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUTHENTICATOR_DELETE )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_ISNULL )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QVariant option ( const QString & opt ) const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_OPTION )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->option ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariantHash options () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_OPTIONS )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariantHash * ptr = new QVariantHash( obj->options (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANTHASH" );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_PASSWORD )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->password (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString realm () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_REALM )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->realm (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setOption ( const QString & opt, const QVariant & value )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETOPTION )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setOption ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETPASSWORD )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPassword ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUser ( const QString & user )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETUSER )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setUser ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString user () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_USER )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->user (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





#pragma ENDDUMP
