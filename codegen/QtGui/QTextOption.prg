$header

#include "hbclass.ch"

CLASS QTextOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD flags
   METHOD setAlignment
   METHOD setFlags
   METHOD setTabArray
   METHOD setTabStop
   METHOD setTextDirection
   METHOD setUseDesignMetrics
   METHOD setWrapMode
   METHOD tabArray
   METHOD tabStop
   METHOD textDirection
   METHOD useDesignMetrics
   METHOD wrapMode

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextOption>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextOption ()
*/
HB_FUNC_STATIC( QTEXTOPTION_NEW1 )
{
  QTextOption * o = new QTextOption ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextOption ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QTEXTOPTION_NEW2 )
{
  QTextOption * o = new QTextOption ( (Qt::Alignment) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextOption ( const QTextOption & other )
*/
HB_FUNC_STATIC( QTEXTOPTION_NEW3 )
{
  QTextOption * o = new QTextOption ( *PQTEXTOPTION(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTextOption ()
//[2]QTextOption ( Qt::Alignment alignment )
//[3]QTextOption ( const QTextOption & other )

HB_FUNC_STATIC( QTEXTOPTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTOPTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTOPTION_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
  {
    HB_FUNC_EXEC( QTEXTOPTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTOPTION_DELETE )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QTEXTOPTION_ALIGNMENT )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
Flags flags () const
*/
HB_FUNC_STATIC( QTEXTOPTION_FLAGS )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETALIGNMENT )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( Flags flags )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETFLAGS )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags ( (QTextOption::Flags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabArray ( QList<qreal> tabStops )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETTABARRAY )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<qreal> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetND(aValues1, i1+1);
par1 << temp1;
}
    obj->setTabArray ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabStop ( qreal tabStop )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETTABSTOP )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabStop ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETTEXTDIRECTION )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextDirection ( (Qt::LayoutDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUseDesignMetrics ( bool enable )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETUSEDESIGNMETRICS )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUseDesignMetrics ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapMode ( WrapMode mode )
*/
HB_FUNC_STATIC( QTEXTOPTION_SETWRAPMODE )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWrapMode ( (QTextOption::WrapMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<qreal> tabArray () const
*/
HB_FUNC_STATIC( QTEXTOPTION_TABARRAY )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<qreal> list = obj->tabArray ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutND( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
qreal tabStop () const
*/
HB_FUNC_STATIC( QTEXTOPTION_TABSTOP )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->tabStop () );
  }
}

/*
Qt::LayoutDirection textDirection () const
*/
HB_FUNC_STATIC( QTEXTOPTION_TEXTDIRECTION )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textDirection () );
  }
}

/*
bool useDesignMetrics () const
*/
HB_FUNC_STATIC( QTEXTOPTION_USEDESIGNMETRICS )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->useDesignMetrics () );
  }
}

/*
WrapMode wrapMode () const
*/
HB_FUNC_STATIC( QTEXTOPTION_WRAPMODE )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->wrapMode () );
  }
}

$extraMethods

#pragma ENDDUMP
