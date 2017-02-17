/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHELPCONTENTITEM
REQUEST QURL

CLASS QHelpContentItem

   DATA pointer
   DATA class_id INIT Class_Id_QHelpContentItem
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QHelpContentItem
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QHelpContentItem
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QHelpContentItem
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QHelpContentItem
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QHelpContentItem
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QHelpContentItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

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

HB_FUNC_STATIC( QHELPCONTENTITEM_DELETE )
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
HB_FUNC_STATIC( QHELPCONTENTITEM_CHILD )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QHelpContentItem * ptr = obj->child ( par1 );
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
    hb_retni( obj->childCount (  ) );
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
    hb_retni( obj->childPosition ( par1 ) );
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
    QHelpContentItem * ptr = obj->parent (  );
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
    hb_retni( obj->row (  ) );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QHELPCONTENTITEM_TITLE )
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
HB_FUNC_STATIC( QHELPCONTENTITEM_URL )
{
  QHelpContentItem * obj = (QHelpContentItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}




#pragma ENDDUMP
