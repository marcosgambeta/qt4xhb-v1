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
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
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

#include <QMenuBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMenuBar ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QAction * activeAction () const
*/
$method=|QAction *|activeAction|

/*
QAction * addAction ( const QString & text )
*/
$method=|QAction *|addAction,addAction1|const QString &

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
$method=|QAction *|addAction,addAction2|const QString &,const QObject *,const char *

/*
void addAction ( QAction * action )
*/
$method=|void|addAction,addAction3|QAction *

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION2 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION3 );
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

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU3 );
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
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
$method=|QAction *|insertMenu|QAction *,QMenu *

/*
QAction * insertSeparator ( QAction * before )
*/
$method=|QAction *|insertSeparator|QAction *

/*
bool isDefaultUp () const
*/
$method=|bool|isDefaultUp|

/*
bool isNativeMenuBar () const
*/
$method=|bool|isNativeMenuBar|

/*
void setActiveAction ( QAction * act )
*/
$method=|void|setActiveAction|QAction *

/*
void setDefaultUp ( bool )
*/
$method=|void|setDefaultUp|bool

/*
void setNativeMenuBar ( bool nativeMenuBar )
*/
$method=|void|setNativeMenuBar|bool

/*
virtual int heightForWidth ( int ) const
*/
$virtualMethod=|int|heightForWidth|int

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

#pragma ENDDUMP
