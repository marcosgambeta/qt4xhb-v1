/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QPEN
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTFRAMEFORMAT
REQUEST QTEXTIMAGEFORMAT
REQUEST QTEXTLENGTH
REQUEST QTEXTLISTFORMAT
REQUEST QTEXTTABLECELLFORMAT
REQUEST QTEXTTABLEFORMAT
REQUEST QVARIANT
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

PROCEDURE destroyObject() CLASS QTextFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextFormat>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QTEXTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTextFormat()
    */
    QTextFormat * obj = new QTextFormat();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QTextFormat( int type )
    */
    QTextFormat * obj = new QTextFormat( PINT(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
  {
    /*
    QTextFormat( const QTextFormat & other )
    */
    QTextFormat * obj = new QTextFormat( *PQTEXTFORMAT(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTFORMAT_DELETE )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QBrush background() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BACKGROUND )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->background() );
      Qt4xHb::createReturnClass(ptr, "QBRUSH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool boolProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BOOLPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->boolProperty( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QBrush brushProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BRUSHPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brushProperty( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QBRUSH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clearBackground()
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARBACKGROUND )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearBackground();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clearForeground()
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARFOREGROUND )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearForeground();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clearProperty( int propertyId )
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->clearProperty( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QColor colorProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_COLORPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QColor * ptr = new QColor( obj->colorProperty( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal doubleProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_DOUBLEPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->doubleProperty( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QBrush foreground() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_FOREGROUND )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->foreground() );
      Qt4xHb::createReturnClass(ptr, "QBRUSH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_HASPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->hasProperty( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int intProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_INTPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->intProperty( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isBlockFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISBLOCKFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBlockFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isCharFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISCHARFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCharFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isFrameFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISFRAMEFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFrameFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isImageFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISIMAGEFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isImageFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isListFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISLISTFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isListFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isTableCellFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISTABLECELLFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTableCellFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isTableFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISTABLEFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTableFormat() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISVALID )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::LayoutDirection layoutDirection() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LAYOUTDIRECTION )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->layoutDirection() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextLength lengthProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QTextLength * ptr = new QTextLength( obj->lengthProperty( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QTEXTLENGTH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVector<QTextLength> lengthVectorProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHVECTORPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVector<QTextLength> list = obj->lengthVectorProperty( PINT(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QTEXTLENGTH");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemPutPtr( NULL, new QTextLength( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemPutL( NULL, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QTEXTLENGTH", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void merge( const QTextFormat & other )
*/
HB_FUNC_STATIC( QTEXTFORMAT_MERGE )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
    {
#endif
      obj->merge( *PQTEXTFORMAT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int objectIndex() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_OBJECTINDEX )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->objectIndex() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int objectType() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_OBJECTTYPE )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->objectType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QPen penProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PENPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QPen * ptr = new QPen( obj->penProperty( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QPEN", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVariant property( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->property( PINT(1) ) );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int propertyCount() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PROPERTYCOUNT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->propertyCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setBackground( const QBrush & brush )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETBACKGROUND )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBackground( *PQBRUSH(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setForeground( const QBrush & brush )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETFOREGROUND )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setForeground( *PQBRUSH(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setLayoutDirection( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETLAYOUTDIRECTION )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLayoutDirection( ( Qt::LayoutDirection ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setObjectIndex( int index )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETOBJECTINDEX )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setObjectIndex( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setObjectType( int type )
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETOBJECTTYPE )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setObjectType( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
  {
    /*
    void setProperty( int propertyId, const QVariant & value )
    */
    QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->setProperty( PINT(1), *PQVARIANT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISARRAY(2) )
  {
    /*
    void setProperty( int propertyId, const QVector<QTextLength> & value )
    */
    QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QVector<QTextLength> par2;
      PHB_ITEM aList2 = hb_param( 2, HB_IT_ARRAY );
      int nLen2 = hb_arrayLen( aList2 );
      for( int i2 = 0; i2 < nLen2; i2++ )
      {
        par2 << *static_cast<QTextLength*>( hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) ) );
      }
      obj->setProperty( PINT(1), par2 );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString stringProperty( int propertyId ) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_STRINGPROPERTY )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->stringProperty( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextBlockFormat toBlockFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOBLOCKFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextBlockFormat * ptr = new QTextBlockFormat( obj->toBlockFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTBLOCKFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextCharFormat toCharFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOCHARFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextCharFormat * ptr = new QTextCharFormat( obj->toCharFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextFrameFormat toFrameFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOFRAMEFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextFrameFormat * ptr = new QTextFrameFormat( obj->toFrameFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTFRAMEFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextImageFormat toImageFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOIMAGEFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextImageFormat * ptr = new QTextImageFormat( obj->toImageFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTIMAGEFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextListFormat toListFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOLISTFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextListFormat * ptr = new QTextListFormat( obj->toListFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTLISTFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextTableCellFormat toTableCellFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOTABLECELLFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextTableCellFormat * ptr = new QTextTableCellFormat( obj->toTableCellFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTTABLECELLFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextTableFormat toTableFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOTABLEFORMAT )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextTableFormat * ptr = new QTextTableFormat( obj->toTableFormat() );
      Qt4xHb::createReturnClass(ptr, "QTEXTTABLEFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int type() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TYPE )
{
  QTextFormat * obj = static_cast<QTextFormat*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTFORMAT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QTEXTFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTFORMAT_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTEXTFORMAT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
