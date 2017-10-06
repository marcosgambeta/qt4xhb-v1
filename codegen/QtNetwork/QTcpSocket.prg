$header

#include "hbclass.ch"

CLASS QTcpSocket INHERIT QAbstractSocket

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTcpSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTcpSocket ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

#pragma ENDDUMP
