$header

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   METHOD new
   METHOD delete
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QParallelAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QParallelAnimationGroup ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual int duration () const
*/
$virtualMethod=|int|duration|

#pragma ENDDUMP
