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

$beginClassFrom=QEvent,QMimeSource

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDropEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = Drop )
$constructor=|new|const QPoint &,Qt::DropActions,const QMimeData *,Qt::MouseButtons,Qt::KeyboardModifiers,QEvent::Type=QEvent::Drop

$deleteMethod

$prototypeV2=void acceptProposedAction()

$prototypeV2=Qt::DropAction dropAction() const

$prototypeV2=Qt::KeyboardModifiers keyboardModifiers() const

$prototypeV2=const QMimeData * mimeData() const

$prototypeV2=Qt::MouseButtons mouseButtons() const

$prototypeV2=const QPoint & pos() const

$prototypeV2=Qt::DropActions possibleActions() const

$prototypeV2=Qt::DropAction proposedAction() const

$prototypeV2=void setDropAction( Qt::DropAction action )

$prototypeV2=QWidget * source() const

$prototypeV2=virtual QByteArray encodedData( const char * format ) const

$prototype=virtual const char * format ( int n = 0 ) const
$virtualMethod=|const char *|format|int=0

$prototypeV2=virtual bool provides( const char * mimeType ) const

#pragma ENDDUMP
