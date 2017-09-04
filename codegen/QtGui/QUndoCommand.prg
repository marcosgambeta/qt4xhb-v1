$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUNDOCOMMAND
#endif

CLASS QUndoCommand

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QUndoCommand>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUndoCommand ( QUndoCommand * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOCOMMAND_NEW1 )
{
  QUndoCommand * par1 = ISNIL(1)? 0 : (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUndoCommand * o = new QUndoCommand ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QUndoCommand ( const QString & text, QUndoCommand * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOCOMMAND_NEW2 )
{
  QUndoCommand * par2 = ISNIL(2)? 0 : (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUndoCommand * o = new QUndoCommand ( PQSTRING(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
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
    const QUndoCommand * ptr = obj->child ( PINT(1) );
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
    RINT( obj->childCount () );
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
    RINT( obj->id () );
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
    RBOOL( obj->mergeWith ( par1 ) );
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
    obj->redo ();
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
    obj->setText ( PQSTRING(1) );
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
    RQSTRING( obj->text () );
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
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
