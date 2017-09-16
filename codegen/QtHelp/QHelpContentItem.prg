$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QURL
#endif

CLASS QHelpContentItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD child
   METHOD childCount
   METHOD childPosition
   METHOD parent
   METHOD row
   METHOD title
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpContentItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

$deleteMethod

/*
QHelpContentItem * child ( int row ) const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILD )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentItem * ptr = obj->child ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );
  }
}


/*
int childCount () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILDCOUNT )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->childCount () );
  }
}


/*
int childPosition ( QHelpContentItem * child ) const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILDPOSITION )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentItem * par1 = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->childPosition ( par1 ) );
  }
}


/*
QHelpContentItem * parent () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_PARENT )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentItem * ptr = obj->parent ();
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );
  }
}


/*
int row () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_ROW )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->row () );
  }
}

/*
QString title () const
*/
$method=|QString|title|

/*
QUrl url () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_URL )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}

$extraMethods

#pragma ENDDUMP
