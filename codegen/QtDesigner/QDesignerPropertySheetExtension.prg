$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDesignerPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD hasReset
   METHOD indexOf
   METHOD isAttribute
   METHOD isChanged
   METHOD isVisible
   METHOD property
   METHOD propertyGroup
   METHOD propertyName
   METHOD reset
   METHOD setAttribute
   METHOD setChanged
   METHOD setProperty
   METHOD setPropertyGroup
   METHOD setVisible

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerPropertySheetExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

$deleteMethod

/*
virtual int count () const = 0
*/
$virtualMethod=|int|count|

/*
virtual bool hasReset ( int index ) const = 0
*/
$virtualMethod=|bool|hasReset|int

/*
virtual int indexOf ( const QString & name ) const = 0
*/
$virtualMethod=|int|indexOf|const QString &

/*
virtual bool isAttribute ( int index ) const = 0
*/
$virtualMethod=|bool|isAttribute|int

/*
virtual bool isChanged ( int index ) const = 0
*/
$virtualMethod=|bool|isChanged|int

/*
virtual bool isVisible ( int index ) const = 0
*/
$virtualMethod=|bool|isVisible|int

/*
virtual QVariant property ( int index ) const = 0
*/
$virtualMethod=|QVariant|property|int

/*
virtual QString propertyGroup ( int index ) const = 0
*/
$virtualMethod=|QString|propertyGroup|int

/*
virtual QString propertyName ( int index ) const = 0
*/
$virtualMethod=|QString|propertyName|int

/*
virtual bool reset ( int index ) = 0
*/
$virtualMethod=|bool|reset|int

/*
virtual void setAttribute ( int index, bool attribute ) = 0
*/
$virtualMethod=|void|setAttribute|int,bool

/*
virtual void setChanged ( int index, bool changed ) = 0
*/
$virtualMethod=|void|setChanged|int,bool

/*
virtual void setProperty ( int index, const QVariant & value ) = 0
*/
$virtualMethod=|void|setProperty|int,const QVariant &

/*
virtual void setPropertyGroup ( int index, const QString & group ) = 0
*/
$virtualMethod=|void|setPropertyGroup|int,const QString &

/*
virtual void setVisible ( int index, bool visible ) = 0
*/
$virtualMethod=|void|setVisible|int,bool

$extraMethods

#pragma ENDDUMP
