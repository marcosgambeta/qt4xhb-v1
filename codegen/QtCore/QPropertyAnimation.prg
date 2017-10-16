$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
#endif

CLASS QPropertyAnimation INHERIT QVariantAnimation

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD propertyName
   METHOD setPropertyName
   METHOD setTargetObject
   METHOD targetObject

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPropertyAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPropertyAnimation ( QObject * parent = 0 )
*/
$constructor=|new1|QObject *=0

/*
QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )
*/
$constructor=|new2|QObject *,const QByteArray &,QObject *=0

//[1]QPropertyAnimation ( QObject * parent = 0 )
//[2]QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPROPERTYANIMATION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISQBYTEARRAY(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPROPERTYANIMATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray propertyName () const
*/
$method=|QByteArray|propertyName|

/*
void setPropertyName ( const QByteArray & propertyName )
*/
$method=|void|setPropertyName|const QByteArray &

/*
void setTargetObject ( QObject * target )
*/
$method=|void|setTargetObject|QObject *

/*
QObject * targetObject () const
*/
$method=|QObject *|targetObject|

#pragma ENDDUMP
