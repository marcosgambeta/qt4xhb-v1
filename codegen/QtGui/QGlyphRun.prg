$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QRAWFONT
#endif

CLASS QGlyphRun

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clear
   METHOD glyphIndexes
   METHOD overline
   METHOD positions
   METHOD rawFont
   METHOD setGlyphIndexes
   METHOD setOverline
   METHOD setPositions
   METHOD setRawFont
   METHOD setStrikeOut
   METHOD setUnderline
   METHOD strikeOut
   METHOD underline

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGlyphRun>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGlyphRun ()
*/
$constructor=|new1|

/*
QGlyphRun ( const QGlyphRun & other )
*/
$constructor=|new2|const QGlyphRun &

//[1]QGlyphRun ()
//[2]QGlyphRun ( const QGlyphRun & other )

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLYPHRUN_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    HB_FUNC_EXEC( QGLYPHRUN_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
QVector<quint32> glyphIndexes () const
*/
HB_FUNC_STATIC( QGLYPHRUN_GLYPHINDEXES )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<quint32> list = obj->glyphIndexes ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool overline () const
*/
$method=|bool|overline|

/*
QVector<QPointF> positions () const
*/
HB_FUNC_STATIC( QGLYPHRUN_POSITIONS )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QPointF> list = obj->positions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QRawFont rawFont () const
*/
$method=|QRawFont|rawFont|

/*
void setGlyphIndexes ( const QVector<quint32> & glyphIndexes )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETGLYPHINDEXES )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<quint32> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetNI(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setGlyphIndexes ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOverline ( bool overline )
*/
$method=|void|setOverline|bool

/*
void setPositions ( const QVector<QPointF> & positions )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETPOSITIONS )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QPointF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPositions ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRawFont ( const QRawFont & rawFont )
*/
$method=|void|setRawFont|const QRawFont &

/*
void setStrikeOut ( bool strikeOut )
*/
$method=|void|setStrikeOut|bool

/*
void setUnderline ( bool underline )
*/
$method=|void|setUnderline|bool

/*
bool strikeOut () const
*/
$method=|bool|strikeOut|

/*
bool underline () const
*/
$method=|bool|underline|

$extraMethods

#pragma ENDDUMP
