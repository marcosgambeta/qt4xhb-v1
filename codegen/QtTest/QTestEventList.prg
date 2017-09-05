$header

#include "hbclass.ch"


CLASS QTestEventList

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QTestEventList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTestEventList ()
*/
HB_FUNC_STATIC( QTESTEVENTLIST_NEW1 )
{
  QTestEventList * o = new QTestEventList ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTestEventList ( const QTestEventList & other )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_NEW2 )
{
  QTestEventList * o = new QTestEventList ( *PQTESTEVENTLIST(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
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

$deleteMethod

/*
void addDelay ( int msecs )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDDELAY )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addDelay ( PINT(1) );
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
    obj->addKeyClick ( (Qt::Key) hb_parni(1), ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
    obj->addKeyClick ( par1, ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
    obj->addKeyClicks ( PQSTRING(1), ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
    obj->addKeyPress ( (Qt::Key) hb_parni(1), ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
    obj->addKeyPress ( par1, ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
    obj->addKeyRelease ( (Qt::Key) hb_parni(1), ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
    obj->addKeyRelease ( par1, ISNIL(2)? Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
  int par2 = ISNIL(2)? 0 :  hb_parni(2);
  if( obj )
  {
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addMouseClick ( (Qt::MouseButton) hb_parni(1), (Qt::KeyboardModifiers) par2, par3, OPINT(4,-1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMouseDClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEDCLICK )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? 0 :  hb_parni(2);
  if( obj )
  {
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addMouseDClick ( (Qt::MouseButton) hb_parni(1), (Qt::KeyboardModifiers) par2, par3, OPINT(4,-1) );
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
    obj->addMouseMove ( par1, OPINT(2,-1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMousePress ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEPRESS )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? 0 :  hb_parni(2);
  if( obj )
  {
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addMousePress ( (Qt::MouseButton) hb_parni(1), (Qt::KeyboardModifiers) par2, par3, OPINT(4,-1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMouseRelease ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSERELEASE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? 0 :  hb_parni(2);
  if( obj )
  {
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addMouseRelease ( (Qt::MouseButton) hb_parni(1), (Qt::KeyboardModifiers) par2, par3, OPINT(4,-1) );
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
    obj->clear ();
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
    obj->simulate ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
