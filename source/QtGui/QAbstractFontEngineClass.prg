/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QAbstractFontEngine INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractFontEngine
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractFontEngine>

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
HB_FUNC_STATIC( QABSTRACTFONTENGINE_ADDGLYPHOUTLINESTOPATH )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint * par1 = (uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QAbstractFontEngine::FixedPoint * par3 = (QAbstractFontEngine::FixedPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainterPath * par4 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addGlyphOutlinesToPath ( par1, par2, par3, par4 );
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
    int i = obj->capabilities (  );
    hb_retni( i );
  }
}


/*
virtual bool convertStringToGlyphIndices ( const QChar * string, int length, uint * glyphs, int * numGlyphs, TextShapingFlags flags ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_CONVERTSTRINGTOGLYPHINDICES )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QChar * par1 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    uint * par3 = (uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4;
    int par5 = hb_parni(5);
    bool b = obj->convertStringToGlyphIndices ( par1, par2, par3, &par4,  (QAbstractFontEngine::TextShapingFlags) par5 );
    hb_retl( b );
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
    QVariant * ptr = new QVariant( obj->fontProperty (  (QAbstractFontEngine::FontProperty) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void getGlyphAdvances ( const uint * glyphs, int numGlyphs, Fixed * advances, TextShapingFlags flags ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_GETGLYPHADVANCES )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uint * par1 = (const uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QAbstractFontEngine::Fixed * par3 = (QAbstractFontEngine::Fixed *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = hb_parni(4);
    obj->getGlyphAdvances ( par1, par2, par3,  (QAbstractFontEngine::TextShapingFlags) par4 );
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
    uint par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    uchar * par5 = (uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->renderGlyph ( par1, par2, par3, par4, par5 );
    hb_retl( b );
  }
}




#pragma ENDDUMP
