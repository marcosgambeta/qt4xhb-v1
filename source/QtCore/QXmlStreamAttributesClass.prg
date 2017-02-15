/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSTRINGREF

CLASS QXmlStreamAttributes

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamAttributes
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append
   METHOD hasAttribute1
   METHOD hasAttribute2
   METHOD hasAttribute3
   METHOD hasAttribute
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value5
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlStreamAttributes
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlStreamAttributes
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlStreamAttributes
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlStreamAttributes
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlStreamAttributes
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlStreamAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlStreamAttributes>

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
QXmlStreamAttributes()
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEW )
{
  QXmlStreamAttributes * o = NULL;
  o = new QXmlStreamAttributes (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamAttributes *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_DELETE )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    obj->append ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void append(const QXmlStreamAttribute & attribute)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamAttribute * par1 = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->append ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void append(const QString & qualifiedName, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    obj->append ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void append(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void append(const QXmlStreamAttribute & attribute)
//[3]void append(const QString & qualifiedName, const QString & value)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND3 );
  }
}

/*
bool hasAttribute(const QString & qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->hasAttribute ( par1 ) );
  }
}


/*
bool hasAttribute(QLatin1String qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->hasAttribute ( *par1 ) );
  }
}


/*
bool hasAttribute(const QString & namespaceUri, const QString & name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    hb_retl( obj->hasAttribute ( par1, par2 ) );
  }
}


//[1]bool hasAttribute(const QString & qualifiedName) const
//[2]bool hasAttribute(QLatin1String qualifiedName) const
//[3]bool hasAttribute(const QString & namespaceUri, const QString & name) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 );
  }
}

/*
QStringRef value(const QString & namespaceUri, const QString & name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QStringRef * ptr = new QStringRef( obj->value ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(const QString & namespaceUri, QLatin1String name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QLatin1String * par2 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * ptr = new QStringRef( obj->value ( par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLatin1String * par2 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * ptr = new QStringRef( obj->value ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(const QString & qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE4 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QStringRef * ptr = new QStringRef( obj->value ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(QLatin1String qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE5 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * ptr = new QStringRef( obj->value ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


//[1]QStringRef value(const QString & namespaceUri, const QString & name) const
//[2]QStringRef value(const QString & namespaceUri, QLatin1String name) const
//[3]QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
//[4]QStringRef value(const QString & qualifiedName) const
//[5]QStringRef value(QLatin1String qualifiedName) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLATIN1STRING(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE2 );
  }
  else if( ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE4 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE5 );
  }
}



#pragma ENDDUMP
