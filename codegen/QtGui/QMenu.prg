%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMenu ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QMenu ( const QString & title, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QMenu ( QWidget * parent = 0 )
//[2]QMenu ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QMenu_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QMenu_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QAction * actionAt ( const QPoint & pt ) const
$method=|QAction *|actionAt|const QPoint &

$prototype=QRect actionGeometry ( QAction * act ) const
$method=|QRect|actionGeometry|QAction *

$prototype=QAction * activeAction () const
$method=|QAction *|activeAction|

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction1|const QString &

$prototype=QAction * addAction ( const QIcon & icon, const QString & text )
$internalMethod=|QAction *|addAction,addAction2|const QIcon &,const QString &

$prototype=QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
$internalMethod=|QAction *|addAction,addAction3a|const QString &,const QObject *,const char *
$internalMethod=|QAction *|addAction,addAction3b|const QString &,const QObject *,const char *,const QKeySequence &

$prototype=QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
$internalMethod=|QAction *|addAction,addAction4a|const QIcon &,const QString &,const QObject *,const char *
$internalMethod=|QAction *|addAction,addAction4b|const QIcon &,const QString &,const QObject *,const char *,const QKeySequence &

$prototype=void addAction ( QAction * action )
$internalMethod=|void|addAction,addAction5|QAction *

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(2)) && ISCHAR(2) )
  {
    QMenu_addAction2();
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && ISNIL(4) )
  {
    QMenu_addAction3a();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && ISQKEYSEQUENCE(4) )
  {
    QMenu_addAction3b();
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && ISNIL(5) )
  {
    QMenu_addAction4a();
  }
  else if( ISNUMPAR(5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && ISQKEYSEQUENCE(5) )
  {
    QMenu_addAction4b();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenu_addAction5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addAction

$prototype=QAction * addMenu ( QMenu * menu )
$internalMethod=|QAction *|addMenu,addMenu1|QMenu *

$prototype=QMenu * addMenu ( const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu2|const QString &

$prototype=QMenu * addMenu ( const QIcon & icon, const QString & title )
$internalMethod=|QMenu *|addMenu,addMenu3|const QIcon &,const QString &

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenu_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addMenu

$prototype=QAction * addSeparator ()
$method=|QAction *|addSeparator|

$prototype=void clear ()
$method=|void|clear|

$prototype=QAction * defaultAction () const
$method=|QAction *|defaultAction|

$prototype=void hideTearOffMenu ()
$method=|void|hideTearOffMenu|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=QAction * insertMenu ( QAction * before, QMenu * menu )
$method=|QAction *|insertMenu|QAction *,QMenu *

$prototype=QAction * insertSeparator ( QAction * before )
$method=|QAction *|insertSeparator|QAction *

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isTearOffEnabled () const
$method=|bool|isTearOffEnabled|

$prototype=bool isTearOffMenuVisible () const
$method=|bool|isTearOffMenuVisible|

$prototype=QAction * menuAction () const
$method=|QAction *|menuAction|

$prototype=void popup ( const QPoint & p, QAction * atAction = 0 )
$method=|void|popup|const QPoint &,QAction *=0

$prototype=bool separatorsCollapsible () const
$method=|bool|separatorsCollapsible|

$prototype=void setActiveAction ( QAction * act )
$method=|void|setActiveAction|QAction *

$prototype=void setDefaultAction ( QAction * act )
$method=|void|setDefaultAction|QAction *

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setSeparatorsCollapsible ( bool collapse )
$method=|void|setSeparatorsCollapsible|bool

$prototype=void setTearOffEnabled ( bool )
$method=|void|setTearOffEnabled|bool

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototype=QString title () const
$method=|QString|title|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=QAction * exec ()
$method=|QAction *|exec,exec1|

$prototype=QAction * exec ( const QPoint & p, QAction * action = 0 )
$method=|QAction *|exec,exec2|const QPoint &,QAction *=0

$prototype=QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at, QWidget * parent )
HB_FUNC_STATIC( QMENU_EXEC3 )
{
  QList<QAction *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), PQACTION(3), PQWIDGET(4) );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}
$addMethod=exec3

$prototype=QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at = 0 )
HB_FUNC_STATIC( QMENU_EXEC4 )
{
  QList<QAction *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QAction * par3 = ISNIL(3)? 0 : (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), par3 );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}
$addMethod=exec4

//[1]QAction * exec ()
//[2]QAction * exec ( const QPoint & p, QAction * action = 0 )
//[3]QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at, QWidget * parent )
//[4]QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at = 0 )

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMENU_EXEC1 );
  }
  else if( ISBETWEEN(1,2) && ISQPOINT(1) && (ISQACTION(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMENU_EXEC2 );
  }
  else if( ISNUMPAR(4) && ISARRAY(1) && ISQPOINT(2) && ISQACTION(3) && ISQWIDGET(4) )
  {
    HB_FUNC_EXEC( QMENU_EXEC1 );
  }
  else if( ISBETWEEN(2,3) && ISARRAY(1) && ISQPOINT(2) && (ISQACTION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMENU_EXEC2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$beginSignals
$signal=|aboutToHide()
$signal=|aboutToShow()
$signal=|hovered(QAction*)
$signal=|triggered(QAction*)
$endSignals

#pragma ENDDUMP
