/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTCURSOR
REQUEST QTEXTCHARFORMAT

CLASS QTextTableCell

   DATA pointer
   DATA class_id INIT Class_Id_QTextTableCell
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD column
   METHOD columnSpan
   METHOD firstCursorPosition
   METHOD format
   METHOD isValid
   METHOD lastCursorPosition
   METHOD row
   METHOD rowSpan
   METHOD setFormat
   METHOD tableCellFormatIndex
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextTableCell
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextTableCell
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextTableCell
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextTableCell
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextTableCell
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextTableCell
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextTableCell>

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

#include <QTextCursor>

/*
QTextTableCell ()
*/
HB_FUNC_STATIC( QTEXTTABLECELL_NEW1 )
{
  QTextTableCell * o = NULL;
  o = new QTextTableCell (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextTableCell *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextTableCell ( const QTextTableCell & other )
*/
HB_FUNC_STATIC( QTEXTTABLECELL_NEW2 )
{
  QTextTableCell * o = NULL;
  QTextTableCell * par1 = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextTableCell ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextTableCell *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTextTableCell ()
//[2]QTextTableCell ( const QTextTableCell & other )

HB_FUNC_STATIC( QTEXTTABLECELL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTTABLECELL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTTABLECELL(1) )
  {
    HB_FUNC_EXEC( QTEXTTABLECELL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTTABLECELL_DELETE )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int column () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_COLUMN )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->column (  ) );
  }
}


/*
int columnSpan () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_COLUMNSPAN )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->columnSpan (  ) );
  }
}



/*
QTextCursor firstCursorPosition () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FIRSTCURSORPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->firstCursorPosition (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCharFormat format () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FORMAT )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ISVALID )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QTextCursor lastCursorPosition () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_LASTCURSORPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->lastCursorPosition (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
int row () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ROW )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->row (  ) );
  }
}


/*
int rowSpan () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ROWSPAN )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->rowSpan (  ) );
  }
}


/*
void setFormat ( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QTEXTTABLECELL_SETFORMAT )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int tableCellFormatIndex () const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_TABLECELLFORMATINDEX )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->tableCellFormatIndex (  ) );
  }
}




#pragma ENDDUMP
