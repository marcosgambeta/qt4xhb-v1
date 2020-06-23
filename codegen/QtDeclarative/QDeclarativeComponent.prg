%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

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

#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeComponent(QObject *parent = 0);
$internalConstructor=|new1|QObject *=0

$prototype=QDeclarativeComponent(QDeclarativeEngine *, QObject *parent=0)
$internalConstructor=|new2|QDeclarativeEngine *,QObject *=0

$prototype=QDeclarativeComponent(QDeclarativeEngine *, const QString &fileName, QObject *parent = 0)
$internalConstructor=|new3|QDeclarativeEngine *,const QString &,QObject *=0

$prototype=QDeclarativeComponent(QDeclarativeEngine *, const QUrl &url, QObject *parent = 0)
$internalConstructor=|new4|QDeclarativeEngine *,const QUrl &,QObject *=0

/*
[1]QDeclarativeComponent(QObject *parent = 0);
[2]QDeclarativeComponent(QDeclarativeEngine *, QObject *parent=0);
[3]QDeclarativeComponent(QDeclarativeEngine *, const QString &fileName, QObject *parent = 0);
[4]QDeclarativeComponent(QDeclarativeEngine *, const QUrl &url, QObject *parent = 0);
*/

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QDeclarativeComponent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QDeclarativeComponent_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QDeclarativeComponent_new3();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QDeclarativeComponent_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=virtual QObject * beginCreate( QDeclarativeContext * context )

$prototypeV2=virtual void completeCreate()

$prototype=virtual QObject * create ( QDeclarativeContext * context = 0 )
$virtualMethod=|QObject *|create|QDeclarativeContext *=0

$prototypeV2=QDeclarativeContext * creationContext() const

$prototypeV2=QList<QDeclarativeError> errors() const

$prototypeV2=bool isError() const

$prototypeV2=bool isLoading() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isReady() const

$prototypeV2=void loadUrl( const QUrl & url )

$prototypeV2=qreal progress() const

$prototypeV2=void setData( const QByteArray & data, const QUrl & url )

$prototypeV2=QDeclarativeComponent::Status status() const

$prototypeV2=QUrl url() const

$prototypeV2=Q_INVOKABLE QString errorString() const

$prototype=static QDeclarativeComponentAttached *qmlAttachedProperties(QObject *)
%% TODO: implementar
%% $staticMethod=|QDeclarativeComponentAttached *|qmlAttachedProperties|QObject *

$beginSignals
$signal=|progressChanged(qreal)
$signal=|statusChanged(QDeclarativeComponent::Status)
$endSignals

#pragma ENDDUMP
