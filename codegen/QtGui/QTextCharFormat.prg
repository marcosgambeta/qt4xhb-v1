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

$prototype=QTextCharFormat ()
HB_FUNC_STATIC( QTEXTCHARFORMAT_NEW )
{
  QTextCharFormat * o = new QTextCharFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QString anchorHref () const
$method=|QString|anchorHref|

$prototype=QStringList anchorNames () const
$method=|QStringList|anchorNames|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QFont::Capitalization fontCapitalization () const
$method=|QFont::Capitalization|fontCapitalization|

$prototype=QString fontFamily () const
$method=|QString|fontFamily|

$prototype=bool fontFixedPitch () const
$method=|bool|fontFixedPitch|

$prototype=QFont::HintingPreference fontHintingPreference () const
$method=|QFont::HintingPreference|fontHintingPreference|

$prototype=bool fontItalic () const
$method=|bool|fontItalic|

$prototype=bool fontKerning () const
$method=|bool|fontKerning|

$prototype=qreal fontLetterSpacing () const
$method=|qreal|fontLetterSpacing|

$prototype=bool fontOverline () const
$method=|bool|fontOverline|

$prototype=qreal fontPointSize () const
$method=|qreal|fontPointSize|

$prototype=bool fontStrikeOut () const
$method=|bool|fontStrikeOut|

$prototype=QFont::StyleHint fontStyleHint () const
$method=|QFont::StyleHint|fontStyleHint|

$prototype=QFont::StyleStrategy fontStyleStrategy () const
$method=|QFont::StyleStrategy|fontStyleStrategy|

$prototype=bool fontUnderline () const
$method=|bool|fontUnderline|

$prototype=int fontWeight () const
$method=|int|fontWeight|

$prototype=qreal fontWordSpacing () const
$method=|qreal|fontWordSpacing|

$prototype=bool isAnchor () const
$method=|bool|isAnchor|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=void setAnchor ( bool anchor )
$method=|void|setAnchor|bool

$prototype=void setAnchorHref ( const QString & value )
$method=|void|setAnchorHref|const QString &

$prototype=void setAnchorNames ( const QStringList & names )
$method=|void|setAnchorNames|const QStringList &

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setFontCapitalization ( QFont::Capitalization capitalization )
$method=|void|setFontCapitalization|QFont::Capitalization

$prototype=void setFontFamily ( const QString & family )
$method=|void|setFontFamily|const QString &

$prototype=void setFontFixedPitch ( bool fixedPitch )
$method=|void|setFontFixedPitch|bool

$prototype=void setFontHintingPreference ( QFont::HintingPreference hintingPreference )
$method=|void|setFontHintingPreference|QFont::HintingPreference

$prototype=void setFontItalic ( bool italic )
$method=|void|setFontItalic|bool

$prototype=void setFontKerning ( bool enable )
$method=|void|setFontKerning|bool

$prototype=void setFontLetterSpacing ( qreal spacing )
$method=|void|setFontLetterSpacing|qreal

$prototype=void setFontOverline ( bool overline )
$method=|void|setFontOverline|bool

$prototype=void setFontPointSize ( qreal size )
$method=|void|setFontPointSize|qreal

$prototype=void setFontStrikeOut ( bool strikeOut )
$method=|void|setFontStrikeOut|bool

$prototype=void setFontStyleHint ( QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault )
$method=|void|setFontStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

$prototype=void setFontStyleStrategy ( QFont::StyleStrategy strategy )
$method=|void|setFontStyleStrategy|QFont::StyleStrategy

$prototype=void setFontUnderline ( bool underline )
$method=|void|setFontUnderline|bool

$prototype=void setFontWeight ( int weight )
$method=|void|setFontWeight|int

$prototype=void setFontWordSpacing ( qreal spacing )
$method=|void|setFontWordSpacing|qreal

$prototype=void setTextOutline ( const QPen & pen )
$method=|void|setTextOutline|const QPen &

$prototype=void setToolTip ( const QString & text )
$method=|void|setToolTip|const QString &

$prototype=void setUnderlineColor ( const QColor & color )
$method=|void|setUnderlineColor|const QColor &

$prototype=void setUnderlineStyle ( UnderlineStyle style )
$method=|void|setUnderlineStyle|QTextCharFormat::UnderlineStyle

$prototype=void setVerticalAlignment ( VerticalAlignment alignment )
$method=|void|setVerticalAlignment|QTextCharFormat::VerticalAlignment

$prototype=QPen textOutline () const
$method=|QPen|textOutline|

$prototype=QString toolTip () const
$method=|QString|toolTip|

$prototype=QColor underlineColor () const
$method=|QColor|underlineColor|

$prototype=UnderlineStyle underlineStyle () const
$method=|QTextCharFormat::UnderlineStyle|underlineStyle|

$prototype=VerticalAlignment verticalAlignment () const
$method=|QTextCharFormat::VerticalAlignment|verticalAlignment|

#pragma ENDDUMP
