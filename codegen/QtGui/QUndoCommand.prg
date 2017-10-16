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

$deleteMethod

/*
const QUndoCommand * child ( int index ) const
*/
$method=|const QUndoCommand *|child|int

/*
int childCount () const
*/
$method=|int|childCount|

/*
virtual int id () const
*/
$virtualMethod=|int|id|

/*
virtual bool mergeWith ( const QUndoCommand * command )
*/
$virtualMethod=|bool|mergeWith|const QUndoCommand *

/*
virtual void redo ()
*/
$virtualMethod=|void|redo|

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
QString text () const
*/
$method=|QString|text|

/*
virtual void undo ()
*/
$virtualMethod=|void|undo|

$extraMethods

#pragma ENDDUMP
