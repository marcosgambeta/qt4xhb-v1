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

$prototypeV2=QStringList anchorNames() const

$prototypeV2=QFont font() const

$prototypeV2=QFont::Capitalization fontCapitalization() const

$prototypeV2=QString fontFamily() const

$prototypeV2=bool fontFixedPitch() const

$prototypeV2=QFont::HintingPreference fontHintingPreference() const

$prototypeV2=bool fontItalic() const

$prototypeV2=bool fontKerning() const

$prototypeV2=qreal fontLetterSpacing() const

$prototypeV2=bool fontOverline() const

$prototypeV2=qreal fontPointSize() const

$prototypeV2=bool fontStrikeOut() const

$prototypeV2=QFont::StyleHint fontStyleHint() const

$prototypeV2=QFont::StyleStrategy fontStyleStrategy() const

$prototypeV2=bool fontUnderline() const

$prototypeV2=int fontWeight() const

$prototypeV2=qreal fontWordSpacing() const

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

$prototypeV2=QPen textOutline() const

$prototypeV2=QString toolTip() const

$prototypeV2=QColor underlineColor() const

$prototypeV2=QTextCharFormat::UnderlineStyle underlineStyle() const

$prototypeV2=QTextCharFormat::VerticalAlignment verticalAlignment() const

#pragma ENDDUMP
