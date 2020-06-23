%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QUndoGroup>
#include <QtGui/QUndoStack>

$prototype=QUndoView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
$internalConstructor=|new2|QUndoStack *,QWidget *=0

$prototype=QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
$internalConstructor=|new3|QUndoGroup *,QWidget *=0

/*
[1]QUndoView ( QWidget * parent = 0 )
[2]QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
[3]QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=QIcon cleanIcon() const

$prototypeV2=QString emptyLabel() const

$prototypeV2=QUndoGroup * group() const

$prototypeV2=void setCleanIcon( const QIcon & icon )

$prototypeV2=void setEmptyLabel( const QString & label )

$prototypeV2=QUndoStack * stack() const

$prototypeV2=void setGroup( QUndoGroup * group )

$prototypeV2=void setStack( QUndoStack * stack )

#pragma ENDDUMP
