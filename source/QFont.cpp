/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFont>

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

#include <QStringList>

/*
QFont ()
*/
HB_FUNC( QFONT_NEW1 )
{
  QFont * o = NULL;
  o = new QFont (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
*/
HB_FUNC( QFONT_NEW2 )
{
  QFont * o = NULL;
  QString par1 = hb_parc(1);
  int par2 = ISNIL(2)? -1 : hb_parni(2);
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  bool par4 = ISNIL(4)? false : hb_parl(4);
  o = new QFont ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QFont ( const QFont & font, QPaintDevice * pd )
*/
HB_FUNC( QFONT_NEW3 )
{
  QFont * o = NULL;
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPaintDevice * par2 = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFont ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QFont ( const QFont & font )
*/
HB_FUNC( QFONT_NEW4 )
{
  QFont * o = NULL;
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFont ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QFont ()
//[2]QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
//[3]QFont ( const QFont & font, QPaintDevice * pd )
//[4]QFont ( const QFont & font )

HB_FUNC( QFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFONT_NEW1 );
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QFONT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QFONT_DELETE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool bold () const
*/
HB_FUNC( QFONT_BOLD )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->bold (  );
    hb_retl( b );
  }
}


/*
Capitalization capitalization () const
*/
HB_FUNC( QFONT_CAPITALIZATION )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->capitalization (  );
    hb_retni( i );
  }
}


/*
QString defaultFamily () const
*/
HB_FUNC( QFONT_DEFAULTFAMILY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->defaultFamily (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool exactMatch () const
*/
HB_FUNC( QFONT_EXACTMATCH )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->exactMatch (  );
    hb_retl( b );
  }
}


/*
QString family () const
*/
HB_FUNC( QFONT_FAMILY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->family (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool fixedPitch () const
*/
HB_FUNC( QFONT_FIXEDPITCH )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fixedPitch (  );
    hb_retl( b );
  }
}



/*
bool fromString ( const QString & descrip )
*/
HB_FUNC( QFONT_FROMSTRING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->fromString ( par1 );
    hb_retl( b );
  }
}



/*
bool isCopyOf ( const QFont & f ) const
*/
HB_FUNC( QFONT_ISCOPYOF )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isCopyOf ( *par1 );
    hb_retl( b );
  }
}


/*
bool italic () const
*/
HB_FUNC( QFONT_ITALIC )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->italic (  );
    hb_retl( b );
  }
}


/*
bool kerning () const
*/
HB_FUNC( QFONT_KERNING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->kerning (  );
    hb_retl( b );
  }
}


/*
QString key () const
*/
HB_FUNC( QFONT_KEY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->key (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString lastResortFamily () const
*/
HB_FUNC( QFONT_LASTRESORTFAMILY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->lastResortFamily (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString lastResortFont () const
*/
HB_FUNC( QFONT_LASTRESORTFONT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->lastResortFont (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
qreal letterSpacing () const
*/
HB_FUNC( QFONT_LETTERSPACING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->letterSpacing (  );
    hb_retnd( r );
  }
}


/*
SpacingType letterSpacingType () const
*/
HB_FUNC( QFONT_LETTERSPACINGTYPE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->letterSpacingType (  );
    hb_retni( i );
  }
}



/*
bool overline () const
*/
HB_FUNC( QFONT_OVERLINE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->overline (  );
    hb_retl( b );
  }
}


/*
int pixelSize () const
*/
HB_FUNC( QFONT_PIXELSIZE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->pixelSize (  );
    hb_retni( i );
  }
}


/*
int pointSize () const
*/
HB_FUNC( QFONT_POINTSIZE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->pointSize (  );
    hb_retni( i );
  }
}


/*
qreal pointSizeF () const
*/
HB_FUNC( QFONT_POINTSIZEF )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->pointSizeF (  );
    hb_retnd( r );
  }
}


/*
bool rawMode () const
*/
HB_FUNC( QFONT_RAWMODE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->rawMode (  );
    hb_retl( b );
  }
}


/*
QString rawName () const
*/
HB_FUNC( QFONT_RAWNAME )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->rawName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QFont resolve ( const QFont & other ) const
*/
HB_FUNC( QFONT_RESOLVE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QFont * ptr = new QFont( obj->resolve ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );  }
}


