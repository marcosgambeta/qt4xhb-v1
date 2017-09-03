$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedLayout INHERIT QLayout

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStackedLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStackedLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStackedLayout ()
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW1 )
{
  QStackedLayout * o = new QStackedLayout ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QStackedLayout ( QWidget * parent )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW2 )
{
  QStackedLayout * o = new QStackedLayout ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QStackedLayout ( QLayout * parentLayout )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW3 )
{
  QStackedLayout * o = new QStackedLayout ( PQLAYOUT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTACKEDLAYOUT_DELETE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_ADDWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->addWidget ( PQWIDGET(1) ) );
  }
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->currentWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_INSERTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->insertWidget ( PINT(1), PQWIDGET(2) ) );
  }
}

/*
void setStackingMode ( StackingMode stackingMode )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETSTACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStackingMode ( (QStackedLayout::StackingMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
StackingMode stackingMode () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_STACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->stackingMode () );
  }
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_WIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
