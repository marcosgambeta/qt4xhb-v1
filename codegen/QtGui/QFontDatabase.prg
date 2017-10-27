$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD bold
   METHOD families
   METHOD font
   METHOD isBitmapScalable
   METHOD isFixedPitch
   METHOD isScalable
   METHOD isSmoothlyScalable
   METHOD italic
   METHOD pointSizes
   METHOD smoothSizes
   METHOD styleString1
   METHOD styleString2
   METHOD styleString
   METHOD styles
   METHOD weight
   METHOD writingSystems1
   METHOD writingSystems2
   METHOD writingSystems
   METHOD addApplicationFont
   METHOD addApplicationFontFromData
   METHOD applicationFontFamilies
   METHOD removeAllApplicationFonts
   METHOD removeApplicationFont
   METHOD standardSizes
   METHOD supportsThreadedFontRendering
   METHOD writingSystemName
   METHOD writingSystemSample

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QFontDatabase ()
*/
HB_FUNC_STATIC( QFONTDATABASE_NEW )
{
  QFontDatabase * o = new QFontDatabase ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
bool bold ( const QString & family, const QString & style ) const
*/
$method=|bool|bold|const QString &,const QString &

/*
QStringList families ( WritingSystem writingSystem = Any ) const
*/
$method=|QStringList|families|QFontDatabase::WritingSystem=QFontDatabase::Any

/*
QFont font ( const QString & family, const QString & style, int pointSize ) const
*/
$method=|QFont|font|const QString &,const QString &,int

/*
bool isBitmapScalable ( const QString & family, const QString & style = QString() ) const
*/
$method=|bool|isBitmapScalable|const QString &,const QString &=QString()

/*
bool isFixedPitch ( const QString & family, const QString & style = QString() ) const
*/
$method=|bool|isFixedPitch|const QString &,const QString &=QString()

/*
bool isScalable ( const QString & family, const QString & style = QString() ) const
*/
$method=|bool|isScalable|const QString &,const QString &=QString()

/*
bool isSmoothlyScalable ( const QString & family, const QString & style = QString() ) const
*/
$method=|bool|isSmoothlyScalable|const QString &,const QString &=QString()

/*
bool italic ( const QString & family, const QString & style ) const
*/
$method=|bool|italic|const QString &,const QString &

/*
QList<int> pointSizes ( const QString & family, const QString & style = QString() )
*/
HB_FUNC_STATIC( QFONTDATABASE_POINTSIZES )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->pointSizes ( PQSTRING(1), OPQSTRING(2,QString()) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<int> smoothSizes ( const QString & family, const QString & style )
*/
HB_FUNC_STATIC( QFONTDATABASE_SMOOTHSIZES )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->smoothSizes ( PQSTRING(1), PQSTRING(2) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QString styleString ( const QFont & font )
*/
$method=|QString|styleString,styleString1|const QFont &

/*
QString styleString ( const QFontInfo & fontInfo )
*/
$method=|QString|styleString,styleString2|const QFontInfo &

//[1]QString styleString ( const QFont & font )
//[2]QString styleString ( const QFontInfo & fontInfo )

HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTDATABASE_STYLESTRING1 );
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    HB_FUNC_EXEC( QFONTDATABASE_STYLESTRING2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList styles ( const QString & family ) const
*/
$method=|QStringList|styles|const QString &

/*
int weight ( const QString & family, const QString & style ) const
*/
$method=|int|weight|const QString &,const QString &

/*
QList<WritingSystem> writingSystems () const
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMS1 )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

/*
QList<WritingSystem> writingSystems ( const QString & family ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMS2 )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->writingSystems ( PQSTRING(1) );
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

//[1]QList<WritingSystem> writingSystems () const
//[2]QList<WritingSystem> writingSystems ( const QString & family ) const

HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFONTDATABASE_WRITINGSYSTEMS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTDATABASE_WRITINGSYSTEMS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int addApplicationFont ( const QString & fileName )
*/
$staticMethod=|int|addApplicationFont|const QString &

/*
static int addApplicationFontFromData ( const QByteArray & fontData )
*/
$staticMethod=|int|addApplicationFontFromData|const QByteArray &

/*
static QStringList applicationFontFamilies ( int id )
*/
$staticMethod=|QStringList|applicationFontFamilies|int

/*
static bool removeAllApplicationFonts ()
*/
$staticMethod=|bool|removeAllApplicationFonts|

/*
static bool removeApplicationFont ( int id )
*/
$staticMethod=|bool|removeApplicationFont|int

/*
static QList<int> standardSizes ()
*/
HB_FUNC_STATIC( QFONTDATABASE_STANDARDSIZES )
{
  QList<int> list = QFontDatabase::standardSizes ();
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
static bool supportsThreadedFontRendering ()
*/
$staticMethod=|bool|supportsThreadedFontRendering|

/*
static QString writingSystemName ( WritingSystem writingSystem )
*/
$staticMethod=|QString|writingSystemName|QFontDatabase::WritingSystem

/*
static QString writingSystemSample ( WritingSystem writingSystem )
*/
$staticMethod=|QString|writingSystemSample|QFontDatabase::WritingSystem

$extraMethods

#pragma ENDDUMP
