$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QPEN
REQUEST QCOLOR
#endif

CLASS QTextCharFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QFont::Capitalization fontCapitalization () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTCAPITALIZATION )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fontCapitalization () );
  }
}

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
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTHINTINGPREFERENCE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fontHintingPreference () );
  }
}

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
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTYLEHINT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fontStyleHint () );
  }
}

/*
QFont::StyleStrategy fontStyleStrategy () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTYLESTRATEGY )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fontStyleStrategy () );
  }
}

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
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAnchor ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAnchorHref ( const QString & value )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHORHREF )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAnchorHref ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAnchorNames ( const QStringList & names )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHORNAMES )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAnchorNames ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontCapitalization ( QFont::Capitalization capitalization )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTCAPITALIZATION )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontCapitalization ( (QFont::Capitalization) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontFamily ( const QString & family )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTFAMILY )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontFamily ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontFixedPitch ( bool fixedPitch )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTFIXEDPITCH )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontFixedPitch ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontHintingPreference ( QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTHINTINGPREFERENCE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontHintingPreference ( (QFont::HintingPreference) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontItalic ( bool italic )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTITALIC )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontItalic ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontKerning ( bool enable )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTKERNING )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontKerning ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QTEXTCHARFORMAT_UNDERLINESTYLE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->underlineStyle () );
  }
}

/*
VerticalAlignment verticalAlignment () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_VERTICALALIGNMENT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->verticalAlignment () );
  }
}

#pragma ENDDUMP
