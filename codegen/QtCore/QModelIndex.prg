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

$prototype=QModelIndex ()
$internalConstructor=|new1|

$prototype=QModelIndex ( const QModelIndex & other )
$internalConstructor=|new2|const QModelIndex &

//[1]QModelIndex ()
//[2]QModelIndex ( const QModelIndex & other )

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QModelIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QModelIndex child ( int row, int column ) const
$method=|QModelIndex|child|int,int

$prototype=int column () const
$method=|int|column|

$prototype=QVariant data ( int role = Qt::DisplayRole ) const
$method=|QVariant|data|int=Qt::DisplayRole

$prototype=Qt::ItemFlags flags () const
$method=|Qt::ItemFlags|flags|

$prototype=qint64 internalId () const
$method=|qint64|internalId|

$prototype=void * internalPointer () const
$method=|void *|internalPointer|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=const QAbstractItemModel * model () const
$method=|const QAbstractItemModel *|model|

$prototype=QModelIndex parent () const
$method=|QModelIndex|parent|

$prototype=int row () const
$method=|int|row|

$prototype=QModelIndex sibling ( int row, int column ) const
$method=|QModelIndex|sibling|int,int

$extraMethods

#pragma ENDDUMP
