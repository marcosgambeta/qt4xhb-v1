/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFontEngineInfo>

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
QFontEngineInfo ()
*/
HB_FUNC( QFONTENGINEINFO_NEW1 )
{
  QFontEngineInfo * o = NULL;
  o = new QFontEngineInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontEngineInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFontEngineInfo ( const QString & family )
*/
HB_FUNC( QFONTENGINEINFO_NEW2 )
{
  QFontEngineInfo * o = NULL;
  QString par1 = hb_parc(1);
  o = new QFontEngineInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontEngineInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFontEngineInfo ( const QFontEngineInfo & other )
*/
HB_FUNC( QFONTENGINEINFO_NEW3 )
{
  QFontEngineInfo * o = NULL;
  QFontEngineInfo * par1 = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontEngineInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontEngineInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QFontEngineInfo ()
//[2]QFontEngineInfo ( const QString & family )
//[3]QFontEngineInfo ( const QFontEngineInfo & other )

HB_FUNC( QFONTENGINEINFO_NEW )
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

HB_FUNC( QFONTENGINEINFO_DELETE )
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
HB_FUNC( QFONTENGINEINFO_FAMILY )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->family (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
qreal pixelSize () const
*/
HB_FUNC( QFONTENGINEINFO_PIXELSIZE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->pixelSize (  );
    hb_retnd( r );
  }
}


/*
void setFamily ( const QString & name )
*/
HB_FUNC( QFONTENGINEINFO_SETFAMILY )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFamily ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixelSize ( qreal size )
*/
HB_FUNC( QFONTENGINEINFO_SETPIXELSIZE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPixelSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( QFont::Style style )
*/
HB_FUNC( QFONTENGINEINFO_SETSTYLE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle (  (QFont::Style) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWeight ( int weight )
*/
HB_FUNC( QFONTENGINEINFO_SETWEIGHT )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWritingSystems ( const QList<QFontDatabase::WritingSystem> & writingSystems )
*/
HB_FUNC( QFONTENGINEINFO_SETWRITINGSYSTEMS )
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
HB_FUNC( QFONTENGINEINFO_STYLE )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->style (  );
    hb_retni( i );
  }
}


/*
int weight () const
*/
HB_FUNC( QFONTENGINEINFO_WEIGHT )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->weight (  );
    hb_retni( i );
  }
}


/*
QList<QFontDatabase::WritingSystem> writingSystems () const
*/
HB_FUNC( QFONTENGINEINFO_WRITINGSYSTEMS )
{
  QFontEngineInfo * obj = (QFontEngineInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->writingSystems (  );
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



