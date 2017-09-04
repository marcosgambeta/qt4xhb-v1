$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QToolButton INHERIT QAbstractButton

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD arrowType
   METHOD autoRaise
   METHOD defaultAction
   METHOD menu
   METHOD popupMode
   METHOD setArrowType
   METHOD setAutoRaise
   METHOD setMenu
   METHOD setPopupMode
   METHOD toolButtonStyle
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setDefaultAction
   METHOD setToolButtonStyle
   METHOD showMenu

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QToolButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QToolButton ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBUTTON_NEW )
{
  QToolButton * o = new QToolButton ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTOOLBUTTON_DELETE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::ArrowType arrowType () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_ARROWTYPE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( (int) obj->arrowType () );
  }
}

/*
bool autoRaise () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_AUTORAISE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->autoRaise () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_DEFAULTACTION )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAction * ptr = obj->defaultAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_MENU )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QMenu * ptr = obj->menu ();
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
ToolButtonPopupMode popupMode () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_POPUPMODE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( (int) obj->popupMode () );
  }
}

/*
void setArrowType ( Qt::ArrowType type )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETARROWTYPE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setArrowType ( (Qt::ArrowType) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRaise ( bool enable )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETAUTORAISE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoRaise ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETMENU )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISQMENU(1) )
    {
      obj->setMenu ( PQMENU(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPopupMode ( ToolButtonPopupMode mode )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETPOPUPMODE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setPopupMode ( (QToolButton::ToolButtonPopupMode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_TOOLBUTTONSTYLE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( (int) obj->toolButtonStyle () );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_MINIMUMSIZEHINT )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_SIZEHINT )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setDefaultAction ( QAction * action )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETDEFAULTACTION )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->setDefaultAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolButtonStyle ( Qt::ToolButtonStyle style )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETTOOLBUTTONSTYLE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setToolButtonStyle ( (Qt::ToolButtonStyle) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMenu ()
*/
HB_FUNC_STATIC( QTOOLBUTTON_SHOWMENU )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showMenu ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
