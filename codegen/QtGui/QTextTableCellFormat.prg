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

/*
QTextTableCellFormat ()
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_NEW )
{
  QTextTableCellFormat * o = new QTextTableCellFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal bottomPadding () const
*/
$method=|qreal|bottomPadding|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qreal leftPadding () const
*/
$method=|qreal|leftPadding|

/*
qreal rightPadding () const
*/
$method=|qreal|rightPadding|

/*
void setBottomPadding ( qreal padding )
*/
$method=|void|setBottomPadding|qreal

/*
void setLeftPadding ( qreal padding )
*/
$method=|void|setLeftPadding|qreal

/*
void setPadding ( qreal padding )
*/
$method=|void|setPadding|qreal

/*
void setRightPadding ( qreal padding )
*/
$method=|void|setRightPadding|qreal

/*
void setTopPadding ( qreal padding )
*/
$method=|void|setTopPadding|qreal

/*
qreal topPadding () const
*/
$method=|qreal|topPadding|

#pragma ENDDUMP
