$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QDESIGNERFORMWINDOWINTERFACE
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerFormWindowManagerInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actionAdjustSize
   METHOD actionBreakLayout
   METHOD actionCopy
   METHOD actionCut
   METHOD actionDelete
   METHOD actionFormLayout
   METHOD actionGridLayout
   METHOD actionHorizontalLayout
   METHOD actionLower
   METHOD actionPaste
   METHOD actionRaise
   METHOD actionRedo
   METHOD actionSelectAll
   METHOD actionSimplifyLayout
   METHOD actionSplitHorizontal
   METHOD actionSplitVertical
   METHOD actionUndo
   METHOD actionVerticalLayout
   METHOD activeFormWindow
   METHOD core
   METHOD createFormWindow
   METHOD formWindow
   METHOD formWindowCount
   METHOD addFormWindow
   METHOD removeFormWindow
   METHOD setActiveFormWindow

   METHOD onActiveFormWindowChanged
   METHOD onFormWindowAdded
   METHOD onFormWindowRemoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerFormWindowManagerInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAction>
#include <QDesignerFormEditorInterface>

$deleteMethod

/*
virtual QAction * actionAdjustSize () const
*/
$virtualMethod=|QAction *|actionAdjustSize|

/*
virtual QAction * actionBreakLayout () const
*/
$virtualMethod=|QAction *|actionBreakLayout|

/*
virtual QAction * actionCopy () const
*/
$virtualMethod=|QAction *|actionCopy|

/*
virtual QAction * actionCut () const
*/
$virtualMethod=|QAction *|actionCut|

/*
virtual QAction * actionDelete () const
*/
$virtualMethod=|QAction *|actionDelete|

/*
QAction * actionFormLayout () const
*/
$method=|QAction *|actionFormLayout|

/*
virtual QAction * actionGridLayout () const
*/
$virtualMtehod=|QAction *|actionGridLayout|

/*
virtual QAction * actionHorizontalLayout () const
*/
$virtualMethod=|QAction *|actionHorizontalLayout|

/*
virtual QAction * actionLower () const
*/
$virtualMethod=|QAction *|actionLower|

/*
virtual QAction * actionPaste () const
*/
$virtualMethod=|QAction *|actionPaste|

/*
virtual QAction * actionRaise () const
*/
$virtualMethod=|QAction *|actionRaise|

/*
virtual QAction * actionRedo () const
*/
$virtualMethod=|QAction *|actionRedo|

/*
virtual QAction * actionSelectAll () const
*/
$virtualMethod=|QAction *|actionSelectAll|

/*
QAction * actionSimplifyLayout () const
*/
$method=|QAction *|actionSimplifyLayout|

/*
virtual QAction * actionSplitHorizontal () const
*/
$virtualMethod=|QAction *|actionSplitHorizontal|

/*
virtual QAction * actionSplitVertical () const
*/
$virtualMethod=|QAction *|actionSplitVertical|

/*
virtual QAction * actionUndo () const
*/
$virtualMethod=|QAction *|actionUndo|

/*
virtual QAction * actionVerticalLayout () const
*/
$virtualMethod=|QAction *|actionVerticalLayout|

/*
virtual QDesignerFormWindowInterface * activeFormWindow () const
*/
$virtualMethod=|QDesignerFormWindowInterface *|activeFormWindow|

/*
virtual QDesignerFormEditorInterface * core () const
*/
$virtualMethod=|QDesignerFormEditorInterface *|core|

/*
virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$virtualMethod=|QDesignerFormWindowInterface *|createFormWindow|QWidget *=0,Qt::WindowFlags=0

/*
virtual QDesignerFormWindowInterface * formWindow ( int index ) const
*/
$virtualMethod=|QDesignerFormWindowInterface *|formWindow|int

/*
virtual int formWindowCount () const
*/
$virtualMethod=|int|formWindowCount|

/*
virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
$virtualMethod=|void|addFormWindow|QDesignerFormWindowInterface *

/*
virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
$virtualMethod=|void|removeFormWindow|QDesignerFormWindowInterface *

/*
virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
$virtualMethod=|void|setActiveFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
