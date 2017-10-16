$header

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

$destructor

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

$deleteMethod

/*
QString family () const
*/
$method=|QString|family|

/*
qreal pixelSize () const
*/
$method=|qreal|pixelSize|

/*
void setFamily ( const QString & name )
*/
$method=|void|setFamily|const QString &

/*
void setPixelSize ( qreal size )
*/
$method=|void|setPixelSize|qreal

/*
void setStyle ( QFont::Style style )
*/
$method=|void|setStyle|QFont::Style

/*
void setWeight ( int weight )
*/
$method=|void|setWeight|int

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
$method=|QFont::Style|style|

/*
int weight () const
*/
$method=|int|weight|

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

$extraMethods

#pragma ENDDUMP
