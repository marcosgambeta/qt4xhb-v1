$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecorationDefault INHERIT QDecoration

   METHOD new
   METHOD delete
   METHOD paint
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDecorationDefault>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDecorationDefault ()
HB_FUNC_STATIC( QDECORATIONDEFAULT_NEW )
{
  QDecorationDefault * o = new QDecorationDefault ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal )
$virtualMethod=|bool|paint|QPainter *,const QWidget *,int=QDecoration::All,QDecoration::DecorationState=QDecoration::Normal

$prototype=virtual QRegion region ( const QWidget * widget, const QRect & rect, int decorationRegion = All )
$virtualMethod=|QRegion|region|const QWidget *,const QRect &,int=QDecoration::All

#pragma ENDDUMP
