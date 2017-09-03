$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QEASINGCURVE
#endif

CLASS QVariantAnimation INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentValue
   METHOD easingCurve
   METHOD endValue
   METHOD keyValueAt
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndValue
   METHOD setKeyValueAt
   METHOD setStartValue
   METHOD startValue
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVariantAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVariantAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QVARIANTANIMATION_DELETE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QVariant currentValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_CURRENTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->currentValue () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QEasingCurve easingCurve () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_EASINGCURVE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEasingCurve * ptr = new QEasingCurve( obj->easingCurve () );
    _qt4xhb_createReturnClass ( ptr, "QEASINGCURVE" );
  }
}


/*
QVariant endValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_ENDVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->endValue () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariant keyValueAt ( qreal step ) const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_KEYVALUEAT )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->keyValueAt ( PQREAL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
void setDuration ( int msecs )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETDURATION )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDuration ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEasingCurve ( const QEasingCurve & easing )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETEASINGCURVE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEasingCurve ( *PQEASINGCURVE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEndValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETENDVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEndValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeyValueAt ( qreal step, const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETKEYVALUEAT )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setKeyValueAt ( PQREAL(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setStartValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QVARIANTANIMATION_SETSTARTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStartValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant startValue () const
*/
HB_FUNC_STATIC( QVARIANTANIMATION_STARTVALUE )
{
  QVariantAnimation * obj = (QVariantAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->startValue () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}





#pragma ENDDUMP
