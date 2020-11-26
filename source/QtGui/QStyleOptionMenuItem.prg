/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QICON
REQUEST QRECT
#endif

CLASS QStyleOptionMenuItem INHERIT QStyleOption

   METHOD new
   METHOD menuItemType
   METHOD setMenuItemType
   METHOD checkType
   METHOD setCheckType
   METHOD checked
   METHOD setChecked
   METHOD menuHasCheckableItems
   METHOD setMenuHasCheckableItems
   METHOD menuRect
   METHOD setMenuRect
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD maxIconWidth
   METHOD setMaxIconWidth
   METHOD tabWidth
   METHOD setTabWidth
   METHOD font
   METHOD setFont

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionMenuItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionMenuItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionMenuItem()
*/
void QStyleOptionMenuItem_new1()
{
  QStyleOptionMenuItem * obj = new QStyleOptionMenuItem();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QStyleOptionMenuItem( const QStyleOptionMenuItem & other )
*/
void QStyleOptionMenuItem_new2()
{
  QStyleOptionMenuItem * obj = new QStyleOptionMenuItem( *PQSTYLEOPTIONMENUITEM(1) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionMenuItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONMENUITEM(1) )
  {
    QStyleOptionMenuItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
MenuItemType menuItemType
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENUITEMTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->menuItemType );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENUITEMTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->menuItemType= (QStyleOptionMenuItem::MenuItemType) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
CheckType checkType
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_CHECKTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->checkType );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETCHECKTYPE )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->checkType= (QStyleOptionMenuItem::CheckType) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool checked
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_CHECKED )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->checked );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETCHECKED )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->checked= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool menuHasCheckableItems
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENUHASCHECKABLEITEMS )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->menuHasCheckableItems );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENUHASCHECKABLEITEMS )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->menuHasCheckableItems= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect menuRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MENURECT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->menuRect );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMENURECT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->menuRect= *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_TEXT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETTEXT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_ICON )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      Qt4xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETICON )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maxIconWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_MAXICONWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maxIconWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETMAXICONWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->maxIconWidth= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int tabWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_TABWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->tabWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETTABWIDTH )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->tabWidth= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_FONT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font );
      Qt4xHb::createReturnClass( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_SETFONT )
{
  QStyleOptionMenuItem * obj = (QStyleOptionMenuItem *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font= *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
