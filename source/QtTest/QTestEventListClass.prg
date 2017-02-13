/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTestEventList

   DATA pointer
   DATA class_id INIT Class_Id_QTestEventList
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addDelay
   METHOD addKeyClick1
   METHOD addKeyClick2
   METHOD addKeyClick
   METHOD addKeyClicks
   METHOD addKeyPress1
   METHOD addKeyPress2
   METHOD addKeyPress
   METHOD addKeyRelease1
   METHOD addKeyRelease2
   METHOD addKeyRelease
   METHOD addMouseClick
   METHOD addMouseDClick
   METHOD addMouseMove
   METHOD addMousePress
   METHOD addMouseRelease
   METHOD clear
   METHOD simulate
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTestEventList
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTestEventList
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTestEventList
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTestEventList
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTestEventList
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTestEventList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTestEventList>

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
QTestEventList ()
*/
HB_FUNC_STATIC( QTESTEVENTLIST_NEW1 )
{
  QTestEventList * o = NULL;
  o = new QTestEventList (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTestEventList *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTestEventList ( const QTestEventList & other )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_NEW2 )
{
  QTestEventList * o = NULL;
  QTestEventList * par1 = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTestEventList ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTestEventList *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTestEventList ()
//[2]QTestEventList ( const QTestEventList & other )

HB_FUNC_STATIC( QTESTEVENTLIST_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTESTEVENTLIST(1) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTESTEVENTLIST_DELETE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addDelay ( int msecs )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDDELAY )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->addDelay ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addKeyClick ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICK1 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyClick (  (Qt::Key) par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addKeyClick ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICK2 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyClick ( par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addKeyClick ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
//[2]void addKeyClick ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )

HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICK )
{
  if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYCLICK1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYCLICK2 );
  }
}

/*
void addKeyClicks ( const QString & keys, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICKS )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyClicks ( par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addKeyPress ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYPRESS1 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyPress (  (Qt::Key) par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addKeyPress ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYPRESS2 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyPress ( par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addKeyPress ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
//[2]void addKeyPress ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )

HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYPRESS )
{
  if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYPRESS1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYPRESS2 );
  }
}

/*
void addKeyRelease ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYRELEASE1 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyRelease (  (Qt::Key) par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addKeyRelease ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYRELEASE2 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
    int par3 = ISNIL(3)? -1 : hb_parni(3);
    obj->addKeyRelease ( par1,  (Qt::KeyboardModifiers) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addKeyRelease ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
//[2]void addKeyRelease ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )

HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYRELEASE )
{
  if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYRELEASE1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYRELEASE2 );
  }
}

/*
void addMouseClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSECLICK )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? -1 : hb_parni(4);
    obj->addMouseClick (  (Qt::MouseButton) par1,  (Qt::KeyboardModifiers) par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMouseDClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEDCLICK )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? -1 : hb_parni(4);
    obj->addMouseDClick (  (Qt::MouseButton) par1,  (Qt::KeyboardModifiers) par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMouseMove ( QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEMOVE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint par1 = ISNIL(1)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? -1 : hb_parni(2);
    obj->addMouseMove ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMousePress ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEPRESS )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? -1 : hb_parni(4);
    obj->addMousePress (  (Qt::MouseButton) par1,  (Qt::KeyboardModifiers) par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMouseRelease ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSERELEASE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? -1 : hb_parni(4);
    obj->addMouseRelease (  (Qt::MouseButton) par1,  (Qt::KeyboardModifiers) par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QTESTEVENTLIST_CLEAR )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void simulate ( QWidget * w )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_SIMULATE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->simulate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
