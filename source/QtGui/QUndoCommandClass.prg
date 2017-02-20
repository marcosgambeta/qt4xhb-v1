/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QUNDOCOMMAND

CLASS QUndoCommand

   DATA pointer
   DATA class_id INIT Class_Id_QUndoCommand
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD child
   METHOD childCount
   METHOD id
   METHOD mergeWith
   METHOD redo
   METHOD setText
   METHOD text
   METHOD undo
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QUndoCommand
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QUndoCommand
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QUndoCommand
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QUndoCommand
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QUndoCommand
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QUndoCommand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QUndoCommand>

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
QUndoCommand ( QUndoCommand * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOCOMMAND_NEW1 )
{
  QUndoCommand * o = NULL;
  QUndoCommand * par1 = ISNIL(1)? 0 : (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUndoCommand ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUndoCommand *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QUndoCommand ( const QString & text, QUndoCommand * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOCOMMAND_NEW2 )
{
  QUndoCommand * o = NULL;
  QString par1 = hb_parc(1);
  QUndoCommand * par2 = ISNIL(2)? 0 : (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUndoCommand ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUndoCommand *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QUndoCommand ( QUndoCommand * parent = 0 )
//[2]QUndoCommand ( const QString & text, QUndoCommand * parent = 0 )

HB_FUNC_STATIC( QUNDOCOMMAND_NEW )
{
  if( ISBETWEEN(0,1) && (ISQUNDOCOMMAND(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QUNDOCOMMAND_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQUNDOCOMMAND(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QUNDOCOMMAND_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUNDOCOMMAND_DELETE )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QUndoCommand * child ( int index ) const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_CHILD )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QUndoCommand * ptr = obj->child ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QUNDOCOMMAND" );
  }
}


/*
int childCount () const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_CHILDCOUNT )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->childCount (  ) );
  }
}


/*
virtual int id () const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_ID )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->id (  ) );
  }
}


/*
virtual bool mergeWith ( const QUndoCommand * command )
*/
HB_FUNC_STATIC( QUNDOCOMMAND_MERGEWITH )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QUndoCommand * par1 = (const QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->mergeWith ( par1 ) );
  }
}


/*
virtual void redo ()
*/
HB_FUNC_STATIC( QUNDOCOMMAND_REDO )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QUNDOCOMMAND_SETTEXT )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QUNDOCOMMAND_TEXT )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual void undo ()
*/
HB_FUNC_STATIC( QUNDOCOMMAND_UNDO )
{
  QUndoCommand * obj = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
