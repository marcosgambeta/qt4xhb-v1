/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setMapping1
   METHOD setMapping2
   METHOD setMapping3
   METHOD setMapping4
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping1
   METHOD mapping2
   METHOD mapping3
   METHOD mapping4
   METHOD mapping
   METHOD map1
   METHOD map2
   METHOD map
   METHOD onMapped1
   METHOD onMapped2
   METHOD onMapped3
   METHOD onMapped4
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSignalMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSignalMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSignalMapper(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_NEW )
{
  QSignalMapper * o = new QSignalMapper ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QSIGNALMAPPER_DELETE )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void setMapping(QObject *sender, int id)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING1 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMapping ( PQOBJECT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, const QString &text)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING2 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMapping ( PQOBJECT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QWidget *widget)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING3 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMapping ( PQOBJECT(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMapping(QObject *sender, QObject *object)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING4 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMapping ( PQOBJECT(1), PQOBJECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMapping(QObject *sender, int id)
//[2]void setMapping(QObject *sender, const QString &text)
//[3]void setMapping(QObject *sender, QWidget *widget)
//[4]void setMapping(QObject *sender, QObject *object)

HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING4 );
  }
}

/*
void removeMappings(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_REMOVEMAPPINGS )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeMappings ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject *mapping(int id) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING1 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->mapping ( PINT(1) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(const QString &text) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING2 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->mapping ( PQSTRING(1) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QWidget *widget) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING3 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->mapping ( PQWIDGET(1) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QObject *mapping(QObject *object) const
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING4 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->mapping ( PQOBJECT(1) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

//[1]QObject *mapping(int id) const
//[2]QObject *mapping(const QString &text) const
//[3]QObject *mapping(QWidget *widget) const
//[4]QObject *mapping(QObject *object) const

HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING2 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING3 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING4 );
  }
}

/*
void map()
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAP1 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->map ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void map(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALMAPPER_MAP2 )
{
  QSignalMapper * obj = (QSignalMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->map ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void map()
//[2]void map(QObject *sender)

HB_FUNC_STATIC( QSIGNALMAPPER_MAP )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAP2 );
  }
}

#pragma ENDDUMP
