$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAbstractFontEngine INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addGlyphOutlinesToPath
   METHOD capabilities
   METHOD convertStringToGlyphIndices
   METHOD fontProperty
   METHOD getGlyphAdvances
   METHOD renderGlyph

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFontEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractFontEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTFONTENGINE_DELETE )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual void addGlyphOutlinesToPath ( uint * glyphs, int numGlyphs, FixedPoint * positions, QPainterPath * path )
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_ADDGLYPHOUTLINESTOPATH ) // TODO: revisar e corrigir implementacao
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint * par1 = (uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QAbstractFontEngine::FixedPoint * par3 = (QAbstractFontEngine::FixedPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addGlyphOutlinesToPath ( par1, par2, par3, PQPAINTERPATH(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual Capabilities capabilities () const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_CAPABILITIES )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->capabilities () );
  }
}

/*
virtual bool convertStringToGlyphIndices ( const QChar * string, int length, uint * glyphs, int * numGlyphs, TextShapingFlags flags ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_CONVERTSTRINGTOGLYPHINDICES ) // TODO: revisar e corrigir implementacao
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QChar * par1 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    uint * par3 = (uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4;
    int par5 = hb_parni(5);
    RBOOL( obj->convertStringToGlyphIndices ( par1, par2, par3, &par4, (QAbstractFontEngine::TextShapingFlags) par5 ) );
    hb_storni( par4, 4 );
  }
}

/*
virtual QVariant fontProperty ( FontProperty property ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_FONTPROPERTY )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->fontProperty ( (QAbstractFontEngine::FontProperty) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual void getGlyphAdvances ( const uint * glyphs, int numGlyphs, Fixed * advances, TextShapingFlags flags ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_GETGLYPHADVANCES ) // TODO: revisar e corrigir implementacao
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uint * par1 = (const uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QAbstractFontEngine::Fixed * par3 = (QAbstractFontEngine::Fixed *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = hb_parni(4);
    obj->getGlyphAdvances ( par1, par2, par3, (QAbstractFontEngine::TextShapingFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool renderGlyph ( uint glyph, int depth, int bytesPerLine, int height, uchar * buffer )
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_RENDERGLYPH )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    uchar * par5 = (uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->renderGlyph ( PUINT(1), par2, par3, par4, par5 ) );
  }
}

#pragma ENDDUMP
