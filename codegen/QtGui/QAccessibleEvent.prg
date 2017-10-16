$header

#include "hbclass.ch"

CLASS QAccessibleEvent INHERIT QEvent

   METHOD new
   METHOD child
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAccessibleEvent ( Type type, int child )
*/
$constructor=|new|QAccessibleEvent::Type,int

/*
int child () const
*/
$method=|int|child|

/*
void setValue ( const QString & text )
*/
$method=|void|setValue|const QString &

/*
QString value () const
*/
$method=|QString|value|

#pragma ENDDUMP
