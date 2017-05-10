/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QMATRIX
REQUEST QPOINTF
REQUEST QTIMELINE
#endif

CLASS QGraphicsItemAnimation INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsItemAnimation
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD horizontalScaleAt
   METHOD horizontalShearAt
   METHOD item
   METHOD matrixAt
   METHOD posAt
   METHOD rotationAt
   METHOD setItem
   METHOD setPosAt
   METHOD setRotationAt
   METHOD setScaleAt
   METHOD setShearAt
   METHOD setTimeLine
   METHOD setTranslationAt
   METHOD timeLine
   METHOD verticalScaleAt
   METHOD verticalShearAt
   METHOD xTranslationAt
   METHOD yTranslationAt
   METHOD setStep
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsItemAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsItemAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QMatrix>
#include <QPointF>

/*
QGraphicsItemAnimation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_NEW )
{
  QGraphicsItemAnimation * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsItemAnimation ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_DELETE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_CLEAR )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal horizontalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->horizontalScaleAt ( PQREAL(1) );
    hb_retnd( r );
  }
}


/*
qreal horizontalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->horizontalShearAt ( PQREAL(1) );
    hb_retnd( r );
  }
}


/*
QGraphicsItem * item () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * ptr = obj->item (  );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
QMatrix matrixAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_MATRIXAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMatrix * ptr = new QMatrix( obj->matrixAt ( PQREAL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
QPointF posAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_POSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->posAt ( PQREAL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



/*
qreal rotationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->rotationAt ( PQREAL(1) );
    hb_retnd( r );
  }
}




/*
void setItem ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosAt ( qreal step, const QPointF & point )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETPOSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPosAt ( PQREAL(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRotationAt ( qreal step, qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRotationAt ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaleAt ( qreal step, qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScaleAt ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShearAt ( qreal step, qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setShearAt ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeLine ( QTimeLine * timeLine )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTimeLine * par1 = (QTimeLine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTimeLine ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTranslationAt ( qreal step, qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTranslationAt ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QTimeLine * timeLine () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_TIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTimeLine * ptr = obj->timeLine (  );
    _qt4xhb_createReturnClass ( ptr, "QTIMELINE" );
  }
}



/*
qreal verticalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->verticalScaleAt ( PQREAL(1) );
    hb_retnd( r );
  }
}


/*
qreal verticalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->verticalShearAt ( PQREAL(1) );
    hb_retnd( r );
  }
}


/*
qreal xTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_XTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->xTranslationAt ( PQREAL(1) );
    hb_retnd( r );
  }
}


/*
qreal yTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_YTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->yTranslationAt ( PQREAL(1) );
    hb_retnd( r );
  }
}


/*
void setStep ( qreal step )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSTEP )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStep ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
