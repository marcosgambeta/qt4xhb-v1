/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlResultItems>

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

#include <QXmlItem>

/*
QXmlResultItems ()
*/
HB_FUNC( QXMLRESULTITEMS_NEW )
{
  QXmlResultItems * o = NULL;
  o = new QXmlResultItems (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlResultItems *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC( QXMLRESULTITEMS_DELETE )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QXmlItem current () const
*/
HB_FUNC( QXMLRESULTITEMS_CURRENT )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->current (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLITEM", true );  }
}


/*
bool hasError () const
*/
HB_FUNC( QXMLRESULTITEMS_HASERROR )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasError (  );
    hb_retl( b );
  }
}


/*
QXmlItem next ()
*/
HB_FUNC( QXMLRESULTITEMS_NEXT )
{
  QXmlResultItems * obj = (QXmlResultItems *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlItem * ptr = new QXmlItem( obj->next (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLITEM", true );  }
}




