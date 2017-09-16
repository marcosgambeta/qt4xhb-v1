$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QDesignerContainerExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD insertWidget
   METHOD remove
   METHOD setCurrentIndex
   METHOD widget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerContainerExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void addWidget ( QWidget * page ) = 0
*/
$virtualMethod=|void|addWidget|QWidget *

/*
virtual int count () const = 0
*/
$virtualMethod=|int|count|

/*
virtual int currentIndex () const = 0
*/
$virtualMethod=|int|currentIndex|

/*
virtual void insertWidget ( int index, QWidget * page ) = 0
*/
$virtualMethod=|void|insertWidget|int,QWidget *

/*
virtual void remove ( int index ) = 0
*/
$virtualMethod=|void|remove|int

/*
virtual void setCurrentIndex ( int index ) = 0
*/
$virtualMethod=|void|setCurrentIndex|int

/*
virtual QWidget * widget ( int index ) const = 0
*/
$virtualMethod=|QWidget *|widget|int

$extraMethods

#pragma ENDDUMP
