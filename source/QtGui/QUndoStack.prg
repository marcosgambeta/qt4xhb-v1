/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QUNDOCOMMAND
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

PROCEDURE destroyObject() CLASS QUndoStack
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QUndoStack>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QAction>

/*
QUndoStack( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOSTACK_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    QUndoStack * obj = new QUndoStack( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QUNDOSTACK_DELETE )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void beginMacro( const QString & text )
*/
HB_FUNC_STATIC( QUNDOSTACK_BEGINMACRO )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->beginMacro( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool canRedo() const
*/
HB_FUNC_STATIC( QUNDOSTACK_CANREDO )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canRedo() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool canUndo() const
*/
HB_FUNC_STATIC( QUNDOSTACK_CANUNDO )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canUndo() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int cleanIndex() const
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEANINDEX )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->cleanIndex() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QUNDOSTACK_CLEAR )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
const QUndoCommand * command( int index ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_COMMAND )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      const QUndoCommand * ptr = obj->command( PINT(1) );
      Qt4xHb::createReturnClass(ptr, "QUNDOCOMMAND", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int count() const
*/
HB_FUNC_STATIC( QUNDOSTACK_COUNT )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAction * createRedoAction( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEREDOACTION )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQOBJECT(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      QAction * ptr = obj->createRedoAction( PQOBJECT(1), OPQSTRING( 2, QString() ) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAction * createUndoAction( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_CREATEUNDOACTION )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQOBJECT(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      QAction * ptr = obj->createUndoAction( PQOBJECT(1), OPQSTRING( 2, QString() ) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void endMacro()
*/
HB_FUNC_STATIC( QUNDOSTACK_ENDMACRO )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->endMacro();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int index() const
*/
HB_FUNC_STATIC( QUNDOSTACK_INDEX )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->index() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isActive() const
*/
HB_FUNC_STATIC( QUNDOSTACK_ISACTIVE )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isClean() const
*/
HB_FUNC_STATIC( QUNDOSTACK_ISCLEAN )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isClean() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void push( QUndoCommand * cmd )
*/
HB_FUNC_STATIC( QUNDOSTACK_PUSH )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQUNDOCOMMAND(1) )
    {
#endif
      obj->push( PQUNDOCOMMAND(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString redoText() const
*/
HB_FUNC_STATIC( QUNDOSTACK_REDOTEXT )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->redoText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setUndoLimit( int limit )
*/
HB_FUNC_STATIC( QUNDOSTACK_SETUNDOLIMIT )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setUndoLimit( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text( int idx ) const
*/
HB_FUNC_STATIC( QUNDOSTACK_TEXT )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->text( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int undoLimit() const
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDOLIMIT )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->undoLimit() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString undoText() const
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDOTEXT )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->undoText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void redo()
*/
HB_FUNC_STATIC( QUNDOSTACK_REDO )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->redo();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setActive( bool active = true )
*/
HB_FUNC_STATIC( QUNDOSTACK_SETACTIVE )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISLOG(1) || HB_ISNIL(1) ) )
    {
#endif
      obj->setActive( OPBOOL( 1, true ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setClean()
*/
HB_FUNC_STATIC( QUNDOSTACK_SETCLEAN )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setClean();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setIndex( int idx )
*/
HB_FUNC_STATIC( QUNDOSTACK_SETINDEX )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setIndex( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void undo()
*/
HB_FUNC_STATIC( QUNDOSTACK_UNDO )
{
  QUndoStack * obj = qobject_cast<QUndoStack*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->undo();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QUndoStackSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QUNDOSTACK_ONCANREDOCHANGED )
{
  QUndoStackSlots_connect_signal("canRedoChanged(bool)", "canRedoChanged(bool)");
}

HB_FUNC_STATIC( QUNDOSTACK_ONCANUNDOCHANGED )
{
  QUndoStackSlots_connect_signal("canUndoChanged(bool)", "canUndoChanged(bool)");
}

HB_FUNC_STATIC( QUNDOSTACK_ONCLEANCHANGED )
{
  QUndoStackSlots_connect_signal("cleanChanged(bool)", "cleanChanged(bool)");
}

HB_FUNC_STATIC( QUNDOSTACK_ONINDEXCHANGED )
{
  QUndoStackSlots_connect_signal("indexChanged(int)", "indexChanged(int)");
}

HB_FUNC_STATIC( QUNDOSTACK_ONREDOTEXTCHANGED )
{
  QUndoStackSlots_connect_signal("redoTextChanged(QString)", "redoTextChanged(QString)");
}

HB_FUNC_STATIC( QUNDOSTACK_ONUNDOTEXTCHANGED )
{
  QUndoStackSlots_connect_signal("undoTextChanged(QString)", "undoTextChanged(QString)");
}

#pragma ENDDUMP
