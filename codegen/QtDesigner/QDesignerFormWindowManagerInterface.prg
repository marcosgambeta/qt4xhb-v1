%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

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
#include <QtDesigner/QDesignerFormEditorInterface>

$deleteMethod

$prototypeV2=virtual QAction * actionAdjustSize() const

$prototypeV2=virtual QAction * actionBreakLayout() const

$prototypeV2=virtual QAction * actionCopy() const

$prototypeV2=virtual QAction * actionCut() const

$prototypeV2=virtual QAction * actionDelete() const

$prototypeV2=QAction * actionFormLayout() const

$prototypeV2=virtual QAction * actionGridLayout() const

$prototypeV2=virtual QAction * actionHorizontalLayout() const

$prototypeV2=virtual QAction * actionLower() const

$prototypeV2=virtual QAction * actionPaste() const

$prototypeV2=virtual QAction * actionRaise() const

$prototypeV2=virtual QAction * actionRedo() const

$prototypeV2=virtual QAction * actionSelectAll() const

$prototypeV2=QAction * actionSimplifyLayout() const

$prototypeV2=virtual QAction * actionSplitHorizontal() const

$prototypeV2=virtual QAction * actionSplitVertical() const

$prototypeV2=virtual QAction * actionUndo() const

$prototypeV2=virtual QAction * actionVerticalLayout() const

$prototypeV2=virtual QDesignerFormWindowInterface * activeFormWindow() const

$prototypeV2=virtual QDesignerFormEditorInterface * core() const

$prototypeV2=virtual QDesignerFormWindowInterface * createFormWindow( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

$prototypeV2=virtual QDesignerFormWindowInterface * formWindow( int index ) const

$prototypeV2=virtual int formWindowCount() const

$prototypeV2=virtual void addFormWindow( QDesignerFormWindowInterface * formWindow )

$prototypeV2=virtual void removeFormWindow( QDesignerFormWindowInterface * formWindow )

$prototypeV2=virtual void setActiveFormWindow( QDesignerFormWindowInterface * formWindow )

$beginSignals
$signal=|activeFormWindowChanged(QDesignerFormWindowInterface*)
$signal=|formWindowAdded(QDesignerFormWindowInterface*)
$signal=|formWindowRemoved(QDesignerFormWindowInterface*)
$endSignals

#pragma ENDDUMP
