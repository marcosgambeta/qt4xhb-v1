$header

#include "hbclass.ch"


CLASS QFinalState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFinalState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFinalState(QState * parent = 0)
*/
HB_FUNC_STATIC( QFINALSTATE_NEW )
{
  QFinalState * o = new QFinalState ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
