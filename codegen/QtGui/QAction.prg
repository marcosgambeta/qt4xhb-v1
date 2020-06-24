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

#include <QtGui/QMenu>

$prototype=QAction ( QObject * parent )
$internalConstructor=|new1|QObject *

$prototype=QAction ( const QString & text, QObject * parent )
$internalConstructor=|new2|const QString &,QObject *

$prototype=QAction ( const QIcon & icon, const QString & text, QObject * parent )
$internalConstructor=|new3|const QIcon &,const QString &,QObject *

/*
[1]QAction ( QObject * parent )
[2]QAction ( const QString & text, QObject * parent )
[3]QAction ( const QIcon & icon, const QString & text, QObject * parent )
*/

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAction_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QAction_new2();
  }
  else if( ISNUMPAR(3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) )
  {
    QAction_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QActionGroup * actionGroup() const

$prototypeV2=void activate( QAction::ActionEvent event )

$prototypeV2=QList<QGraphicsWidget *> associatedGraphicsWidgets() const

$prototypeV2=QList<QWidget *> associatedWidgets() const

$prototypeV2=bool autoRepeat() const

$prototypeV2=QVariant data() const

$prototypeV2=QFont font() const

$prototypeV2=QIcon icon() const

$prototypeV2=QString iconText() const

$prototypeV2=bool isCheckable() const

$prototypeV2=bool isChecked() const

$prototypeV2=bool isEnabled() const

$prototypeV2=bool isIconVisibleInMenu() const

$prototypeV2=bool isSeparator() const

$prototypeV2=bool isVisible() const

$prototypeV2=QMenu * menu() const

$prototypeV2=QAction::MenuRole menuRole() const

$prototypeV2=QWidget * parentWidget() const

$prototypeV2=QAction::Priority priority() const

$prototypeV2=void setActionGroup( QActionGroup * group )

$prototypeV2=void setAutoRepeat( bool )

$prototypeV2=void setCheckable( bool )

$prototypeV2=void setData( const QVariant & userData )

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=void setIcon( const QIcon & icon )

$prototypeV2=void setIconText( const QString & text )

$prototypeV2=void setIconVisibleInMenu( bool visible )

$prototypeV2=void setMenu( QMenu * menu )

$prototypeV2=void setMenuRole( QAction::MenuRole menuRole )

$prototypeV2=void setPriority( QAction::Priority priority )

$prototypeV2=void setSeparator( bool b )

$prototypeV2=void setShortcut( const QKeySequence & shortcut )

$prototypeV2=void setShortcutContext( Qt::ShortcutContext context )

$prototype=void setShortcuts ( const QList<QKeySequence> & shortcuts )
$internalMethod=|void|setShortcuts,setShortcuts1|const QList<QKeySequence> &

$prototype=void setShortcuts ( QKeySequence::StandardKey key )
$internalMethod=|void|setShortcuts,setShortcuts2|QKeySequence::StandardKey

/*
[1]void setShortcuts ( const QList<QKeySequence> & shortcuts )
[2]void setShortcuts ( QKeySequence::StandardKey key )
*/

HB_FUNC_STATIC( QACTION_SETSHORTCUTS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAction_setShortcuts1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QAction_setShortcuts2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setShortcuts

$prototypeV2=void setSoftKeyRole( QAction::SoftKeyRole softKeyRole )

$prototypeV2=void setStatusTip( const QString & statusTip )

$prototypeV2=void setText( const QString & text )

$prototypeV2=void setToolTip( const QString & tip )

$prototypeV2=void setWhatsThis( const QString & what )

$prototypeV2=QKeySequence shortcut() const

$prototypeV2=Qt::ShortcutContext shortcutContext() const

$prototypeV2=QList<QKeySequence> shortcuts() const

$prototypeV2=bool showStatusText( QWidget * widget = 0 )

$prototypeV2=QAction::SoftKeyRole softKeyRole() const

$prototypeV2=QString statusTip() const

$prototypeV2=QString text() const

$prototypeV2=QString toolTip() const

$prototypeV2=QString whatsThis() const

$prototypeV2=void hover()

$prototypeV2=void setChecked( bool )

$prototypeV2=void setDisabled( bool b )

$prototypeV2=void setEnabled( bool )

$prototypeV2=void setVisible( bool )

$prototypeV2=void toggle()

$prototypeV2=void trigger()

$beginSignals
$signal=|changed()
$signal=|hovered()
$signal=|toggled(bool)
$signal=|triggered(bool)
$endSignals

#pragma ENDDUMP
