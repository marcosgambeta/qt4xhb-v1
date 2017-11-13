$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QUNDOGROUP
REQUEST QUNDOSTACK
#endif

CLASS QUndoView INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD cleanIcon
   METHOD emptyLabel
   METHOD group
   METHOD setCleanIcon
   METHOD setEmptyLabel
   METHOD stack
   METHOD setGroup
   METHOD setStack

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QUndoView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUndoView ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
*/
$internalConstructor=|new2|QUndoStack *,QWidget *=0

/*
QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
*/
$internalConstructor=|new3|QUndoGroup *,QWidget *=0

//[1]QUndoView ( QWidget * parent = 0 )
//[2]QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
//[3]QUndoView ( QUndoGroup * group, QWidget * parent = 0 )

HB_FUNC_STATIC( QUNDOVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QUndoView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOSTACK(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QUndoView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOGROUP(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QUndoView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QIcon cleanIcon () const
*/
$method=|QIcon|cleanIcon|

/*
QString emptyLabel () const
*/
$method=|QString|emptyLabel|

/*
QUndoGroup * group () const
*/
$method=|QUndoGroup *|group|

/*
void setCleanIcon ( const QIcon & icon )
*/
$method=|void|setCleanIcon|const QIcon &

/*
void setEmptyLabel ( const QString & label )
*/
$method=|void|setEmptyLabel|const QString &

/*
QUndoStack * stack () const
*/
$method=|QUndoStack *|stack|

/*
void setGroup ( QUndoGroup * group )
*/
$method=|void|setGroup|QUndoGroup *

/*
void setStack ( QUndoStack * stack )
*/
$method=|void|setStack|QUndoStack *

#pragma ENDDUMP
