$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTLAYOUT
REQUEST QTEXTBLOCK
REQUEST QTEXTLIST
REQUEST QTEXTBLOCKUSERDATA
#endif

CLASS QTextBlock

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD blockFormat
   METHOD blockFormatIndex
   METHOD blockNumber
   METHOD charFormat
   METHOD charFormatIndex
   METHOD clearLayout
   METHOD contains
   METHOD document
   METHOD firstLineNumber
   METHOD isValid
   METHOD isVisible
   METHOD layout
   METHOD length
   METHOD lineCount
   METHOD next
   METHOD position
   METHOD previous
   METHOD revision
   METHOD setLineCount
   METHOD setRevision
   METHOD setUserData
   METHOD setUserState
   METHOD setVisible
   METHOD text
   METHOD textDirection
   METHOD textList
   METHOD userData
   METHOD userState

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBlock
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextBlock>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextBlock ( const QTextBlock & other )
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW )
{
  QTextBlock * o = new QTextBlock ( *PQTEXTBLOCK(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTEXTBLOCK_DELETE )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QTextBlockFormat blockFormat () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_BLOCKFORMAT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->blockFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );
  }
}

/*
int blockFormatIndex () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_BLOCKFORMATINDEX )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->blockFormatIndex () );
  }
}

/*
int blockNumber () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_BLOCKNUMBER )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->blockNumber () );
  }
}

/*
QTextCharFormat charFormat () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_CHARFORMAT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}

/*
int charFormatIndex () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_CHARFORMATINDEX )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->charFormatIndex () );
  }
}

/*
void clearLayout ()
*/
HB_FUNC_STATIC( QTEXTBLOCK_CLEARLAYOUT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearLayout ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( int position ) const
*/
HB_FUNC_STATIC( QTEXTBLOCK_CONTAINS )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PINT(1) ) );
  }
}

/*
const QTextDocument * document () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_DOCUMENT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTextDocument * ptr = obj->document ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
int firstLineNumber () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_FIRSTLINENUMBER )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->firstLineNumber () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_ISVALID )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_ISVISIBLE )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}

/*
QTextLayout * layout () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LAYOUT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextLayout * ptr = obj->layout ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTLAYOUT" );
  }
}

/*
int length () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LENGTH )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->length () );
  }
}

/*
int lineCount () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LINECOUNT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineCount () );
  }
}

/*
QTextBlock next () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEXT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->next () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}

/*
int position () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_POSITION )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->position () );
  }
}

/*
QTextBlock previous () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_PREVIOUS )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->previous () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}

/*
int revision () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_REVISION )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->revision () );
  }
}

/*
void setLineCount ( int count )
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETLINECOUNT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLineCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRevision ( int rev )
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETREVISION )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRevision ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUserData ( QTextBlockUserData * data )
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETUSERDATA )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockUserData * par1 = (QTextBlockUserData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUserData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUserState ( int state )
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETUSERSTATE )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUserState ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QTEXTBLOCK_SETVISIBLE )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXT )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
Qt::LayoutDirection textDirection () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXTDIRECTION )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textDirection () );
  }
}

/*
QTextList * textList () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXTLIST )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextList * ptr = obj->textList ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}

/*
QTextBlockUserData * userData () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_USERDATA )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockUserData * ptr = obj->userData ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKUSERDATA" );
  }
}

/*
int userState () const
*/
HB_FUNC_STATIC( QTEXTBLOCK_USERSTATE )
{
  QTextBlock * obj = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->userState () );
  }
}

$extraMethods

#pragma ENDDUMP
