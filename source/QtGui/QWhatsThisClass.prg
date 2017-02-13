/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTION

CLASS QWhatsThis

   DATA pointer
   DATA class_id INIT Class_Id_QWhatsThis
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QWhatsThis
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QWhatsThis
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QWhatsThis
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QWhatsThis
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QWhatsThis
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QWhatsThis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWhatsThis>

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


HB_FUNC( QWHATSTHIS_DELETE )
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
HB_FUNC( QWHATSTHIS_CREATEACTION )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAction * ptr = QWhatsThis::createAction ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );}


/*
void enterWhatsThisMode ()
*/
HB_FUNC( QWHATSTHIS_ENTERWHATSTHISMODE )
{
  QWhatsThis::enterWhatsThisMode (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideText ()
*/
HB_FUNC( QWHATSTHIS_HIDETEXT )
{
  QWhatsThis::hideText (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool inWhatsThisMode ()
*/
HB_FUNC( QWHATSTHIS_INWHATSTHISMODE )
{
  bool b = QWhatsThis::inWhatsThisMode (  );
  hb_retl( b );
}


/*
void leaveWhatsThisMode ()
*/
HB_FUNC( QWHATSTHIS_LEAVEWHATSTHISMODE )
{
  QWhatsThis::leaveWhatsThisMode (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showText ( const QPoint & pos, const QString & text, QWidget * w = 0 )
*/
HB_FUNC( QWHATSTHIS_SHOWTEXT )
{
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par2 = hb_parc(2);
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWhatsThis::showText ( *par1, par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
