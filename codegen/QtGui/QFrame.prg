$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFrame INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD frameRect
   METHOD frameShadow
   METHOD frameShape
   METHOD frameStyle
   METHOD frameWidth
   METHOD lineWidth
   METHOD midLineWidth
   METHOD setFrameRect
   METHOD setFrameShadow
   METHOD setFrameShape
   METHOD setFrameStyle
   METHOD setLineWidth
   METHOD setMidLineWidth
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFrame ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
HB_FUNC_STATIC( QFRAME_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QFrame * o = new QFrame ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QRect frameRect () const
$method=|QRect|frameRect|

$prototype=Shadow frameShadow () const
HB_FUNC_STATIC( QFRAME_FRAMESHADOW )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->frameShadow () );
  }
}

$prototype=Shape frameShape () const
HB_FUNC_STATIC( QFRAME_FRAMESHAPE )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->frameShape () );
  }
}

$prototype=int frameStyle () const
$method=|int|frameStyle|

$prototype=int frameWidth () const
$method=|int|frameWidth|

$prototype=int lineWidth () const
$method=|int|lineWidth|

$prototype=int midLineWidth () const
$method=|int|midLineWidth|

$prototype=void setFrameRect ( const QRect & )
$method=|void|setFrameRect|const QRect &

$prototype=void setFrameShadow ( Shadow )
$method=|void|setFrameShadow|QFrame::Shadow

$prototype=void setFrameShape ( Shape )
$method=|void|setFrameShape|QFrame::Shape

$prototype=void setFrameStyle ( int style )
$method=|void|setFrameStyle|int

$prototype=void setLineWidth ( int )
$method=|void|setLineWidth|int

$prototype=void setMidLineWidth ( int )
$method=|void|setMidLineWidth|int

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
