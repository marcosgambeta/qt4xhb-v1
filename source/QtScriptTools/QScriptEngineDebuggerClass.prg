/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTION
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QMAINWINDOW
REQUEST QWIDGET

CLASS QScriptEngineDebugger INHERIT QObject

   DATA class_id INIT Class_Id_QScriptEngineDebugger
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QScriptEngineDebugger
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptEngineDebugger>

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
QScriptEngineDebugger ( QObject * parent = 0 )
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_NEW )
{
  QScriptEngineDebugger * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptEngineDebugger ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptEngineDebugger *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QSCRIPTENGINEDEBUGGER_DELETE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * action ( DebuggerAction action ) const
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_ACTION )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->action (  (QScriptEngineDebugger::DebuggerAction) par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
void attachTo ( QScriptEngine * engine )
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_ATTACHTO )
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
HB_FUNC( QSCRIPTENGINEDEBUGGER_AUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->autoShowStandardWindow (  );
    hb_retl( b );
  }
}


/*
QMenu * createStandardMenu ( QWidget * parent = 0 )
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDMENU )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMenu * ptr = obj->createStandardMenu ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );  }
}


/*
QToolBar * createStandardToolBar ( QWidget * parent = 0 )
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDTOOLBAR )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QToolBar * ptr = obj->createStandardToolBar ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QTOOLBAR" );  }
}


/*
void detach ()
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_DETACH )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->detach (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoShowStandardWindow ( bool autoShow )
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_SETAUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAutoShowStandardWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMainWindow * standardWindow () const
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_STANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMainWindow * ptr = obj->standardWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QMAINWINDOW" );  }
}


/*
DebuggerState state () const
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_STATE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
QWidget * widget ( DebuggerWidget widget ) const
*/
HB_FUNC( QSCRIPTENGINEDEBUGGER_WIDGET )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * ptr = obj->widget (  (QScriptEngineDebugger::DebuggerWidget) par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}






#pragma ENDDUMP
