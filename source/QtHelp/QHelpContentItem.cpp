/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QHelpContentItem>

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

#include <QUrl>

HB_FUNC( QHELPCONTENTITEM_DELETE )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QHelpContentItem * child ( int row ) const
*/
HB_FUNC( QHELPCONTENTITEM_CHILD )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QHelpContentItem * ptr = obj->child ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );  }
}


/*
int childCount () const
*/
HB_FUNC( QHELPCONTENTITEM_CHILDCOUNT )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->childCount (  );
    hb_retni( i );
  }
}


/*
int childPosition ( QHelpContentItem * child ) const
*/
HB_FUNC( QHELPCONTENTITEM_CHILDPOSITION )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentItem * par1 = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->childPosition ( par1 );
    hb_retni( i );
  }
}


/*
QHelpContentItem * parent () const
*/
HB_FUNC( QHELPCONTENTITEM_PARENT )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentItem * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );  }
}


/*
int row () const
*/
HB_FUNC( QHELPCONTENTITEM_ROW )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->row (  );
    hb_retni( i );
  }
}


/*
QString title () const
*/
HB_FUNC( QHELPCONTENTITEM_TITLE )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUrl url () const
*/
HB_FUNC( QHELPCONTENTITEM_URL )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );  }
}



