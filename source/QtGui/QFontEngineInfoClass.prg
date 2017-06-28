/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QFontEngineInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD family
   METHOD pixelSize
   METHOD setFamily
   METHOD setPixelSize
   METHOD setStyle
   METHOD setWeight
   METHOD setWritingSystems
   METHOD style
   METHOD weight
   METHOD writingSystems

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontEngineInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFontEngineInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontEngineInfo ()
*/
HB_FUNC_STATIC( QFONTENGINEINFO_NEW1 )
{
  QFontEngineInfo * o = new QFontEngineInfo ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QFontEngineInfo ( const QString & family )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_NEW2 )
{
  QFontEngineInfo * o = new QFontEngineInfo ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QFontEngineInfo ( const QFontEngineInfo & other )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_NEW3 )
{
  QFontEngineInfo * o = new QFontEngineInfo ( *PQFONTENGINEINFO(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QFontEngineInfo ()
//[2]QFontEngineInfo ( const QString & family )
//[3]QFontEngineInfo ( const QFontEngineInfo & other )

HB_FUNC_STATIC( QFONTENGINEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFONTENGINEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTENGINEINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTENGINEINFO(1) )
  {
    HB_FUNC_EXEC( QFONTENGINEINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTENGINEINFO_DELETE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString family () const
*/
HB_FUNC_STATIC( QFONTENGINEINFO_FAMILY )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->family () );
  }
}

/*
qreal pixelSize () const
*/
HB_FUNC_STATIC( QFONTENGINEINFO_PIXELSIZE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->pixelSize () );
  }
}

/*
void setFamily ( const QString & name )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_SETFAMILY )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFamily ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixelSize ( qreal size )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_SETPIXELSIZE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixelSize ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( QFont::Style style )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_SETSTYLE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle ( (QFont::Style) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWeight ( int weight )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_SETWEIGHT )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWeight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWritingSystems ( const QList<QFontDatabase::WritingSystem> & writingSystems )
*/
HB_FUNC_STATIC( QFONTENGINEINFO_SETWRITINGSYSTEMS )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QFontDatabase::WritingSystem> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetNI(aValues1, i1+1);
par1 << (QFontDatabase::WritingSystem) temp1;
}
    obj->setWritingSystems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont::Style style () const
*/
HB_FUNC_STATIC( QFONTENGINEINFO_STYLE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->style () );
  }
}

/*
int weight () const
*/
HB_FUNC_STATIC( QFONTENGINEINFO_WEIGHT )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->weight () );
  }
}

/*
QList<QFontDatabase::WritingSystem> writingSystems () const
*/
HB_FUNC_STATIC( QFONTENGINEINFO_WRITINGSYSTEMS )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->writingSystems ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

HB_FUNC_STATIC( QFONTENGINEINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QFONTENGINEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTENGINEINFO_NEWFROM );
}

HB_FUNC_STATIC( QFONTENGINEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTENGINEINFO_NEWFROM );
}

HB_FUNC_STATIC( QFONTENGINEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONTENGINEINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
