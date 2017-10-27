$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QStringListModel INHERIT QAbstractListModel

   METHOD new1
   METHOD new2
   METHOD new
   METHOD setStringList
   METHOD stringList
   METHOD data
   METHOD flags
   METHOD insertRows
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD supportedDropActions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStringListModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStringListModel(QObject * parent = 0)
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_NEW1 )
{
  QStringListModel * o = new QStringListModel ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QStringListModel(const QStringList & strings, QObject * parent = 0)
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_NEW2 )
{
  QStringListModel * o = new QStringListModel ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QStringListModel(QObject * parent = 0)
//[2]QStringListModel(const QStringList & strings, QObject * parent = 0)

HB_FUNC_STATIC( QSTRINGLISTMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSTRINGLISTMODEL_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTRINGLISTMODEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStringList(const QStringList & strings)
*/
$method=|void|setStringList|const QStringList &

/*
QStringList stringList() const
*/
$method=|QStringList|stringList|

/*
virtual QVariant data(const QModelIndex & index, int role) const
*/
$virtualMethod=|QVariant|data|const QModelIndex &,int

/*
virtual Qt::ItemFlags flags(const QModelIndex & index) const
*/
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

/*
virtual bool insertRows(int row, int count, const QModelIndex & parent = QModelIndex())
*/
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool removeRows(int row, int count, const QModelIndex & parent = QModelIndex())
*/
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual int rowCount(const QModelIndex & parent = QModelIndex()) const
*/
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

/*
virtual bool setData(const QModelIndex & index, const QVariant & value, int role = Qt::EditRole)
*/
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
virtual void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
virtual Qt::DropActions supportedDropActions() const
*/
$virtualMethod=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP
