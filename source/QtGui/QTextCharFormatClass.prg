/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFONT
REQUEST QPEN
REQUEST QCOLOR

CLASS QTextCharFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextCharFormat
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QTextCharFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextCharFormat>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextCharFormat ()
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_NEW )
{
  QTextCharFormat * o = NULL;
  o = new QTextCharFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextCharFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTEXTCHARFORMAT_DELETE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString anchorHref () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ANCHORHREF )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->anchorHref (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QStringList anchorNames () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ANCHORNAMES )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->anchorNames (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );  }
}


/*
QFont::Capitalization fontCapitalization () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTCAPITALIZATION )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fontCapitalization (  );
    hb_retni( i );
  }
}


/*
QString fontFamily () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTFAMILY )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fontFamily (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool fontFixedPitch () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTFIXEDPITCH )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontFixedPitch (  );
    hb_retl( b );
  }
}


/*
QFont::HintingPreference fontHintingPreference () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTHINTINGPREFERENCE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fontHintingPreference (  );
    hb_retni( i );
  }
}


/*
bool fontItalic () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTITALIC )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontItalic (  );
    hb_retl( b );
  }
}


/*
bool fontKerning () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTKERNING )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontKerning (  );
    hb_retl( b );
  }
}


/*
qreal fontLetterSpacing () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTLETTERSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->fontLetterSpacing (  );
    hb_retnd( r );
  }
}


/*
bool fontOverline () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTOVERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontOverline (  );
    hb_retl( b );
  }
}


/*
qreal fontPointSize () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTPOINTSIZE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->fontPointSize (  );
    hb_retnd( r );
  }
}


/*
bool fontStrikeOut () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTRIKEOUT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontStrikeOut (  );
    hb_retl( b );
  }
}


/*
QFont::StyleHint fontStyleHint () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTYLEHINT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fontStyleHint (  );
    hb_retni( i );
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
    int i = obj->fontStyleStrategy (  );
    hb_retni( i );
  }
}


/*
bool fontUnderline () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTUNDERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontUnderline (  );
    hb_retl( b );
  }
}


/*
int fontWeight () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTWEIGHT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fontWeight (  );
    hb_retni( i );
  }
}


/*
qreal fontWordSpacing () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTWORDSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->fontWordSpacing (  );
    hb_retnd( r );
  }
}


/*
bool isAnchor () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ISANCHOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isAnchor (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ISVALID )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
void setAnchor ( bool anchor )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAnchor ( par1 );
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
    QString par1 = hb_parc(1);
    obj->setAnchorHref ( par1 );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    obj->setAnchorNames ( par1 );
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
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFont ( *par1 );
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
    obj->setFontCapitalization (  (QFont::Capitalization) par1 );
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
    QString par1 = hb_parc(1);
    obj->setFontFamily ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setFontFixedPitch ( par1 );
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
    obj->setFontHintingPreference (  (QFont::HintingPreference) par1 );
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
    bool par1 = hb_parl(1);
    obj->setFontItalic ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setFontKerning ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontLetterSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTLETTERSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFontLetterSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontOverline ( bool overline )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTOVERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFontOverline ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontPointSize ( qreal size )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTPOINTSIZE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFontPointSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontStrikeOut ( bool strikeOut )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTRIKEOUT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFontStrikeOut ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontStyleHint ( QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTYLEHINT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QFont::PreferDefault : hb_parni(2);
    obj->setFontStyleHint (  (QFont::StyleHint) par1,  (QFont::StyleStrategy) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontStyleStrategy ( QFont::StyleStrategy strategy )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTYLESTRATEGY )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontStyleStrategy (  (QFont::StyleStrategy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontUnderline ( bool underline )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTUNDERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFontUnderline ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontWeight ( int weight )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTWEIGHT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontWeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontWordSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTWORDSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFontWordSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextOutline ( const QPen & pen )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETTEXTOUTLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * par1 = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTextOutline ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolTip ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETTOOLTIP )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUnderlineColor ( const QColor & color )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETUNDERLINECOLOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setUnderlineColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUnderlineStyle ( UnderlineStyle style )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETUNDERLINESTYLE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setUnderlineStyle (  (QTextCharFormat::UnderlineStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalAlignment ( VerticalAlignment alignment )
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETVERTICALALIGNMENT )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalAlignment (  (QTextCharFormat::VerticalAlignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPen textOutline () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_TEXTOUTLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * ptr = new QPen( obj->textOutline (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );  }
}


/*
QString toolTip () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_TOOLTIP )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toolTip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QColor underlineColor () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_UNDERLINECOLOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->underlineColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
UnderlineStyle underlineStyle () const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_UNDERLINESTYLE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->underlineStyle (  );
    hb_retni( i );
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
    int i = obj->verticalAlignment (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
