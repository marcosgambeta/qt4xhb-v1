$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QGLYPHRUN
#endif

CLASS QTextFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD charFormat
   METHOD charFormatIndex
   METHOD contains
   METHOD glyphRuns
   METHOD isValid
   METHOD length
   METHOD position
   METHOD text

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextFragment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextFragment ()
$internalConstructor=|new1|

$prototype=QTextFragment ( const QTextFragment & other )
$internalConstructor=|new2|const QTextFragment &

//[1]QTextFragment ()
//[2]QTextFragment ( const QTextFragment & other )

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    QTextFragment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QTextCharFormat charFormat () const
$method=|QTextCharFormat|charFormat|

$prototype=int charFormatIndex () const
$method=|int|charFormatIndex|

$prototype=bool contains ( int position ) const
$method=|bool|contains|int

$prototype=QList<QGlyphRun> glyphRuns () const
HB_FUNC_STATIC( QTEXTFRAGMENT_GLYPHRUNS )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGlyphRun *) new QGlyphRun ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int length () const
$method=|int|length|

$prototype=int position () const
$method=|int|position|

$prototype=QString text () const
$method=|QString|text|

$extraMethods

#pragma ENDDUMP
