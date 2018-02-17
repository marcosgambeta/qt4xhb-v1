%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QMenuBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isDefaultUp
   METHOD isNativeMenuBar
   METHOD setActiveAction
   METHOD setDefaultUp
   METHOD setNativeMenuBar
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMenuBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QAction * activeAction () const
$method=|QAction *|activeAction|

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction1|const QString &

$prototype=QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
$internalMethod=|QAction *|addAction,addAction2|const QString &,const QObject *,const char *

$prototype=void addAction ( QAction * action )
$internalMethod=|void|addAction,addAction3|QAction *

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addAction1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QMenuBar_addAction2();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenuBar_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAction * addMenu ( QMenu * menu )
$internalMethod=|QAction *|addMenu,addMenu1|QMenu *

$prototype=QMenu * addMenu ( const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu2|const QString &

$prototype=QMenu * addMenu ( const QIcon & icon, const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu3|const QIcon &,const QString &

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenuBar_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenuBar_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAction * addSeparator ()
$method=|QAction *|addSeparator|

$prototype=void clear ()
$method=|void|clear|

$prototype=QAction * insertMenu ( QAction * before, QMenu * menu )
$method=|QAction *|insertMenu|QAction *,QMenu *

$prototype=QAction * insertSeparator ( QAction * before )
$method=|QAction *|insertSeparator|QAction *

$prototype=bool isDefaultUp () const
$method=|bool|isDefaultUp|

$prototype=bool isNativeMenuBar () const
$method=|bool|isNativeMenuBar|

$prototype=void setActiveAction ( QAction * act )
$method=|void|setActiveAction|QAction *

$prototype=void setDefaultUp ( bool )
$method=|void|setDefaultUp|bool

$prototype=void setNativeMenuBar ( bool nativeMenuBar )
$method=|void|setNativeMenuBar|bool

$prototype=virtual int heightForWidth ( int ) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

#pragma ENDDUMP
