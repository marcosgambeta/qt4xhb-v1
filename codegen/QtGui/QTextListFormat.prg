$header

#include "hbclass.ch"

CLASS QTextListFormat INHERIT QTextFormat

   METHOD new
   METHOD delete
   METHOD indent
   METHOD isValid
   METHOD numberPrefix
   METHOD numberSuffix
   METHOD setIndent
   METHOD setNumberPrefix
   METHOD setNumberSuffix
   METHOD setStyle
   METHOD style

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextListFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextListFormat ()
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NEW )
{
  QTextListFormat * o = new QTextListFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int indent () const
*/
$method=|int|indent|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString numberPrefix () const
*/
$method=|QString|numberPrefix|

/*
QString numberSuffix () const
*/
$method=|QString|numberSuffix|

/*
void setIndent ( int indentation )
*/
$method=|void|setIndent|int

/*
void setNumberPrefix ( const QString & numberPrefix )
*/
$method=|void|setNumberPrefix|const QString &

/*
void setNumberSuffix ( const QString & numberSuffix )
*/
$method=|void|setNumberSuffix|const QString &

/*
void setStyle ( Style style )
*/
$method=|void|setStyle|QTextListFormat::Style

/*
Style style () const
*/
$method=|QTextListFormat::Style|style|

#pragma ENDDUMP
