$header

#include "hbclass.ch"

CLASS QSocketNotifier INHERIT QObject

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled

   METHOD onActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSocketNotifier>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSocketNotifier(int socket, Type, QObject *parent = 0)
*/
$constructor=|new|int,QSocketNotifier::Type,QObject *=0

$deleteMethod

/*
int socket() const
*/
$method=|int|socket|

/*
Type type() const
*/
$method=|QSocketNotifier::Type|type|

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
void setEnabled(bool)
*/
$method=|void|setEnabled|bool

#pragma ENDDUMP
