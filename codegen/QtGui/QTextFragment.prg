$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QGLYPHRUN
#endif

CLASS QTextFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

/*
QTextFragment ()
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW1 )
{
  QTextFragment * o = new QTextFragment ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextFragment ( const QTextFragment & other )
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW2 )
{
  QTextFragment * o = new QTextFragment ( *PQTEXTFRAGMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTextFragment ()
//[2]QTextFragment ( const QTextFragment & other )

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTFRAGMENT_DELETE )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QTextCharFormat charFormat () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMAT )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}

/*
int charFormatIndex () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMATINDEX )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->charFormatIndex () );
  }
}

/*
bool contains ( int position ) const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CONTAINS )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PINT(1) ) );
  }
}

/*
QList<QGlyphRun> glyphRuns () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_GLYPHRUNS )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGLYPHRUN" );
    #else
    pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_ISVALID )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
int length () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_LENGTH )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->length () );
  }
}

/*
int position () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_POSITION )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->position () );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_TEXT )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

$extraMethods

#pragma ENDDUMP
