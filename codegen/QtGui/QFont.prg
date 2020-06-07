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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtCore/QVariant>

$prototype=QFont ()
$internalConstructor=|new1|

$prototype=QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
$internalConstructor=|new2|const QString &,int=-1,int=-1,bool=false

$prototype=QFont ( const QFont & font, QPaintDevice * pd )
$internalConstructor=|new3|const QFont &,QPaintDevice *

$prototype=QFont ( const QFont & font )
$internalConstructor=|new4|const QFont &

/*
[1]QFont ()
[2]QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
[3]QFont ( const QFont & font, QPaintDevice * pd )
[4]QFont ( const QFont & font )
*/

HB_FUNC_STATIC( QFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFont_new1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QFont_new2();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    QFont_new3();
  }
  else if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool bold() const

$prototype=Capitalization capitalization () const
$method=|QFont::Capitalization|capitalization|

$prototypeV2=QString defaultFamily() const

$prototypeV2=bool exactMatch() const

$prototypeV2=QString family() const

$prototypeV2=bool fixedPitch() const

$prototype=bool fromString ( const QString & descrip )
$method=|bool|fromString|const QString &

$prototype=bool isCopyOf ( const QFont & f ) const
$method=|bool|isCopyOf|const QFont &

$prototypeV2=bool italic() const

$prototypeV2=bool kerning() const

$prototypeV2=QString key() const

$prototypeV2=QString lastResortFamily() const

$prototypeV2=QString lastResortFont() const

$prototype=qreal letterSpacing () const
$method=|qreal|letterSpacing|

$prototype=SpacingType letterSpacingType () const
$method=|QFont::SpacingType|letterSpacingType|

$prototypeV2=bool overline() const

$prototypeV2=int pixelSize() const

$prototypeV2=int pointSize() const

$prototype=qreal pointSizeF () const
$method=|qreal|pointSizeF|

$prototypeV2=bool rawMode() const

$prototypeV2=QString rawName() const

$prototype=QFont resolve ( const QFont & other ) const
$method=|QFont|resolve|const QFont &

$prototype=void setBold ( bool enable )
$method=|void|setBold|bool

$prototype=void setCapitalization ( Capitalization caps )
$method=|void|setCapitalization|QFont::Capitalization

$prototype=void setFamily ( const QString & family )
$method=|void|setFamily|const QString &

$prototype=void setFixedPitch ( bool enable )
$method=|void|setFixedPitch|bool

$prototype=void setItalic ( bool enable )
$method=|void|setItalic|bool

$prototype=void setKerning ( bool enable )
$method=|void|setKerning|bool

$prototype=void setLetterSpacing ( SpacingType type, qreal spacing )
$method=|void|setLetterSpacing|QFont::SpacingType,qreal

$prototype=void setOverline ( bool enable )
$method=|void|setOverline|bool

$prototype=void setPixelSize ( int pixelSize )
$method=|void|setPixelSize|int

$prototype=void setPointSize ( int pointSize )
$method=|void|setPointSize|int

$prototype=void setPointSizeF ( qreal pointSize )
$method=|void|setPointSizeF|qreal

$prototype=void setRawMode ( bool enable )
$method=|void|setRawMode|bool

$prototype=void setRawName ( const QString & name )
$method=|void|setRawName|const QString &

$prototype=void setStretch ( int factor )
$method=|void|setStretch|int

$prototype=void setStrikeOut ( bool enable )
$method=|void|setStrikeOut|bool

$prototype=void setStyle ( Style style )
$method=|void|setStyle|QFont::Style

$prototype=void setStyleHint ( StyleHint hint, StyleStrategy strategy = PreferDefault )
$method=|void|setStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

$prototype=void setStyleStrategy ( StyleStrategy s )
$method=|void|setStyleStrategy|QFont::StyleStrategy

$prototype=void setUnderline ( bool enable )
$method=|void|setUnderline|bool

$prototype=void setWeight ( int weight )
$method=|void|setWeight|int

$prototype=void setWordSpacing ( qreal spacing )
$method=|void|setWordSpacing|qreal

$prototypeV2=int stretch() const

$prototypeV2=bool strikeOut() const

$prototype=Style style () const
$method=|QFont::Style|style|

$prototype=StyleHint styleHint () const
$method=|QFont::StyleHint|styleHint|

$prototype=StyleStrategy styleStrategy () const
$method=|QFont::StyleStrategy|styleStrategy|

$prototypeV2=QString toString() const

$prototypeV2=bool underline() const

$prototypeV2=int weight() const

$prototype=qreal wordSpacing () const
$method=|qreal|wordSpacing|

$prototype=static void insertSubstitution ( const QString & familyName, const QString & substituteName )
$staticMethod=|void|insertSubstitution|const QString &,const QString &

$prototype=static void insertSubstitutions ( const QString & familyName, const QStringList & substituteNames )
$staticMethod=|void|insertSubstitutions|const QString &,const QStringList &

$prototype=static void removeSubstitution ( const QString & familyName )
$staticMethod=|void|removeSubstitution|const QString &

$prototype=static QString substitute ( const QString & familyName )
$staticMethod=|QString|substitute|const QString &

$prototype=static QStringList substitutes ( const QString & familyName )
$staticMethod=|QStringList|substitutes|const QString &

$prototype=static QStringList substitutions ()
$staticMethod=|QStringList|substitutions|

$variantMethods

$extraMethods

#pragma ENDDUMP
