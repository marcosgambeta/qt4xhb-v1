%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextCharFormat ()
$constructor=|new|

$deleteMethod

$prototypeV2=QString anchorHref() const

$prototype=QStringList anchorNames () const
$method=|QStringList|anchorNames|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QFont::Capitalization fontCapitalization () const
$method=|QFont::Capitalization|fontCapitalization|

$prototypeV2=QString fontFamily() const

$prototypeV2=bool fontFixedPitch() const

$prototype=QFont::HintingPreference fontHintingPreference () const
$method=|QFont::HintingPreference|fontHintingPreference|

$prototypeV2=bool fontItalic() const

$prototypeV2=bool fontKerning() const

$prototype=qreal fontLetterSpacing () const
$method=|qreal|fontLetterSpacing|

$prototypeV2=bool fontOverline() const

$prototype=qreal fontPointSize () const
$method=|qreal|fontPointSize|

$prototypeV2=bool fontStrikeOut() const

$prototype=QFont::StyleHint fontStyleHint () const
$method=|QFont::StyleHint|fontStyleHint|

$prototype=QFont::StyleStrategy fontStyleStrategy () const
$method=|QFont::StyleStrategy|fontStyleStrategy|

$prototypeV2=bool fontUnderline() const

$prototypeV2=int fontWeight() const

$prototype=qreal fontWordSpacing () const
$method=|qreal|fontWordSpacing|

$prototypeV2=bool isAnchor() const

$prototypeV2=bool isValid() const

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

$prototypeV2=QString toolTip() const

$prototype=QColor underlineColor () const
$method=|QColor|underlineColor|

$prototype=UnderlineStyle underlineStyle () const
$method=|QTextCharFormat::UnderlineStyle|underlineStyle|

$prototype=VerticalAlignment verticalAlignment () const
$method=|QTextCharFormat::VerticalAlignment|verticalAlignment|

#pragma ENDDUMP
