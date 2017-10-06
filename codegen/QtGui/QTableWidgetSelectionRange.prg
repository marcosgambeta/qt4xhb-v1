$header

#include "hbclass.ch"

CLASS QTableWidgetSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD bottomRow
   METHOD columnCount
   METHOD leftColumn
   METHOD rightColumn
   METHOD rowCount
   METHOD topRow

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTableWidgetSelectionRange>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTableWidgetSelectionRange ()
*/
$constructor=|new1|

/*
QTableWidgetSelectionRange ( int top, int left, int bottom, int right )
*/
$constructor=|new2|int,int,int,int

/*
QTableWidgetSelectionRange ( const QTableWidgetSelectionRange & other )
*/
$constuctor=|new3|const QTableWidgetSelectionRange &

//[1]QTableWidgetSelectionRange ()
//[2]QTableWidgetSelectionRange ( int top, int left, int bottom, int right )
//[3]QTableWidgetSelectionRange ( const QTableWidgetSelectionRange & other )

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETSELECTIONRANGE(1) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bottomRow () const
*/
$method=|int|bottomRow|

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
int leftColumn () const
*/
$method=|int|leftColumn|

/*
int rightColumn () const
*/
$method=|int|rightColumn|

/*
int rowCount () const
*/
$method=|int|rowCount|

/*
int topRow () const
*/
$method=|int|topRow|

$extraMethods

#pragma ENDDUMP
