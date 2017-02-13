/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPROCESSENVIRONMENT

CLASS QProcessEnvironment

   DATA pointer
   DATA class_id INIT Class_Id_QProcessEnvironment
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD clear
   METHOD contains
   METHOD insert1
   METHOD remove
   METHOD value
   METHOD toStringList
   METHOD keys
   METHOD insert2
   METHOD insert
   METHOD systemEnvironment
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QProcessEnvironment
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QProcessEnvironment
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QProcessEnvironment
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QProcessEnvironment
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QProcessEnvironment
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QProcessEnvironment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QProcessEnvironment>

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
QProcessEnvironment()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW1 )
{
  QProcessEnvironment * o = NULL;
  o = new QProcessEnvironment (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QProcessEnvironment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QProcessEnvironment(const QProcessEnvironment &other)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW2 )
{
  QProcessEnvironment * o = NULL;
  QProcessEnvironment * par1 = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QProcessEnvironment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QProcessEnvironment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QProcessEnvironment()
//[2]QProcessEnvironment(const QProcessEnvironment &other)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPROCESSENVIRONMENT_DELETE )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_ISEMPTY )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_CLEAR )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(const QString &name) const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_CONTAINS )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->contains ( par1 );
    hb_retl( b );
  }
}


/*
void insert(const QString &name, const QString &value)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT1 )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    obj->insert ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void remove(const QString &name)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_REMOVE )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->remove ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString value(const QString &name, const QString &defaultValue = QString()) const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_VALUE )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->value ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QStringList toStringList() const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_TOSTRINGLIST )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->toStringList (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QStringList keys() const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_KEYS )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->keys (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void insert(const QProcessEnvironment &e)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT2 )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProcessEnvironment * par1 = (QProcessEnvironment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insert ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insert(const QString &name, const QString &value)
//[2]void insert(const QProcessEnvironment &e)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_INSERT1 );
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    HB_FUNC_EXEC( QPROCESSENVIRONMENT_INSERT2 );
  }
}


/*
static QProcessEnvironment systemEnvironment()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_SYSTEMENVIRONMENT )
{
  QProcessEnvironment * ptr = new QProcessEnvironment( QProcessEnvironment::systemEnvironment (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
}




#pragma ENDDUMP
