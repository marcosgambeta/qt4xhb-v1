/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTLISTFORMAT
REQUEST QTEXTBLOCK

CLASS QTextList INHERIT QTextBlockGroup

   DATA class_id INIT Class_Id_QTextList
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD add
   METHOD count
   METHOD format
   METHOD item
   METHOD itemNumber
   METHOD itemText
   METHOD remove
   METHOD removeItem
   METHOD setFormat
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextList>

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

HB_FUNC_STATIC( QTEXTLIST_DELETE )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void add ( const QTextBlock & block )
*/
HB_FUNC_STATIC( QTEXTLIST_ADD )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->add ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QTEXTLIST_COUNT )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
QTextListFormat format () const
*/
HB_FUNC_STATIC( QTEXTLIST_FORMAT )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * ptr = new QTextListFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLISTFORMAT" );
  }
}


/*
QTextBlock item ( int i ) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEM )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextBlock * ptr = new QTextBlock( obj->item ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
int itemNumber ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMNUMBER )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->itemNumber ( *par1 );
    hb_retni( i );
  }
}


/*
QString itemText ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMTEXT )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->itemText ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void remove ( const QTextBlock & block )
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVE )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->remove ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeItem ( int i )
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVEITEM )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QTextListFormat & format )
*/
HB_FUNC_STATIC( QTEXTLIST_SETFORMAT )
{
  QTextList * obj = (QTextList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
