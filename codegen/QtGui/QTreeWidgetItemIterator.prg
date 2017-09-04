$header

#include "hbclass.ch"

CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTreeWidgetItemIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
*/
HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW1 )
{
  QTreeWidgetItemIterator * o = new QTreeWidgetItemIterator ( *PQTREEWIDGETITEMITERATOR(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
*/
HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW2 )
{
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  QTreeWidgetItemIterator * o = new QTreeWidgetItemIterator ( PQTREEWIDGET(1), (QTreeWidgetItemIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )
*/
HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW3 )
{
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  QTreeWidgetItemIterator * o = new QTreeWidgetItemIterator ( PQTREEWIDGETITEM(1), (QTreeWidgetItemIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
//[2]QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
//[3]QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEMITERATOR(1) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_DELETE )
{
  QTreeWidgetItemIterator * obj = (QTreeWidgetItemIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

$extraMethods

#pragma ENDDUMP
