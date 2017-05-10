/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAbstractSlider INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractSlider
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD hasTracking
   METHOD invertedAppearance
   METHOD invertedControls
   METHOD isSliderDown
   METHOD maximum
   METHOD minimum
   METHOD orientation
   METHOD pageStep
   METHOD setInvertedAppearance
   METHOD setInvertedControls
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPageStep
   METHOD setRange
   METHOD setSingleStep
   METHOD setSliderDown
   METHOD setSliderPosition
   METHOD setTracking
   METHOD singleStep
   METHOD sliderPosition
   METHOD triggerAction
   METHOD value
   METHOD setOrientation
   METHOD setValue
   METHOD onActionTriggered
   METHOD onRangeChanged
   METHOD onSliderMoved
   METHOD onSliderPressed
   METHOD onSliderReleased
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractSlider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTSLIDER_DELETE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool hasTracking () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_HASTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasTracking (  ) );
  }
}


/*
bool invertedAppearance () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_INVERTEDAPPEARANCE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->invertedAppearance (  ) );
  }
}


/*
bool invertedControls () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_INVERTEDCONTROLS )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->invertedControls (  ) );
  }
}


/*
bool isSliderDown () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_ISSLIDERDOWN )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSliderDown (  ) );
  }
}


/*
int maximum () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_MAXIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maximum (  ) );
  }
}


/*
int minimum () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_MINIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->minimum (  ) );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_ORIENTATION )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->orientation (  ) );
  }
}


/*
int pageStep () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_PAGESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pageStep (  ) );
  }
}


/*
void setInvertedAppearance ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETINVERTEDAPPEARANCE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInvertedAppearance ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInvertedControls ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETINVERTEDCONTROLS )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInvertedControls ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximum ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETMAXIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaximum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimum ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETMINIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMinimum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageStep ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETPAGESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRange ( int min, int max )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETRANGE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSingleStep ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSINGLESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSingleStep ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSliderDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSLIDERDOWN )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSliderDown ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSliderPosition ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSLIDERPOSITION )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSliderPosition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTracking ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTracking ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int singleStep () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SINGLESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->singleStep (  ) );
  }
}


/*
int sliderPosition () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SLIDERPOSITION )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->sliderPosition (  ) );
  }
}


/*
void triggerAction ( SliderAction action )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_TRIGGERACTION )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerAction (  (QAbstractSlider::SliderAction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int value () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_VALUE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}


/*
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETORIENTATION )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETVALUE )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
