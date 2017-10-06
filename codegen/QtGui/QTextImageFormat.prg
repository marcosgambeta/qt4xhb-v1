$header

#include "hbclass.ch"

CLASS QTextImageFormat INHERIT QTextCharFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD height
   METHOD isValid
   METHOD name
   METHOD setHeight
   METHOD setName
   METHOD setWidth
   METHOD width

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextImageFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextImageFormat ()
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NEW )
{
  QTextImageFormat * o = new QTextImageFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal height () const
*/
$method=|qreal|height|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString name () const
*/
$method=|QString|name|

/*
void setHeight ( qreal height )
*/
$method=|void|setHeight|qreal

/*
void setName ( const QString & name )
*/
$method=|void|setName|const QString &

/*
void setWidth ( qreal width )
*/
$method=|void|setWidth|qreal

/*
qreal width () const
*/
$method=|qreal|width|

#pragma ENDDUMP
