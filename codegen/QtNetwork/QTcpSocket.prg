$header

#include "hbclass.ch"

CLASS QTcpSocket INHERIT QAbstractSocket

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QTCPSOCKET_NEW )
{
  QTcpSocket * o = new QTcpSocket ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
