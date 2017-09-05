$header

#include "hbclass.ch"

CLASS QAbstractSlider INHERIT QWidget

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

$destructor

#pragma BEGINDUMP

#include <QAbstractSlider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool hasTracking () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_HASTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasTracking () );
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
    RBOOL( obj->invertedAppearance () );
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
    RBOOL( obj->invertedControls () );
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
    RBOOL( obj->isSliderDown () );
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
    RINT( obj->maximum () );
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
    RINT( obj->minimum () );
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
    RENUM( obj->orientation () );
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
    RINT( (int) obj->pageStep () );
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
    obj->setMaximum ( PINT(1) );
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
    obj->setMinimum ( PINT(1) );
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
    obj->setPageStep ( PINT(1) );
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
    obj->setRange ( PINT(1), PINT(2) );
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
    obj->setSingleStep ( PINT(1) );
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
    obj->setSliderPosition ( PINT(1) );
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
    RINT( obj->singleStep () );
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
    RINT( obj->sliderPosition () );
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
    obj->triggerAction ( (QAbstractSlider::SliderAction) par1 );
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
    RINT( obj->value () );
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
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
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
    obj->setValue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
