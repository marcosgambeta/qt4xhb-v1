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

#include <QtCore/QStringList>
#include <QtGui/QAbstractItemView>

$prototype=QCompleter ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
$internalConstructor=|new2|QAbstractItemModel *,QObject *=0

$prototype=QCompleter ( const QStringList & list, QObject * parent = 0 )
$internalConstructor=|new3|const QStringList &,QObject *=0

/*
[1]QCompleter ( QObject * parent = 0 )
[2]QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
[3]QCompleter ( const QStringList & list, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QCOMPLETER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCompleter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QCompleter_new2();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QCompleter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::CaseSensitivity caseSensitivity() const

$prototypeV2=int completionColumn() const

$prototypeV2=int completionCount() const

$prototypeV2=QCompleter::CompletionMode completionMode() const

$prototypeV2=QAbstractItemModel * completionModel() const

$prototypeV2=QString completionPrefix() const

$prototypeV2=int completionRole() const

$prototypeV2=QString currentCompletion() const

$prototypeV2=QModelIndex currentIndex() const

$prototypeV2=int currentRow() const

$prototypeV2=int maxVisibleItems() const

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=QCompleter::ModelSorting modelSorting() const

$prototypeV2=virtual QString pathFromIndex( const QModelIndex & index ) const

$prototypeV2=QAbstractItemView * popup() const

$prototypeV2=void setCaseSensitivity( Qt::CaseSensitivity caseSensitivity )

$prototypeV2=void setCompletionColumn( int column )

$prototypeV2=void setCompletionMode( QCompleter::CompletionMode mode )

$prototypeV2=void setCompletionRole( int role )

$prototypeV2=bool setCurrentRow( int row )

$prototypeV2=void setMaxVisibleItems( int maxItems )

$prototypeV2=void setModel( QAbstractItemModel * model )

$prototypeV2=void setModelSorting( QCompleter::ModelSorting sorting )

$prototypeV2=void setPopup( QAbstractItemView * popup )

$prototypeV2=void setWidget( QWidget * widget )

$prototypeV2=virtual QStringList splitPath( const QString & path ) const

$prototypeV2=QWidget * widget() const

$prototypeV2=bool wrapAround() const

$prototypeV2=void complete( const QRect & rect = QRect() )

$prototypeV2=void setCompletionPrefix( const QString & prefix )

$prototypeV2=void setWrapAround( bool wrap )

$beginSignals
$beginGroup
$signal=|activated(QString)
$signal=|activated(QModelIndex)
$endGroup
$beginGroup
$signal=|highlighted(QString)
$signal=|highlighted(QModelIndex)
$endGroup
$endSignals

#pragma ENDDUMP