/*
void setBold ( bool enable )
*/
HB_FUNC( QFONT_SETBOLD )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setBold ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCapitalization ( Capitalization caps )
*/
HB_FUNC( QFONT_SETCAPITALIZATION )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapitalization (  (QFont::Capitalization) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFamily ( const QString & family )
*/
HB_FUNC( QFONT_SETFAMILY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFamily ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFixedPitch ( bool enable )
*/
HB_FUNC( QFONT_SETFIXEDPITCH )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFixedPitch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItalic ( bool enable )
*/
HB_FUNC( QFONT_SETITALIC )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setItalic ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKerning ( bool enable )
*/
HB_FUNC( QFONT_SETKERNING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setKerning ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLetterSpacing ( SpacingType type, qreal spacing )
*/
HB_FUNC( QFONT_SETLETTERSPACING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    qreal par2 = hb_parnd(2);
    obj->setLetterSpacing (  (QFont::SpacingType) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverline ( bool enable )
*/
HB_FUNC( QFONT_SETOVERLINE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setOverline ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixelSize ( int pixelSize )
*/
HB_FUNC( QFONT_SETPIXELSIZE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPixelSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPointSize ( int pointSize )
*/
HB_FUNC( QFONT_SETPOINTSIZE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPointSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPointSizeF ( qreal pointSize )
*/
HB_FUNC( QFONT_SETPOINTSIZEF )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPointSizeF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawMode ( bool enable )
*/
HB_FUNC( QFONT_SETRAWMODE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setRawMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawName ( const QString & name )
*/
HB_FUNC( QFONT_SETRAWNAME )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setRawName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStretch ( int factor )
*/
HB_FUNC( QFONT_SETSTRETCH )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStretch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrikeOut ( bool enable )
*/
HB_FUNC( QFONT_SETSTRIKEOUT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setStrikeOut ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( Style style )
*/
HB_FUNC( QFONT_SETSTYLE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle (  (QFont::Style) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyleHint ( StyleHint hint, StyleStrategy strategy = PreferDefault )
*/
HB_FUNC( QFONT_SETSTYLEHINT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QFont::PreferDefault : hb_parni(2);
    obj->setStyleHint (  (QFont::StyleHint) par1,  (QFont::StyleStrategy) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyleStrategy ( StyleStrategy s )
*/
HB_FUNC( QFONT_SETSTYLESTRATEGY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyleStrategy (  (QFont::StyleStrategy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUnderline ( bool enable )
*/
HB_FUNC( QFONT_SETUNDERLINE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setUnderline ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWeight ( int weight )
*/
HB_FUNC( QFONT_SETWEIGHT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordSpacing ( qreal spacing )
*/
HB_FUNC( QFONT_SETWORDSPACING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWordSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int stretch () const
*/
HB_FUNC( QFONT_STRETCH )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->stretch (  );
    hb_retni( i );
  }
}


/*
bool strikeOut () const
*/
HB_FUNC( QFONT_STRIKEOUT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->strikeOut (  );
    hb_retl( b );
  }
}


/*
Style style () const
*/
HB_FUNC( QFONT_STYLE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->style (  );
    hb_retni( i );
  }
}


/*
StyleHint styleHint () const
*/
HB_FUNC( QFONT_STYLEHINT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->styleHint (  );
    hb_retni( i );
  }
}


/*
StyleStrategy styleStrategy () const
*/
HB_FUNC( QFONT_STYLESTRATEGY )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->styleStrategy (  );
    hb_retni( i );
  }
}


/*
QString toString () const
*/
HB_FUNC( QFONT_TOSTRING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool underline () const
*/
HB_FUNC( QFONT_UNDERLINE )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->underline (  );
    hb_retl( b );
  }
}


/*
int weight () const
*/
HB_FUNC( QFONT_WEIGHT )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->weight (  );
    hb_retni( i );
  }
}


/*
qreal wordSpacing () const
*/
HB_FUNC( QFONT_WORDSPACING )
{
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->wordSpacing (  );
    hb_retnd( r );
  }
}



/*
void insertSubstitution ( const QString & familyName, const QString & substituteName )
*/
HB_FUNC( QFONT_INSERTSUBSTITUTION )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  QFont::insertSubstitution ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertSubstitutions ( const QString & familyName, const QStringList & substituteNames )
*/
HB_FUNC( QFONT_INSERTSUBSTITUTIONS )
{
  QString par1 = hb_parc(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
  QFont::insertSubstitutions ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeSubstitution ( const QString & familyName )
*/
HB_FUNC( QFONT_REMOVESUBSTITUTION )
{
  QString par1 = hb_parc(1);
  QFont::removeSubstitution ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString substitute ( const QString & familyName )
*/
HB_FUNC( QFONT_SUBSTITUTE )
{
  QString par1 = hb_parc(1);
  QString str1 = QFont::substitute ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList substitutes ( const QString & familyName )
*/
HB_FUNC( QFONT_SUBSTITUTES )
{
  QString par1 = hb_parc(1);
  QStringList strl = QFont::substitutes ( par1 );
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


/*
QStringList substitutions ()
*/
HB_FUNC( QFONT_SUBSTITUTIONS )
{
  QStringList strl = QFont::substitutions (  );
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



