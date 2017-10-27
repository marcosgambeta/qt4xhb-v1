$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QPEN
REQUEST QCOLOR
#endif

CLASS QTextCharFormat INHERIT QTextFormat

   METHOD new
   METHOD delete
   METHOD anchorHref
   METHOD anchorNames
   METHOD font
   METHOD fontCapitalization
   METHOD fontFamily
   METHOD fontFixedPitch
   METHOD fontHintingPreference
   METHOD fontItalic
   METHOD fontKerning
   METHOD fontLetterSpacing
   METHOD fontOverline
   METHOD fontPointSize
   METHOD fontStrikeOut
   METHOD fontStyleHint
   METHOD fontStyleStrategy
   METHOD fontUnderline
   METHOD fontWeight
   METHOD fontWordSpacing
   METHOD isAnchor
   METHOD isValid
   METHOD setAnchor
   METHOD setAnchorHref
   METHOD setAnchorNames
   METHOD setFont
   METHOD setFontCapitalization
   METHOD setFontFamily
   METHOD setFontFixedPitch
   METHOD setFontHintingPreference
   METHOD setFontItalic
   METHOD setFontKerning
   METHOD setFontLetterSpacing
   METHOD setFontOverline
   METHOD setFontPointSize
   METHOD setFontStrikeOut
   METHOD setFontStyleHint
   METHOD setFontStyleStrategy
   METHOD setFontUnderline
   METHOD setFontWeight
   METHOD setFontWordSpacing
   METHOD setTextOutline
   METHOD setToolTip
   METHOD setUnderlineColor
   METHOD setUnderlineStyle
   METHOD setVerticalAlignment
   METHOD textOutline
   METHOD toolTip
   METHOD underlineColor
   METHOD underlineStyle
   METHOD verticalAlignment

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextCharFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextCharFormat ()
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_NEW )
{
  QTextCharFormat * o = new QTextCharFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QString anchorHref () const
*/
$method=|QString|anchorHref|

/*
QStringList anchorNames () const
*/
$method=|QStringList|anchorNames|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QFont::Capitalization fontCapitalization () const
*/
$method=|QFont::Capitalization|fontCapitalization|

/*
QString fontFamily () const
*/
$method=|QString|fontFamily|

/*
bool fontFixedPitch () const
*/
$method=|bool|fontFixedPitch|

/*
QFont::HintingPreference fontHintingPreference () const
*/
$method=|QFont::HintingPreference|fontHintingPreference|

/*
bool fontItalic () const
*/
$method=|bool|fontItalic|

/*
bool fontKerning () const
*/
$method=|bool|fontKerning|

/*
qreal fontLetterSpacing () const
*/
$method=|qreal|fontLetterSpacing|

/*
bool fontOverline () const
*/
$method=|bool|fontOverline|

/*
qreal fontPointSize () const
*/
$method=|qreal|fontPointSize|

/*
bool fontStrikeOut () const
*/
$method=|bool|fontStrikeOut|

/*
QFont::StyleHint fontStyleHint () const
*/
$method=|QFont::StyleHint|fontStyleHint|

/*
QFont::StyleStrategy fontStyleStrategy () const
*/
$method=|QFont::StyleStrategy|fontStyleStrategy|

/*
bool fontUnderline () const
*/
$method=|bool|fontUnderline|

/*
int fontWeight () const
*/
$method=|int|fontWeight|

/*
qreal fontWordSpacing () const
*/
$method=|qreal|fontWordSpacing|

/*
bool isAnchor () const
*/
$method=|bool|isAnchor|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
void setAnchor ( bool anchor )
*/
$method=|void|setAnchor|bool

/*
void setAnchorHref ( const QString & value )
*/
$method=|void|setAnchorHref|const QString &

/*
void setAnchorNames ( const QStringList & names )
*/
$method=|void|setAnchorNames|const QStringList &

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setFontCapitalization ( QFont::Capitalization capitalization )
*/
$method=|void|setFontCapitalization|QFont::Capitalization

/*
void setFontFamily ( const QString & family )
*/
$method=|void|setFontFamily|const QString &

/*
void setFontFixedPitch ( bool fixedPitch )
*/
$method=|void|setFontFixedPitch|bool

/*
void setFontHintingPreference ( QFont::HintingPreference hintingPreference )
*/
$method=|void|setFontHintingPreference|QFont::HintingPreference

/*
void setFontItalic ( bool italic )
*/
$method=|void|setFontItalic|bool

/*
void setFontKerning ( bool enable )
*/
$method=|void|setFontKerning|bool

/*
void setFontLetterSpacing ( qreal spacing )
*/
$method=|void|setFontLetterSpacing|qreal

/*
void setFontOverline ( bool overline )
*/
$method=|void|setFontOverline|bool

/*
void setFontPointSize ( qreal size )
*/
$method=|void|setFontPointSize|qreal

/*
void setFontStrikeOut ( bool strikeOut )
*/
$method=|void|setFontStrikeOut|bool

/*
void setFontStyleHint ( QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault )
*/
$method=|void|setFontStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

/*
void setFontStyleStrategy ( QFont::StyleStrategy strategy )
*/
$method=|void|setFontStyleStrategy|QFont::StyleStrategy

/*
void setFontUnderline ( bool underline )
*/
$method=|void|setFontUnderline|bool

/*
void setFontWeight ( int weight )
*/
$method=|void|setFontWeight|int

/*
void setFontWordSpacing ( qreal spacing )
*/
$method=|void|setFontWordSpacing|qreal

/*
void setTextOutline ( const QPen & pen )
*/
$method=|void|setTextOutline|const QPen &

/*
void setToolTip ( const QString & text )
*/
$method=|void|setToolTip|const QString &

/*
void setUnderlineColor ( const QColor & color )
*/
$method=|void|setUnderlineColor|const QColor &

/*
void setUnderlineStyle ( UnderlineStyle style )
*/
$method=|void|setUnderlineStyle|QTextCharFormat::UnderlineStyle

/*
void setVerticalAlignment ( VerticalAlignment alignment )
*/
$method=|void|setVerticalAlignment|QTextCharFormat::VerticalAlignment

/*
QPen textOutline () const
*/
$method=|QPen|textOutline|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
QColor underlineColor () const
*/
$method=|QColor|underlineColor|

/*
UnderlineStyle underlineStyle () const
*/
$method=|QTextCharFormat::UnderlineStyle|underlineStyle|

/*
VerticalAlignment verticalAlignment () const
*/
$method=|QTextCharFormat::VerticalAlignment|verticalAlignment|

#pragma ENDDUMP
