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
$internalConstructor=|new1|

/*
QTextFormat ( int type )
*/
$internalConstructor=|new2|int

/*
QTextFormat ( const QTextFormat & other )
*/
$internalConstructor=|new3|const QTextFormat &

//[1]QTextFormat ()
//[2]QTextFormat ( int type )
//[3]QTextFormat ( const QTextFormat & other )

HB_FUNC_STATIC( QTEXTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
  {
    QTextFormat_new3();
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
$method=|QBrush|background|

/*
bool boolProperty ( int propertyId ) const
*/
$method=|bool|boolProperty|int

/*
QBrush brushProperty ( int propertyId ) const
*/
$method=|QBrush|brushProperty|int

/*
void clearBackground ()
*/
$method=|void|clearBackground|

/*
void clearForeground ()
*/
$method=|void|clearForeground|

/*
void clearProperty ( int propertyId )
*/
$method=|void|clearProperty|int

/*
QColor colorProperty ( int propertyId ) const
*/
$method=|QColor|colorProperty|int

/*
qreal doubleProperty ( int propertyId ) const
*/
$method=|qreal|doubleProperty|int

/*
QBrush foreground () const
*/
$method=|QBrush|foreground|

/*
bool hasProperty ( int propertyId ) const
*/
$method=|bool|hasProperty|int

/*
int intProperty ( int propertyId ) const
*/
$method=|int|intProperty|int

/*
bool isBlockFormat () const
*/
$method=|bool|isBlockFormat|

/*
bool isCharFormat () const
*/
$method=|bool|isCharFormat|

/*
bool isFrameFormat () const
*/
$method=|bool|isFrameFormat|

/*
bool isImageFormat () const
*/
$method=|bool|isImageFormat|

/*
bool isListFormat () const
*/
$method=|bool|isListFormat|

/*
bool isTableCellFormat () const
*/
$method=|bool|isTableCellFormat|

/*
bool isTableFormat () const
*/
$method=|bool|isTableFormat|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
QTextLength lengthProperty ( int propertyId ) const
*/
$method=|QTextLength|lengthProperty|int

/*
QVector<QTextLength> lengthVectorProperty ( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHVECTORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QTextLength> list = obj->lengthVectorProperty ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTEXTLENGTH" );
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
$method=|void|merge|const QTextFormat &

/*
int objectIndex () const
*/
$method=|int|objectIndex|

/*
int objectType () const
*/
$method=|int|objectType|

/*
QPen penProperty ( int propertyId ) const
*/
$method=|QPen|penProperty|int

/*
QVariant property ( int propertyId ) const
*/
$method=|QVariant|property|int

/*
int propertyCount () const
*/
$method=|int|propertyCount|

/*
void setBackground ( const QBrush & brush )
*/
$method=|void|setBackground|const QBrush &

/*
void setForeground ( const QBrush & brush )
*/
$method=|void|setForeground|const QBrush &

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void setObjectIndex ( int index )
*/
$method=|void|setObjectIndex|int

/*
void setObjectType ( int type )
*/
$method=|void|setObjectType|int

/*
void setProperty ( int propertyId, const QVariant & value )
*/
$method=|void|setProperty,setProperty1|int,const QVariant &

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString stringProperty ( int propertyId ) const
*/
$method=|QString|stringProperty|int

/*
QTextBlockFormat toBlockFormat () const
*/
$method=|QTextBlockFormat|toBlockFormat|

/*
QTextCharFormat toCharFormat () const
*/
$method=|QTextCharFormat|toCharFormat|

/*
QTextFrameFormat toFrameFormat () const
*/
$method=|QTextFrameFormat|toFrameFormat|

/*
QTextImageFormat toImageFormat () const
*/
$method=|QTextImageFormat|toImageFormat|

/*
QTextListFormat toListFormat () const
*/
$method=|QTextListFormat|toListFormat|

/*
QTextTableCellFormat toTableCellFormat () const
*/
$method=|QTextTableCellFormat|toTableCellFormat|

/*
QTextTableFormat toTableFormat () const
*/
$method=|QTextTableFormat|toTableFormat|

/*
int type () const
*/
$method=|int|type|

$extraMethods

#pragma ENDDUMP
