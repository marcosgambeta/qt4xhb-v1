/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFileIconProvider>

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
QFileIconProvider()
*/
HB_FUNC( QFILEICONPROVIDER_NEW )
{
  QFileIconProvider * o = NULL;
  o = new QFileIconProvider (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileIconProvider *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QFILEICONPROVIDER_DELETE )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QIcon icon(IconType type) const
*/
HB_FUNC( QFILEICONPROVIDER_ICON1 )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->icon (  (QFileIconProvider::IconType) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );  }
}


/*
virtual QIcon icon(const QFileInfo & info) const
*/
HB_FUNC( QFILEICONPROVIDER_ICON2 )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIcon * ptr = new QIcon( obj->icon ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );  }
}


//[1]virtual QIcon icon(IconType type) const
//[2]virtual QIcon icon(const QFileInfo & info) const

HB_FUNC( QFILEICONPROVIDER_ICON )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILEICONPROVIDER_ICON1 );
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    HB_FUNC_EXEC( QFILEICONPROVIDER_ICON2 );
  }
}

/*
virtual QString type(const QFileInfo & info) const
*/
HB_FUNC( QFILEICONPROVIDER_TYPE )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->type ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




