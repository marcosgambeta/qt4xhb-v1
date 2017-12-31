/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionGroup INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actions
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction
   METHOD checkedAction
   METHOD isEnabled
   METHOD isExclusive
   METHOD isVisible
   METHOD removeAction
   METHOD setDisabled
   METHOD setEnabled
   METHOD setExclusive
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QActionGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QActionGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QActionGroup ( QObject * parent )
*/
HB_FUNC_STATIC( QACTIONGROUP_NEW )
{
  QActionGroup * o = new QActionGroup ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QACTIONGROUP_DELETE )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ACTIONS )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QACTION" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAction *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QAction * addAction ( QAction * action )
*/
HB_FUNC_STATIC( QACTIONGROUP_ADDACTION1 )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addAction ( PQACTION(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QACTIONGROUP_ADDACTION2 )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QACTIONGROUP_ADDACTION3 )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

//[1]QAction * addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QACTIONGROUP_ADDACTION1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QACTIONGROUP_ADDACTION2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QACTIONGROUP_ADDACTION3 );
  }
}

/*
QAction * checkedAction () const
*/
HB_FUNC_STATIC( QACTIONGROUP_CHECKEDACTION )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->checkedAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISENABLED )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}

/*
bool isExclusive () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISEXCLUSIVE )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isExclusive () );
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISVISIBLE )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}

/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QACTIONGROUP_REMOVEACTION )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled ( bool b )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETDISABLED )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDisabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETENABLED )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExclusive ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETEXCLUSIVE )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExclusive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETVISIBLE )
{
  QActionGroup * obj = (QActionGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
