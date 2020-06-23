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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWizardPage ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototypeV2=QString buttonText( QWizard::WizardButton which ) const

$prototypeV2=virtual void cleanupPage()

$prototypeV2=virtual void initializePage()

$prototypeV2=bool isCommitPage() const

$prototypeV2=virtual bool isComplete() const

$prototypeV2=bool isFinalPage() const

$prototypeV2=virtual int nextId() const

$prototypeV2=QPixmap pixmap( QWizard::WizardPixmap which ) const

$prototypeV2=void setButtonText( QWizard::WizardButton which, const QString & text )

$prototypeV2=void setCommitPage( bool commitPage )

$prototypeV2=void setFinalPage( bool finalPage )

$prototypeV2=void setPixmap( QWizard::WizardPixmap which, const QPixmap & pixmap )

$prototypeV2=void setSubTitle( const QString & subTitle )

$prototypeV2=void setTitle( const QString & title )

$prototypeV2=QString subTitle() const

$prototypeV2=QString title() const

$prototypeV2=virtual bool validatePage()

$beginSignals
$signal=|completeChanged()
$endSignals

#pragma ENDDUMP
