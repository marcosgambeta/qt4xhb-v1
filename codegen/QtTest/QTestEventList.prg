%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTestEventList ()
$internalConstructor=|new1|

$prototype=QTestEventList ( const QTestEventList & other )
$internalConstructor=|new2|const QTestEventList &

//[1]QTestEventList ()
//[2]QTestEventList ( const QTestEventList & other )

HB_FUNC_STATIC( QTESTEVENTLIST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTestEventList_new1();
  }
  else if( ISNUMPAR(1) && ISQTESTEVENTLIST(1) )
  {
    QTestEventList_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addDelay ( int msecs )
$method=|void|addDelay|int

$prototype=void addKeyClick ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
$method=|void|addKeyClick,addKeyClick1|Qt::Key,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

$prototype=void addKeyClick ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
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

$prototype=void addKeyClicks ( const QString & keys, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
$method=|void|addKeyClicks|const QString &,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

$prototype=void addKeyPress ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
$method=|void|addKeyPress,addKeyPress1|Qt::Key,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

$prototype=void addKeyPress ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
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

$prototype=void addKeyRelease ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
$method=|void|addKeyRelease,addKeyRelease1|Qt::Key,Qt::KeyboardModifiers=Qt::NoModifier,int=-1

$prototype=void addKeyRelease ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
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

$prototype=void addMouseClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
$method=|void|addMouseClick|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

$prototype=void addMouseDClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
$method=|void|addMouseDClick|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

$prototype=void addMouseMove ( QPoint pos = QPoint(), int delay = -1 )
$method=|void|addMouseMove|QPoint=QPoint(),int=-1

$prototype=void addMousePress ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
$method=|void|addMousePress|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

$prototype=void addMouseRelease ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
$method=|void|addMouseRelease|Qt::MouseButton,Qt::KeyboardModifiers=0,QPoint=QPoint(),int=-1

$prototype=void clear ()
$method=|void|clear|

$prototype=void simulate ( QWidget * w )
$method=|void|simulate|QWidget *

$extraMethods

#pragma ENDDUMP
