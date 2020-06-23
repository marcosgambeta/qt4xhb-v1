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

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtGui/QAbstractButton>

$prototype=QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=int addPage( QWizardPage * page )

$prototypeV2=QAbstractButton * button( QWizard::WizardButton which ) const

$prototypeV2=QString buttonText( QWizard::WizardButton which ) const

$prototypeV2=int currentId() const

$prototypeV2=QWizardPage * currentPage() const

$prototypeV2=QVariant field( const QString & name ) const

$prototypeV2=bool hasVisitedPage( int id ) const

$prototypeV2=virtual int nextId() const

$prototypeV2=QWizard::WizardOptions options() const

$prototypeV2=QWizardPage * page( int id ) const

$prototypeV2=QList<int> pageIds() const

$prototypeV2=QPixmap pixmap( QWizard::WizardPixmap which ) const

$prototypeV2=void removePage( int id )

$prototypeV2=void setButton( QWizard::WizardButton which, QAbstractButton * button )

$prototypeV2=void setButtonLayout( const QList<WizardButton> & layout )

$prototypeV2=void setButtonText( QWizard::WizardButton which, const QString & text )

$prototypeV2=void setDefaultProperty( const char * className, const char * property, const char * changedSignal )

$prototypeV2=void setField( const QString & name, const QVariant & value )

$prototype=void setOption ( WizardOption option, bool on = true )
$method=|void|setOption|QWizard::WizardOption,bool=true

$prototypeV2=void setOptions( QWizard::WizardOptions options )

$prototypeV2=void setPage( int id, QWizardPage * page )

$prototypeV2=void setPixmap( QWizard::WizardPixmap which, const QPixmap & pixmap )

$prototypeV2=void setSideWidget( QWidget * widget )

$prototypeV2=void setStartId( int id )

$prototypeV2=void setSubTitleFormat( Qt::TextFormat format )

$prototypeV2=void setTitleFormat( Qt::TextFormat format )

$prototypeV2=void setWizardStyle( QWizard::WizardStyle style )

$prototypeV2=QWidget * sideWidget() const

$prototypeV2=int startId() const

$prototypeV2=Qt::TextFormat subTitleFormat() const

$prototypeV2=bool testOption( QWizard::WizardOption option ) const

$prototypeV2=Qt::TextFormat titleFormat() const

$prototypeV2=virtual bool validateCurrentPage()

$prototypeV2=QList<int> visitedPages() const

$prototypeV2=QWizard::WizardStyle wizardStyle() const

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void back()

$prototypeV2=void next()

$prototypeV2=void restart()

$beginSignals
$signal=|currentIdChanged(int)
$signal=|customButtonClicked(int)
$signal=|helpRequested()
$signal=|pageAdded(int)
$signal=|pageRemoved(int)
$endSignals

#pragma ENDDUMP
