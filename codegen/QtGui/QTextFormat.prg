$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QTEXTLENGTH
REQUEST QPEN
REQUEST QVARIANT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTFRAMEFORMAT
REQUEST QTEXTIMAGEFORMAT
REQUEST QTEXTLISTFORMAT
REQUEST QTEXTTABLECELLFORMAT
REQUEST QTEXTTABLEFORMAT
#endif

CLASS QTextFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD background
   METHOD boolProperty
   METHOD brushProperty
   METHOD clearBackground
   METHOD clearForeground
   METHOD clearProperty
   METHOD colorProperty
   METHOD doubleProperty
   METHOD foreground
   METHOD hasProperty
   METHOD intProperty
   METHOD isBlockFormat
   METHOD isCharFormat
   METHOD isFrameFormat
   METHOD isImageFormat
   METHOD isListFormat
   METHOD isTableCellFormat
   METHOD isTableFormat
   METHOD isValid
   METHOD layoutDirection
   METHOD lengthProperty
   METHOD lengthVectorProperty
   METHOD merge
   METHOD objectIndex
   METHOD objectType
   METHOD penProperty
   METHOD property
   METHOD propertyCount
   METHOD setBackground
   METHOD setForeground
   METHOD setLayoutDirection
   METHOD setObjectIndex
   METHOD setObjectType
   METHOD setProperty1
   METHOD setProperty2
   METHOD setProperty
   METHOD stringProperty
   METHOD toBlockFormat
   METHOD toCharFormat
   METHOD toFrameFormat
   METHOD toImageFormat
   METHOD toListFormat
   METHOD toTableCellFormat
   METHOD toTableFormat
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextFormat ()
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW1 )
{
  QTextFormat * o = new QTextFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextFormat ( int type )
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW2 )
{
  QTextFormat * o = new QTextFormat ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextFormat ( const QTextFormat & other )
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW3 )
{
  QTextFormat * o = new QTextFormat ( *PQTEXTFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTextFormat ()
//[2]QTextFormat ( int type )
//[3]QTextFormat ( const QTextFormat & other )

HB_FUNC_STATIC( QTEXTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QBrush background () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
bool boolProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BOOLPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->boolProperty ( PINT(1) ) );
  }
}

/*
QBrush brushProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BRUSHPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brushProperty ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
void clearBackground ()
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARBACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearBackground ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearForeground ()
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARFOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearForeground ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearProperty ( int propertyId )
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearProperty ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor colorProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_COLORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->colorProperty ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
qreal doubleProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_DOUBLEPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->doubleProperty ( PINT(1) ) );
  }
}

/*
QBrush foreground () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_FOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
bool hasProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_HASPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasProperty ( PINT(1) ) );
  }
}

/*
int intProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_INTPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->intProperty ( PINT(1) ) );
  }
}

/*
bool isBlockFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISBLOCKFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isBlockFormat () );
  }
}

/*
bool isCharFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISCHARFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCharFormat () );
  }
}

/*
bool isFrameFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISFRAMEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFrameFormat () );
  }
}

/*
bool isImageFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISIMAGEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isImageFormat () );
  }
}

/*
bool isListFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISLISTFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isListFormat () );
  }
}

/*
bool isTableCellFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISTABLECELLFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTableCellFormat () );
  }
}

/*
bool isTableFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISTABLEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTableFormat () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISVALID )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LAYOUTDIRECTION )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->layoutDirection () );
  }
}

/*
QTextLength lengthProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->lengthProperty ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}

/*
QVector<QTextLength> lengthVectorProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHVECTORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QTextLength> list = obj->lengthVectorProperty ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTLENGTH" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTLENGTH" );
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
        hb_itemPutPtr( pItem, (QTextLength *) new QTextLength ( list[i] ) );
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
void merge ( const QTextFormat & other )
*/
HB_FUNC_STATIC( QTEXTFORMAT_MERGE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->merge ( *PQTEXTFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int objectIndex () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_OBJECTINDEX )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->objectIndex () );
  }
}

/*
int objectType () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_OBJECTTYPE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->objectType () );
  }
}

/*
QPen penProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PENPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * ptr = new QPen( obj->penProperty ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );
  }
}

/*
QVariant property ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->property ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
int propertyCount () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PROPERTYCOUNT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->propertyCount () );
  }
}

/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETBACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForeground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETFOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForeground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETLAYOUTDIRECTION )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutDirection ( (Qt::LayoutDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setObjectIndex ( int index )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETOBJECTINDEX )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setObjectIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setObjectType ( int type )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETOBJECTTYPE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setObjectType ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProperty ( int propertyId, const QVariant & value )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY1 )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProperty ( PINT(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProperty ( int propertyId, const QVector<QTextLength> & value )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY2 )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QVector<QTextLength> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << *(QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
}
    obj->setProperty ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setProperty ( int propertyId, const QVariant & value )
//[2]void setProperty ( int propertyId, const QVector<QTextLength> & value )

HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_SETPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_SETPROPERTY2 );
  }
}

/*
QString stringProperty ( int propertyId ) const
*/
$method=|QString|stringProperty|int

/*
QTextBlockFormat toBlockFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOBLOCKFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->toBlockFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );
  }
}

/*
QTextCharFormat toCharFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOCHARFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->toCharFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}

/*
QTextFrameFormat toFrameFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOFRAMEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->toFrameFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAMEFORMAT" );
  }
}

/*
QTextImageFormat toImageFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOIMAGEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextImageFormat * ptr = new QTextImageFormat( obj->toImageFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTIMAGEFORMAT" );
  }
}

/*
QTextListFormat toListFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOLISTFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * ptr = new QTextListFormat( obj->toListFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLISTFORMAT" );
  }
}

/*
QTextTableCellFormat toTableCellFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOTABLECELLFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableCellFormat * ptr = new QTextTableCellFormat( obj->toTableCellFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELLFORMAT" );
  }
}

/*
QTextTableFormat toTableFormat () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOTABLEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableFormat * ptr = new QTextTableFormat( obj->toTableFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );
  }
}

/*
int type () const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TYPE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

$extraMethods

#pragma ENDDUMP
