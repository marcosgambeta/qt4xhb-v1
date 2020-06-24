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

#include <QtGui/QAction>

$prototype=QUndoStack ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void beginMacro( const QString & text )

$prototypeV2=bool canRedo() const

$prototypeV2=bool canUndo() const

$prototypeV2=int cleanIndex() const

$prototypeV2=void clear()

$prototypeV2=const QUndoCommand * command( int index ) const

$prototypeV2=int count() const

$prototypeV2=QAction * createRedoAction( QObject * parent, const QString & prefix = QString() ) const

$prototypeV2=QAction * createUndoAction( QObject * parent, const QString & prefix = QString() ) const

$prototypeV2=void endMacro()

$prototypeV2=int index() const

$prototypeV2=bool isActive() const

$prototypeV2=bool isClean() const

$prototypeV2=void push( QUndoCommand * cmd )

$prototypeV2=QString redoText() const

$prototypeV2=void setUndoLimit( int limit )

$prototypeV2=QString text( int idx ) const

$prototypeV2=int undoLimit() const

$prototypeV2=QString undoText() const

$prototypeV2=void redo()

$prototypeV2=void setActive( bool active = true )

$prototypeV2=void setClean()

$prototypeV2=void setIndex( int idx )

$prototypeV2=void undo()

$beginSignals
$signal=|canRedoChanged(bool)
$signal=|canUndoChanged(bool)
$signal=|cleanChanged(bool)
$signal=|indexChanged(int)
$signal=|redoTextChanged(QString)
$signal=|undoTextChanged(QString)
$endSignals

#pragma ENDDUMP
