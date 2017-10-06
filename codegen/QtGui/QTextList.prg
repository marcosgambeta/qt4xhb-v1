$header

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

$destructor

#pragma BEGINDUMP

#include <QTextList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

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
$method=|int|count|

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
$method=|int|itemNumber|const QTextBlock &

/*
QString itemText ( const QTextBlock & block ) const
*/
$method=|QString|itemText|const QTextBlock &

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
