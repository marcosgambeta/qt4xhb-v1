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

$prototype=virtual QString pathFromIndex ( const QModelIndex & index ) const
$virtualMethod=|QString|pathFromIndex|const QModelIndex &

$prototypeV2=QAbstractItemView * popup() const

$prototype=void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=void setCompletionColumn ( int column )
$method=|void|setCompletionColumn|int

$prototype=void setCompletionMode ( CompletionMode mode )
$method=|void|setCompletionMode|QCompleter::CompletionMode

$prototype=void setCompletionRole ( int role )
$method=|void|setCompletionRole|int

$prototype=bool setCurrentRow ( int row )
$method=|bool|setCurrentRow|int

$prototype=void setMaxVisibleItems ( int maxItems )
$method=|void|setMaxVisibleItems|int

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=void setModelSorting ( ModelSorting sorting )
$method=|void|setModelSorting|QCompleter::ModelSorting

$prototype=void setPopup ( QAbstractItemView * popup )
$method=|void|setPopup|QAbstractItemView *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=virtual QStringList splitPath ( const QString & path ) const
$virtualMethod=|QStringList|splitPath|const QString &

$prototypeV2=QWidget * widget() const

$prototypeV2=bool wrapAround() const

$prototype=void complete ( const QRect & rect = QRect() )
$method=|void|complete|const QRect &=QRect()

$prototype=void setCompletionPrefix ( const QString & prefix )
$method=|void|setCompletionPrefix|const QString &

$prototype=void setWrapAround ( bool wrap )
$method=|void|setWrapAround|bool

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
