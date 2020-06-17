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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QUndoStack>
#include <QtGui/QAction>

$prototype=QUndoGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QUndoStack * activeStack() const

$prototype=void addStack ( QUndoStack * stack )
$method=|void|addStack|QUndoStack *

$prototypeV2=bool canRedo() const

$prototypeV2=bool canUndo() const

$prototype=QAction * createRedoAction ( QObject * parent, const QString & prefix = QString() ) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction ( QObject * parent, const QString & prefix = QString() ) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototypeV2=bool isClean() const

$prototypeV2=QString redoText() const

$prototype=void removeStack ( QUndoStack * stack )
$method=|void|removeStack|QUndoStack *

$prototype=QList<QUndoStack *> stacks () const
$method=|QList<QUndoStack *>|stacks|

$prototypeV2=QString undoText() const

$prototypeV2=void redo()

$prototype=void setActiveStack ( QUndoStack * stack )
$method=|void|setActiveStack|QUndoStack *

$prototypeV2=void undo()

$beginSignals
$signal=|activeStackChanged(QUndoStack*)
$signal=|canRedoChanged(bool)
$signal=|canUndoChanged(bool)
$signal=|cleanChanged(bool)
$signal=|indexChanged(int)
$signal=|redoTextChanged(QString)
$signal=|undoTextChanged(QString)
$endSignals

#pragma ENDDUMP
