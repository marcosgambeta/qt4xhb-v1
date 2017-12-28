$header

#include "hbclass.ch"

CLASS QTextTableCellFormat INHERIT QTextCharFormat

   METHOD new
   METHOD delete
   METHOD bottomPadding
   METHOD isValid
   METHOD leftPadding
   METHOD rightPadding
   METHOD setBottomPadding
   METHOD setLeftPadding
   METHOD setPadding
   METHOD setRightPadding
   METHOD setTopPadding
   METHOD topPadding

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextTableCellFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextTableCellFormat ()
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_NEW )
{
  QTextTableCellFormat * o = new QTextTableCellFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=qreal bottomPadding () const
$method=|qreal|bottomPadding|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal leftPadding () const
$method=|qreal|leftPadding|

$prototype=qreal rightPadding () const
$method=|qreal|rightPadding|

$prototype=void setBottomPadding ( qreal padding )
$method=|void|setBottomPadding|qreal

$prototype=void setLeftPadding ( qreal padding )
$method=|void|setLeftPadding|qreal

$prototype=void setPadding ( qreal padding )
$method=|void|setPadding|qreal

$prototype=void setRightPadding ( qreal padding )
$method=|void|setRightPadding|qreal

$prototype=void setTopPadding ( qreal padding )
$method=|void|setTopPadding|qreal

$prototype=qreal topPadding () const
$method=|qreal|topPadding|

#pragma ENDDUMP
