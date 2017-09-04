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
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW1 )
{
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTableWidgetSelectionRange ( int top, int left, int bottom, int right )
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW2 )
{
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTableWidgetSelectionRange ( const QTableWidgetSelectionRange & other )
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW3 )
{
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ( *PQTABLEWIDGETSELECTIONRANGE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_DELETE )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int bottomRow () const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_BOTTOMROW )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->bottomRow () );
  }
}

/*
int columnCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_COLUMNCOUNT )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}

/*
int leftColumn () const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_LEFTCOLUMN )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->leftColumn () );
  }
}

/*
int rightColumn () const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_RIGHTCOLUMN )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rightColumn () );
  }
}

/*
int rowCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_ROWCOUNT )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rowCount () );
  }
}

/*
int topRow () const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_TOPROW )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->topRow () );
  }
}

$extraMethods

#pragma ENDDUMP
