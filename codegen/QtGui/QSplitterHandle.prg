$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSPLITTER
REQUEST QSIZE
#endif

CLASS QSplitterHandle INHERIT QWidget

   METHOD new
   METHOD opaqueResize
   METHOD orientation
   METHOD setOrientation
   METHOD splitter
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSplitterHandle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_NEW )
{
  QSplitterHandle * o = new QSplitterHandle ( (Qt::Orientation) hb_parni(1), PQSPLITTER(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
bool opaqueResize () const
*/
$method=|bool|opaqueResize|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
QSplitter * splitter () const
*/
$method=|QSplitter *|splitter|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
