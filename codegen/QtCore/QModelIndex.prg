$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD child
   METHOD column
   METHOD data
   METHOD flags
   METHOD internalId
   METHOD internalPointer
   METHOD isValid
   METHOD model
   METHOD parent
   METHOD row
   METHOD sibling

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QModelIndex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QModelIndex ()
*/
$constructor=|new1|

/*
QModelIndex ( const QModelIndex & other )
*/
$constructor=|new2|const QModelIndex &

//[1]QModelIndex ()
//[2]QModelIndex ( const QModelIndex & other )

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMODELINDEX_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QMODELINDEX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QModelIndex child ( int row, int column ) const
*/
$method=|QModelIndex|child|int,int

/*
int column () const
*/
$method=|int|column|

/*
QVariant data ( int role = Qt::DisplayRole ) const
*/
$method=|QVariant|data|int=Qt::DisplayRole

/*
Qt::ItemFlags flags () const
*/
$method=|Qt::ItemFlags|flags|

/*
qint64 internalId () const
*/
$method=|qint64|internalId|

/*
void * internalPointer () const
*/
$method=|void *|internalPointer|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
const QAbstractItemModel * model () const
*/
$method=|const QAbstractItemModel *|model|

/*
QModelIndex parent () const
*/
$method=|QModelIndex|parent|

/*
int row () const
*/
$method=|int|row|

/*
QModelIndex sibling ( int row, int column ) const
*/
$method=|QModelIndex|sibling|int,int

$extraMethods

#pragma ENDDUMP
