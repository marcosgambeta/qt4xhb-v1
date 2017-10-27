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
$method=|void|addDelay|int

/*
void addKeyClick ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyClick,addKeyClick1|Qt::Key,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

/*
void addKeyClick ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyClick,addKeyClick2|char,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addKeyClicks ( const QString & keys, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyClicks|const QString &,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

/*
void addKeyPress ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyPress,addKeyPress1|Qt::Key,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

/*
void addKeyPress ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyPress,addKeyPress2|char,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addKeyRelease ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyRelease,addKeyRelease1|Qt::Key,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

/*
void addKeyRelease ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
$method=|void|addKeyRelease,addKeyRelease2|char,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addMouseClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
$method=|void|addMouseClick|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

/*
void addMouseDClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
$method=|void|addMouseDClick|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

/*
void addMouseMove ( QPoint pos = QPoint(), int delay = -1 )
*/
$method=|void|addMouseMove|QPoint=QPoint(),int=-1

/*
void addMousePress ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
$method=|void|addMousePress|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

/*
void addMouseRelease ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
$method=|void|addMouseRelease|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

/*
void clear ()
*/
$method=|void|clear|

/*
void simulate ( QWidget * w )
*/
$method=|void|simulate|QWidget *

$extraMethods

#pragma ENDDUMP
