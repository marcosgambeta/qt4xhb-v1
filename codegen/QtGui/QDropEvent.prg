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

$prototype=void acceptProposedAction ()
$method=|void|acceptProposedAction|

$prototype=Qt::DropAction dropAction () const
$method=|Qt::DropAction|dropAction|

$prototype=Qt::KeyboardModifiers keyboardModifiers () const
$method=|Qt::KeyboardModifiers|keyboardModifiers|

$prototype=const QMimeData * mimeData () const
$method=|const QMimeData *|mimeData|

$prototype=Qt::MouseButtons mouseButtons () const
$method=|Qt::MouseButtons|mouseButtons|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=Qt::DropActions possibleActions () const
$method=|Qt::DropActions|possibleActions|

$prototype=Qt::DropAction proposedAction () const
$method=|Qt::DropAction|proposedAction|

$prototype=void setDropAction ( Qt::DropAction action )
$method=|void|setDropAction|Qt::DropAction

$prototype=QWidget * source () const
$method=|QWidget *|source|

$prototype=virtual QByteArray encodedData ( const char * format ) const
$virtualMethod=|QByteArray|encodedData|const char *

$prototype=virtual const char * format ( int n = 0 ) const
$virtualMethod=|const char *|format|int=0

$prototype=virtual bool provides ( const char * mimeType ) const
$virtualMethod=|bool|provides|const char *

#pragma ENDDUMP
