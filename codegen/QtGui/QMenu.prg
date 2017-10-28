$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QRECT
REQUEST QMENU
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction4
   METHOD addAction5
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD exec1
   METHOD exec2
   METHOD hideTearOffMenu
   METHOD icon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setActiveAction
   METHOD setDefaultAction
   METHOD setIcon
   METHOD setSeparatorsCollapsible
   METHOD setTearOffEnabled
   METHOD setTitle
   METHOD title
   METHOD sizeHint
   METHOD exec3
   METHOD exec4
   METHOD exec

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMenu>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMenu ( QWidget * parent = 0 )
*/
$constructor=|new1|QWidget *=0

/*
QMenu ( const QString & title, QWidget * parent = 0 )
*/
$constructor=|new2|const QString &,QWidget *=0

//[1]QMenu ( QWidget * parent = 0 )
//[2]QMenu ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMENU_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMENU_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAction * actionAt ( const QPoint & pt ) const
*/
$method=|QAction *|actionAt|const QPoint &

/*
QRect actionGeometry ( QAction * act ) const
*/
$method=|QRect|actionGeometry|QAction *

/*
QAction * activeAction () const
*/
$method=|QAction *|activeAction|

/*
QAction * addAction ( const QString & text )
*/
$method=|QAction *|addAction,addAction1|const QString &

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
$method=|QAction *|addAction,addAction2|const QIcon &,const QString &

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
$method=|QAction *|addAction,addAction3|const QString &,const QObject *,const char *,const QKeySequence &=0

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
$method=|QAction *|addAction,addAction4|const QIcon &,const QString &,const QObject *,const char *,const QKeySequence &=0

/*
void addAction ( QAction * action )
*/
$method=|void|addAction,addAction5|QAction *

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION1 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(2)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION2 );
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQKEYSEQUENCE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION3 );
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && (ISQKEYSEQUENCE(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION4 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
$method=|QAction *|addMenu,addMenu1|QMenu *

/*
QMenu * addMenu ( const QString & title )
*/
$method=|QMenu *|addMenu,addMenu2|const QString &

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
$method=|QMenu *|addMenu,addMenu3|const QIcon &,const QString &

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
$method=|QAction *|addSeparator|

/*
void clear ()
*/
$method=|void|clear|

/*
QAction * defaultAction () const
*/
$method=|QAction *|defaultAction|

/*
QAction * exec ()
*/
$method=|QAction *|exec,exec1|

/*
QAction * exec ( const QPoint & p, QAction * action = 0 )
*/
$method=|QAction *|exec,exec2|const QPoint &,QAction *=0

/*
void hideTearOffMenu ()
*/
$method=|void|hideTearOffMenu|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
$method=|QAction *|insertMenu|QAction *,QMenu *

/*
QAction * insertSeparator ( QAction * before )
*/
$method=|QAction *|insertSeparator|QAction *

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isTearOffEnabled () const
*/
$method=|bool|isTearOffEnabled|

/*
bool isTearOffMenuVisible () const
*/
$method=|bool|isTearOffMenuVisible|

/*
QAction * menuAction () const
*/
$method=|QAction *|menuAction|

/*
void popup ( const QPoint & p, QAction * atAction = 0 )
*/
$method=|void|popup|const QPoint &,QAction *=0

/*
bool separatorsCollapsible () const
*/
$method=|bool|separatorsCollapsible|

/*
void setActiveAction ( QAction * act )
*/
$method=|void|setActiveAction|QAction *

/*
void setDefaultAction ( QAction * act )
*/
$method=|void|setDefaultAction|QAction *

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setSeparatorsCollapsible ( bool collapse )
*/
$method=|void|setSeparatorsCollapsible|bool

/*
void setTearOffEnabled ( bool )
*/
$method=|void|setTearOffEnabled|bool

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
QString title () const
*/
$method=|QString|title|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at, QWidget * parent )
*/
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

/*
QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at = 0 )
*/
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

#pragma ENDDUMP
