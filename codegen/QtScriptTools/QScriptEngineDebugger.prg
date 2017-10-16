$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QMAINWINDOW
REQUEST QWIDGET
#endif

CLASS QScriptEngineDebugger INHERIT QObject

   METHOD new
   METHOD delete
   METHOD action
   METHOD attachTo
   METHOD autoShowStandardWindow
   METHOD createStandardMenu
   METHOD createStandardToolBar
   METHOD detach
   METHOD setAutoShowStandardWindow
   METHOD standardWindow
   METHOD state
   METHOD widget

   METHOD onEvaluationResumed
   METHOD onEvaluationSuspended

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptEngineDebugger>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptEngineDebugger ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_NEW )
{
  QScriptEngineDebugger * o = new QScriptEngineDebugger ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QAction * action ( DebuggerAction action ) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ACTION )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->action ( (QScriptEngineDebugger::DebuggerAction) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
void attachTo ( QScriptEngine * engine )
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ATTACHTO )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * par1 = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->attachTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoShowStandardWindow () const
*/
$method=|bool|autoShowStandardWindow|

/*
QMenu * createStandardMenu ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDMENU )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardMenu ( OPQWIDGET(1,0) );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QToolBar * createStandardToolBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDTOOLBAR )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * ptr = obj->createStandardToolBar ( OPQWIDGET(1,0) );
    _qt4xhb_createReturnClass ( ptr, "QTOOLBAR" );
  }
}


/*
void detach ()
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DETACH )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->detach ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoShowStandardWindow ( bool autoShow )
*/
$method=|void|setAutoShowStandardWindow|bool

/*
QMainWindow * standardWindow () const
*/
$method=|QMainWindow *|standardWindow|

/*
DebuggerState state () const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STATE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}

/*
QWidget * widget ( DebuggerWidget widget ) const
*/
$method=|QWidget *|widget|QScriptEngineDebugger::DebuggerWidget

#pragma ENDDUMP
