/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QICONENGINEV2

CLASS QIconEngineV2 INHERIT QIconEngine

   DATA class_id INIT Class_Id_QIconEngineV2
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD availableSizes
   METHOD clone
   METHOD iconName
   METHOD key
   METHOD read
   METHOD virtual_hook
   METHOD write
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconEngineV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QIconEngineV2>

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

HB_FUNC_STATIC( QICONENGINEV2_DELETE )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QSize> availableSizes ( QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
*/
HB_FUNC_STATIC( QICONENGINEV2_AVAILABLESIZES )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
    QList<QSize> list = obj->availableSizes (  (QIcon::Mode) par1,  (QIcon::State) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QIconEngineV2 * clone () const
*/
HB_FUNC_STATIC( QICONENGINEV2_CLONE )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIconEngineV2 * ptr = obj->clone (  );
    _qt4xhb_createReturnClass ( ptr, "QICONENGINEV2" );
  }
}


/*
QString iconName ()
*/
HB_FUNC_STATIC( QICONENGINEV2_ICONNAME )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->iconName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QString key () const
*/
HB_FUNC_STATIC( QICONENGINEV2_KEY )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->key (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool read ( QDataStream & in )
*/
HB_FUNC_STATIC( QICONENGINEV2_READ )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->read ( *par1 );
    hb_retl( b );
  }
}


/*
virtual void virtual_hook ( int id, void * data )
*/
HB_FUNC_STATIC( QICONENGINEV2_VIRTUAL_HOOK )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    void * par2 = (void *) hb_parptr(2);
    obj->virtual_hook ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QICONENGINEV2_WRITE )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->write ( *par1 );
    hb_retl( b );
  }
}




#pragma ENDDUMP
