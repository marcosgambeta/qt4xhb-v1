$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QCheckBox INHERIT QAbstractButton

   METHOD new
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCheckBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QCheckBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QCheckBox ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QCheckBox ( QWidget * parent = 0 )
//[2]QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QCheckBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QCheckBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Qt::CheckState checkState () const
$method=|Qt::CheckState|checkState|

$prototype=bool isTristate () const
$method=|bool|isTristate|

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototype=void setTristate ( bool y = true )
$method=|void|setTristate|bool=true

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
