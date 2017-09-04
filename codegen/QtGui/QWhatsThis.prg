$header

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

$extraMethods

#pragma ENDDUMP
