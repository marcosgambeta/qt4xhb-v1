/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMDIAREA
REQUEST QMENU
REQUEST QWIDGET
REQUEST QSIZE

CLASS QMdiSubWindow INHERIT QWidget

   DATA class_id INIT Class_Id_QMdiSubWindow
   DATA self_destruction INIT .f.

   METHOD new
   METHOD isShaded
   METHOD keyboardPageStep
   METHOD keyboardSingleStep
   METHOD mdiArea
   METHOD setKeyboardPageStep
   METHOD setKeyboardSingleStep
   METHOD setOption
   METHOD setSystemMenu
   METHOD setWidget
   METHOD systemMenu
   METHOD testOption
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD showShaded
   METHOD showSystemMenu
   METHOD onAboutToActivate
   METHOD onWindowStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMdiSubWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMdiSubWindow>

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
QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC( QMDISUBWINDOW_NEW )
{
  QMdiSubWindow * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QMdiSubWindow ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMdiSubWindow *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}



/*
bool isShaded () const
*/
HB_FUNC( QMDISUBWINDOW_ISSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isShaded (  );
    hb_retl( b );
  }
}


/*
int keyboardPageStep () const
*/
HB_FUNC( QMDISUBWINDOW_KEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->keyboardPageStep (  );
    hb_retni( i );
  }
}


/*
int keyboardSingleStep () const
*/
HB_FUNC( QMDISUBWINDOW_KEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->keyboardSingleStep (  );
    hb_retni( i );
  }
}


/*
QMdiArea * mdiArea () const
*/
HB_FUNC( QMDISUBWINDOW_MDIAREA )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMdiArea * ptr = obj->mdiArea (  );
    _qt4xhb_createReturnClass ( ptr, "QMDIAREA" );  }
}


/*
void setKeyboardPageStep ( int step )
*/
HB_FUNC( QMDISUBWINDOW_SETKEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setKeyboardPageStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeyboardSingleStep ( int step )
*/
HB_FUNC( QMDISUBWINDOW_SETKEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setKeyboardSingleStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( SubWindowOption option, bool on = true )
*/
HB_FUNC( QMDISUBWINDOW_SETOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = ISNIL(2)? true : hb_parl(2);
    obj->setOption (  (QMdiSubWindow::SubWindowOption) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSystemMenu ( QMenu * systemMenu )
*/
HB_FUNC( QMDISUBWINDOW_SETSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * par1 = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSystemMenu ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( QWidget * widget )
*/
HB_FUNC( QMDISUBWINDOW_SETWIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMenu * systemMenu () const
*/
HB_FUNC( QMDISUBWINDOW_SYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->systemMenu (  );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );  }
}


/*
bool testOption ( SubWindowOption option ) const
*/
HB_FUNC( QMDISUBWINDOW_TESTOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testOption (  (QMdiSubWindow::SubWindowOption) par1 );
    hb_retl( b );
  }
}


/*
QWidget * widget () const
*/
HB_FUNC( QMDISUBWINDOW_WIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC( QMDISUBWINDOW_MINIMUMSIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QMDISUBWINDOW_SIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void showShaded ()
*/
HB_FUNC( QMDISUBWINDOW_SHOWSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showShaded (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSystemMenu ()
*/
HB_FUNC( QMDISUBWINDOW_SHOWSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showSystemMenu (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
