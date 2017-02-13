/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


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

CLASS QTextFormat

   DATA pointer
   DATA class_id INIT Class_Id_QTextFormat
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QTextFormat
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextFormat
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextFormat
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextFormat
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextFormat
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextFormat>

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
QTextFormat ()
*/
HB_FUNC( QTEXTFORMAT_NEW1 )
{
  QTextFormat * o = NULL;
  o = new QTextFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextFormat ( int type )
*/
HB_FUNC( QTEXTFORMAT_NEW2 )
{
  QTextFormat * o = NULL;
  int par1 = hb_parni(1);
  o = new QTextFormat ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextFormat ( const QTextFormat & other )
*/
HB_FUNC( QTEXTFORMAT_NEW3 )
{
  QTextFormat * o = NULL;
  QTextFormat * par1 = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTextFormat ()
//[2]QTextFormat ( int type )
//[3]QTextFormat ( const QTextFormat & other )

HB_FUNC( QTEXTFORMAT_NEW )
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

HB_FUNC( QTEXTFORMAT_DELETE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QBrush background () const
*/
HB_FUNC( QTEXTFORMAT_BACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );  }
}


/*
bool boolProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_BOOLPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->boolProperty ( par1 );
    hb_retl( b );
  }
}


/*
QBrush brushProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_BRUSHPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QBrush * ptr = new QBrush( obj->brushProperty ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );  }
}


/*
void clearBackground ()
*/
HB_FUNC( QTEXTFORMAT_CLEARBACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearBackground (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearForeground ()
*/
HB_FUNC( QTEXTFORMAT_CLEARFOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearForeground (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearProperty ( int propertyId )
*/
HB_FUNC( QTEXTFORMAT_CLEARPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->clearProperty ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QColor colorProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_COLORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor * ptr = new QColor( obj->colorProperty ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
qreal doubleProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_DOUBLEPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    qreal r = obj->doubleProperty ( par1 );
    hb_retnd( r );
  }
}


/*
QBrush foreground () const
*/
HB_FUNC( QTEXTFORMAT_FOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );  }
}


/*
bool hasProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_HASPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->hasProperty ( par1 );
    hb_retl( b );
  }
}


/*
int intProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_INTPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->intProperty ( par1 );
    hb_retni( i );
  }
}


/*
bool isBlockFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISBLOCKFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isBlockFormat (  );
    hb_retl( b );
  }
}


/*
bool isCharFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISCHARFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCharFormat (  );
    hb_retl( b );
  }
}


/*
bool isFrameFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISFRAMEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFrameFormat (  );
    hb_retl( b );
  }
}


/*
bool isImageFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISIMAGEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isImageFormat (  );
    hb_retl( b );
  }
}


/*
bool isListFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISLISTFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isListFormat (  );
    hb_retl( b );
  }
}


/*
bool isTableCellFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISTABLECELLFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isTableCellFormat (  );
    hb_retl( b );
  }
}


/*
bool isTableFormat () const
*/
HB_FUNC( QTEXTFORMAT_ISTABLEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isTableFormat (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QTEXTFORMAT_ISVALID )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC( QTEXTFORMAT_LAYOUTDIRECTION )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->layoutDirection (  );
    hb_retni( i );
  }
}


/*
QTextLength lengthProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_LENGTHPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextLength * ptr = new QTextLength( obj->lengthProperty ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLENGTH" );  }
}


/*
QVector<QTextLength> lengthVectorProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_LENGTHVECTORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVector<QTextLength> list = obj->lengthVectorProperty ( par1 );
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
HB_FUNC( QTEXTFORMAT_MERGE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFormat * par1 = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->merge ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int objectIndex () const
*/
HB_FUNC( QTEXTFORMAT_OBJECTINDEX )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->objectIndex (  );
    hb_retni( i );
  }
}


/*
int objectType () const
*/
HB_FUNC( QTEXTFORMAT_OBJECTTYPE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->objectType (  );
    hb_retni( i );
  }
}


/*
QPen penProperty ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_PENPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPen * ptr = new QPen( obj->penProperty ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );  }
}



/*
QVariant property ( int propertyId ) const
*/
HB_FUNC( QTEXTFORMAT_PROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->property ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
int propertyCount () const
*/
HB_FUNC( QTEXTFORMAT_PROPERTYCOUNT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyCount (  );
    hb_retni( i );
  }
}


/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC( QTEXTFORMAT_SETBACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForeground ( const QBrush & brush )
*/
HB_FUNC( QTEXTFORMAT_SETFOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setForeground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC( QTEXTFORMAT_SETLAYOUTDIRECTION )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutDirection (  (Qt::LayoutDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectIndex ( int index )
*/
HB_FUNC( QTEXTFORMAT_SETOBJECTINDEX )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setObjectIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectType ( int type )
*/
HB_FUNC( QTEXTFORMAT_SETOBJECTTYPE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setObjectType ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProperty ( int propertyId, const QVariant & value )
*/
HB_FUNC( QTEXTFORMAT_SETPROPERTY1 )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProperty ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProperty ( int propertyId, const QVector<QTextLength> & value )
*/
HB_FUNC( QTEXTFORMAT_SETPROPERTY2 )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QVector<QTextLength> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << *(QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
}
    obj->setProperty ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setProperty ( int propertyId, const QVariant & value )
//[2]void setProperty ( int propertyId, const QVector<QTextLength> & value )

HB_FUNC( QTEXTFORMAT_SETPROPERTY )
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
HB_FUNC( QTEXTFORMAT_STRINGPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->stringProperty ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QTextBlockFormat toBlockFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOBLOCKFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->toBlockFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );  }
}


/*
QTextCharFormat toCharFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOCHARFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->toCharFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
QTextFrameFormat toFrameFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOFRAMEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->toFrameFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAMEFORMAT" );  }
}


/*
QTextImageFormat toImageFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOIMAGEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextImageFormat * ptr = new QTextImageFormat( obj->toImageFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTIMAGEFORMAT" );  }
}


/*
QTextListFormat toListFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOLISTFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * ptr = new QTextListFormat( obj->toListFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLISTFORMAT" );  }
}


/*
QTextTableCellFormat toTableCellFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOTABLECELLFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableCellFormat * ptr = new QTextTableCellFormat( obj->toTableCellFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELLFORMAT" );  }
}


/*
QTextTableFormat toTableFormat () const
*/
HB_FUNC( QTEXTFORMAT_TOTABLEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableFormat * ptr = new QTextTableFormat( obj->toTableFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );  }
}


/*
int type () const
*/
HB_FUNC( QTEXTFORMAT_TYPE )
{
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
