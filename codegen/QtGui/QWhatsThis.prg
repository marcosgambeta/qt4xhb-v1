/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QWhatsThis

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createAction
   METHOD enterWhatsThisMode
   METHOD hideText
   METHOD inWhatsThisMode
   METHOD leaveWhatsThisMode
   METHOD showText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWhatsThis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWhatsThis>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QWHATSTHIS_DELETE )
{
  QWhatsThis * obj = (QWhatsThis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAction * createAction ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QWHATSTHIS_CREATEACTION )
{
  QAction * ptr = QWhatsThis::createAction ( OPQOBJECT(1,0) );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}

/*
void enterWhatsThisMode ()
*/
HB_FUNC_STATIC( QWHATSTHIS_ENTERWHATSTHISMODE )
{
  QWhatsThis::enterWhatsThisMode ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void hideText ()
*/
HB_FUNC_STATIC( QWHATSTHIS_HIDETEXT )
{
  QWhatsThis::hideText ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool inWhatsThisMode ()
*/
HB_FUNC_STATIC( QWHATSTHIS_INWHATSTHISMODE )
{
  RBOOL( QWhatsThis::inWhatsThisMode () );
}

/*
void leaveWhatsThisMode ()
*/
HB_FUNC_STATIC( QWHATSTHIS_LEAVEWHATSTHISMODE )
{
  QWhatsThis::leaveWhatsThisMode ();
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showText ( const QPoint & pos, const QString & text, QWidget * w = 0 )
*/
HB_FUNC_STATIC( QWHATSTHIS_SHOWTEXT )
{
  QWhatsThis::showText ( *PQPOINT(1), PQSTRING(2), OPQWIDGET(3,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWHATSTHIS_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWHATSTHIS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWHATSTHIS_NEWFROM );
}

HB_FUNC_STATIC( QWHATSTHIS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWHATSTHIS_NEWFROM );
}

HB_FUNC_STATIC( QWHATSTHIS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWHATSTHIS_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP