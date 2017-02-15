/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QXMLNAME

CLASS QXmlName

   DATA pointer
   DATA class_id INIT Class_Id_QXmlName
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD isNull
   METHOD localName
   METHOD namespaceUri
   METHOD prefix
   METHOD toClarkName
   METHOD fromClarkName
   METHOD isNCName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlName
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlName
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlName
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlName
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlName
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlName
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlName>

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

#include <QXmlNamePool>

/*
QXmlName ()
*/
HB_FUNC_STATIC( QXMLNAME_NEW1 )
{
  QXmlName * o = NULL;
  o = new QXmlName (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlName *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
*/
HB_FUNC_STATIC( QXMLNAME_NEW2 )
{
  QXmlName * o = NULL;
  QXmlNamePool * par1 = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QString par3 = ISNIL(3)? QString() : hb_parc(3);
  QString par4 = ISNIL(4)? QString() : hb_parc(4);
  o = new QXmlName ( *par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlName *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlName ()
//[2]QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )

HB_FUNC_STATIC( QXMLNAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISQXMLNAMEPOOL(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool isNull () const
*/
HB_FUNC_STATIC( QXMLNAME_ISNULL )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString localName ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_LOCALNAME )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->localName ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString namespaceUri ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_NAMESPACEURI )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->namespaceUri ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString prefix ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_PREFIX )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->prefix ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toClarkName ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_TOCLARKNAME )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->toClarkName ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
QXmlName fromClarkName ( const QString & clarkName, const QXmlNamePool & namePool )
*/
HB_FUNC_STATIC( QXMLNAME_FROMCLARKNAME )
{
  QString par1 = hb_parc(1);
  QXmlNamePool * par2 = (QXmlNamePool *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QXmlName * ptr = new QXmlName( QXmlName::fromClarkName ( par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QXMLNAME", true );
}


/*
bool isNCName ( const QString & candidate )
*/
HB_FUNC_STATIC( QXMLNAME_ISNCNAME )
{
  QString par1 = hb_parc(1);
  hb_retl( QXmlName::isNCName ( par1 ) );
}




#pragma ENDDUMP
