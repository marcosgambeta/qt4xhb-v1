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

#include <QtCore/QModelIndex>
#include <QtGui/QAbstractItemDelegate>

$prototype=QDataWidgetMapper ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addMapping ( QWidget * widget, int section )
$internalMethod=|void|addMapping,addMapping1|QWidget *,int

$prototype=void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
$internalMethod=|void|addMapping,addMapping2|QWidget *,int,const QByteArray &

/*
[1]void addMapping ( QWidget * widget, int section )
[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
*/

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QDataWidgetMapper_addMapping1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    QDataWidgetMapper_addMapping2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addMapping

$prototypeV2=void clearMapping()

$prototypeV2=int currentIndex() const

$prototypeV2=QAbstractItemDelegate * itemDelegate() const

$prototypeV2=QByteArray mappedPropertyName( QWidget * widget ) const

$prototypeV2=int mappedSection( QWidget * widget ) const

$prototypeV2=QWidget * mappedWidgetAt( int section ) const

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void removeMapping( QWidget * widget )

$prototypeV2=QModelIndex rootIndex() const

$prototypeV2=void setItemDelegate( QAbstractItemDelegate * delegate )

$prototypeV2=void setModel( QAbstractItemModel * model )

$prototypeV2=void setOrientation( Qt::Orientation aOrientation )

$prototypeV2=void setRootIndex( const QModelIndex & index )

$prototypeV2=void setSubmitPolicy( QDataWidgetMapper::SubmitPolicy policy )

$prototypeV2=QDataWidgetMapper::SubmitPolicy submitPolicy() const

$prototypeV2=void revert()

$prototypeV2=virtual void setCurrentIndex( int index )

$prototypeV2=void setCurrentModelIndex( const QModelIndex & index )

$prototypeV2=bool submit()

$prototypeV2=void toFirst()

$prototypeV2=void toLast()

$prototypeV2=void toNext()

$prototypeV2=void toPrevious()

$beginSignals
$signal=|currentIndexChanged(int)
$endSignals

#pragma ENDDUMP
