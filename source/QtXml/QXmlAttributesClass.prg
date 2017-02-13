/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlAttributes

   DATA pointer
   DATA class_id INIT Class_Id_QXmlAttributes
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index1
   METHOD index2
   METHOD index3
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type1
   METHOD type2
   METHOD type3
   METHOD type
   METHOD uri
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlAttributes
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlAttributes
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlAttributes
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlAttributes
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlAttributes
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlAttributes>

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
QXmlAttributes ()
*/
HB_FUNC( QXMLATTRIBUTES_NEW )
{
  QXmlAttributes * o = NULL;
  o = new QXmlAttributes (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlAttributes *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC( QXMLATTRIBUTES_DELETE )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
HB_FUNC( QXMLATTRIBUTES_APPEND )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    QString par4 = hb_parc(4);
    obj->append ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC( QXMLATTRIBUTES_CLEAR )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC( QXMLATTRIBUTES_COUNT )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
int index ( const QString & qName ) const
*/
HB_FUNC( QXMLATTRIBUTES_INDEX1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int i = obj->index ( par1 );
    hb_retni( i );
  }
}


/*
int index ( const QLatin1String & qName ) const
*/
HB_FUNC( QXMLATTRIBUTES_INDEX2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->index ( *par1 );
    hb_retni( i );
  }
}


/*
int index ( const QString & uri, const QString & localPart ) const
*/
HB_FUNC( QXMLATTRIBUTES_INDEX3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    int i = obj->index ( par1, par2 );
    hb_retni( i );
  }
}


//[1]int index ( const QString & qName ) const
//[2]int index ( const QLatin1String & qName ) const
//[3]int index ( const QString & uri, const QString & localPart ) const

HB_FUNC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX1 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX3 );
  }
}

/*
int length () const
*/
HB_FUNC( QXMLATTRIBUTES_LENGTH )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->length (  );
    hb_retni( i );
  }
}


/*
QString localName ( int index ) const
*/
HB_FUNC( QXMLATTRIBUTES_LOCALNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->localName ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString qName ( int index ) const
*/
HB_FUNC( QXMLATTRIBUTES_QNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->qName ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString type ( int index ) const
*/
HB_FUNC( QXMLATTRIBUTES_TYPE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->type ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString type ( const QString & qName ) const
*/
HB_FUNC( QXMLATTRIBUTES_TYPE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->type ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString type ( const QString & uri, const QString & localName ) const
*/
HB_FUNC( QXMLATTRIBUTES_TYPE3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString str1 = obj->type ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString type ( int index ) const
//[2]QString type ( const QString & qName ) const
//[3]QString type ( const QString & uri, const QString & localName ) const

HB_FUNC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE3 );
  }
}

/*
QString uri ( int index ) const
*/
HB_FUNC( QXMLATTRIBUTES_URI )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->uri ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString value ( int index ) const
*/
HB_FUNC( QXMLATTRIBUTES_VALUE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->value ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString value ( const QString & qName ) const
*/
HB_FUNC( QXMLATTRIBUTES_VALUE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->value ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString value ( const QLatin1String & qName ) const
*/
HB_FUNC( QXMLATTRIBUTES_VALUE3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->value ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString value ( const QString & uri, const QString & localName ) const
*/
HB_FUNC( QXMLATTRIBUTES_VALUE4 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString str1 = obj->value ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString value ( int index ) const
//[2]QString value ( const QString & qName ) const
//[3]QString value ( const QLatin1String & qName ) const
//[4]QString value ( const QString & uri, const QString & localName ) const

HB_FUNC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE2 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE4 );
  }
}



#pragma ENDDUMP
