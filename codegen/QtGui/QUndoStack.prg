$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUNDOCOMMAND
REQUEST QACTION
#endif

CLASS QUndoStack INHERIT QObject

   METHOD new
   METHOD delete
   METHOD beginMacro
   METHOD canRedo
   METHOD canUndo
   METHOD cleanIndex
   METHOD clear
   METHOD command
   METHOD count
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD endMacro
   METHOD index
   METHOD isActive
   METHOD isClean
   METHOD push
   METHOD redoText
   METHOD setUndoLimit
   METHOD text
   METHOD undoLimit
   METHOD undoText
   METHOD redo
   METHOD setActive
   METHOD setClean
   METHOD setIndex
   METHOD undo

   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QUndoStack>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUndoStack ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOSTACK_NEW )
{
  QUndoStack * o = new QUndoStack ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void beginMacro ( const QString & text )
*/
$method=|void|beginMacro|const QString &

/*
bool canRedo () const
*/
$method=|bool|canRedo|

/*
bool canUndo () const
*/
$method=|bool|canUndo|

/*
int cleanIndex () const
*/
$method=|int|cleanIndex|

/*
void clear ()
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEAR )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QUndoCommand * command ( int index ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_COMMAND )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QUndoCommand * ptr = obj->command ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QUNDOCOMMAND" );
  }
}

/*
int count () const
*/
$method=|int|count|

/*
QAction * createRedoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEREDOACTION )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->createRedoAction ( PQOBJECT(1), OPQSTRING(2,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * createUndoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEUNDOACTION )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->createUndoAction ( PQOBJECT(1), OPQSTRING(2,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void endMacro ()
*/
HB_FUNC_STATIC( QUNDOSTACK_ENDMACRO )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endMacro ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int index () const
*/
$method=|int|index|

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isClean () const
*/
$method=|bool|isClean|

/*
void push ( QUndoCommand * cmd )
*/
HB_FUNC_STATIC( QUNDOSTACK_PUSH )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoCommand * par1 = (QUndoCommand *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->push ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString redoText () const
*/
$method=|QString|redoText|

/*
void setUndoLimit ( int limit )
*/
$method=|void|setUndoLimit|int

/*
QString text ( int idx ) const
*/
$method=|QString|text|int

/*
int undoLimit () const
*/
$method=|int|undoLimit|

/*
QString undoText () const
*/
$method=|QString|undoText|

/*
void redo ()
*/
$method=|void|redo|

/*
void setActive ( bool active = true )
*/
$method=|void|setActive|bool=true

/*
void setClean ()
*/
$method=|void|setClean|

/*
void setIndex ( int idx )
*/
$method=|void|setIndex|int

/*
void undo ()
*/
$method=|void|undo|

#pragma ENDDUMP
