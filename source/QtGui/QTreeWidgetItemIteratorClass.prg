/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA class_id INIT Class_Id_QTreeWidgetItemIterator
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QTreeWidgetItemIterator
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTreeWidgetItemIterator
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTreeWidgetItemIterator
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTreeWidgetItemIterator
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTreeWidgetItemIterator
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTreeWidgetItemIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTreeWidgetItemIterator>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
*/
HB_FUNC( QTREEWIDGETITEMITERATOR_NEW1 )
{
  QTreeWidgetItemIterator * o = NULL;
  QTreeWidgetItemIterator * par1 = (QTreeWidgetItemIterator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTreeWidgetItemIterator ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItemIterator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
*/
HB_FUNC( QTREEWIDGETITEMITERATOR_NEW2 )
{
  QTreeWidgetItemIterator * o = NULL;
  QTreeWidget * par1 = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  o = new QTreeWidgetItemIterator ( par1,  (QTreeWidgetItemIterator::IteratorFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItemIterator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )
*/
HB_FUNC( QTREEWIDGETITEMITERATOR_NEW3 )
{
  QTreeWidgetItemIterator * o = NULL;
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  o = new QTreeWidgetItemIterator ( par1,  (QTreeWidgetItemIterator::IteratorFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeWidgetItemIterator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
//[2]QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
//[3]QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )

HB_FUNC( QTREEWIDGETITEMITERATOR_NEW )
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

HB_FUNC( QTREEWIDGETITEMITERATOR_DELETE )
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






#pragma ENDDUMP
