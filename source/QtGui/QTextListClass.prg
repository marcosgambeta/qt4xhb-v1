/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTLISTFORMAT
REQUEST QTEXTBLOCK
#endif

CLASS QTextList INHERIT QTextBlockGroup

   DATA self_destruction INIT .F.

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

#include <QTextList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
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
    obj->add ( *PQTEXTBLOCK(1) );
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
    RINT( obj->count () );
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
    QTextListFormat * ptr = new QTextListFormat( obj->format () );
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
    QTextBlock * ptr = new QTextBlock( obj->item ( PINT(1) ) );
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
    RINT( obj->itemNumber ( *PQTEXTBLOCK(1) ) );
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
    RQSTRING( obj->itemText ( *PQTEXTBLOCK(1) ) );
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
    obj->remove ( *PQTEXTBLOCK(1) );
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
    obj->removeItem ( PINT(1) );
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
    obj->setFormat ( *PQTEXTLISTFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
