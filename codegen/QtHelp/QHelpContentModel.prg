$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QVARIANT
REQUEST QMODELINDEX
#endif

CLASS QHelpContentModel INHERIT QAbstractItemModel

   METHOD delete
   METHOD contentItemAt
   METHOD createContents
   METHOD isCreatingContents
   METHOD columnCount
   METHOD data
   METHOD index
   METHOD parent
   METHOD rowCount

   METHOD onContentsCreated
   METHOD onContentsCreationStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpContentModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QHelpContentItem * contentItemAt ( const QModelIndex & index ) const
*/
$method=|QHelpContentItem *|contentItemAt|const QModelIndex &

/*
void createContents ( const QString & customFilterName )
*/
$method=|void|createContents|const QString &

/*
bool isCreatingContents () const
*/
$method=|bool|isCreatingContents|

/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

/*
virtual QVariant data ( const QModelIndex & index, int role ) const
*/
$virtualMethod=|QVariant|data|const QModelIndex &,int

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
virtual QModelIndex parent ( const QModelIndex & index ) const
*/
$virtualMethod=|QModelIndex|parent|const QModelIndex &

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

#pragma ENDDUMP
