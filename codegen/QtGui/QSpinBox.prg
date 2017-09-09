$header

#include "hbclass.ch"

CLASS QSpinBox INHERIT QAbstractSpinBox

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD maximum
   METHOD minimum
   METHOD prefix
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPrefix
   METHOD setRange
   METHOD setSingleStep
   METHOD setSuffix
   METHOD singleStep
   METHOD suffix
   METHOD value
   METHOD setValue

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSPINBOX_NEW )
{
  QSpinBox * o = new QSpinBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QString cleanText () const
*/
$method=|QString|cleanText|

/*
int maximum () const
*/
HB_FUNC_STATIC( QSPINBOX_MAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maximum () );
  }
}

/*
int minimum () const
*/
HB_FUNC_STATIC( QSPINBOX_MINIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minimum () );
  }
}

/*
QString prefix () const
*/
$method=|QString|prefix|

/*
void setMaximum ( int max )
*/
HB_FUNC_STATIC( QSPINBOX_SETMAXIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimum ( int min )
*/
HB_FUNC_STATIC( QSPINBOX_SETMINIMUM )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QSPINBOX_SETPREFIX )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrefix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( int minimum, int maximum )
*/
HB_FUNC_STATIC( QSPINBOX_SETRANGE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSingleStep ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETSINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSingleStep ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QSPINBOX_SETSUFFIX )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSuffix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int singleStep () const
*/
HB_FUNC_STATIC( QSPINBOX_SINGLESTEP )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->singleStep () );
  }
}

/*
QString suffix () const
*/
$method=|QString|suffix|

/*
int value () const
*/
HB_FUNC_STATIC( QSPINBOX_VALUE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->value () );
  }
}

/*
void setValue ( int val )
*/
HB_FUNC_STATIC( QSPINBOX_SETVALUE )
{
  QSpinBox * obj = (QSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
