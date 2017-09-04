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

PROCEDURE destroyObject () CLASS QFontDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
HB_FUNC_STATIC( QFONTDATABASE_BOLD )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bold ( PQSTRING(1), PQSTRING(2) ) );
  }
}

/*
QStringList families ( WritingSystem writingSystem = Any ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_FAMILIES )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QFontDatabase::Any : hb_parni(1);
    RQSTRINGLIST( obj->families ( (QFontDatabase::WritingSystem) par1 ) );
  }
}

/*
QFont font ( const QString & family, const QString & style, int pointSize ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_FONT )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    QFont * ptr = new QFont( obj->font ( PQSTRING(1), PQSTRING(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
bool isBitmapScalable ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISBITMAPSCALABLE )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isBitmapScalable ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
}

/*
bool isFixedPitch ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISFIXEDPITCH )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFixedPitch ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
}

/*
bool isScalable ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISSCALABLE )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isScalable ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
}

/*
bool isSmoothlyScalable ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISSMOOTHLYSCALABLE )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSmoothlyScalable ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
}

/*
bool italic ( const QString & family, const QString & style ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ITALIC )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->italic ( PQSTRING(1), PQSTRING(2) ) );
  }
}

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
HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING1 )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->styleString ( *PQFONT(1) ) );
  }
}

/*
QString styleString ( const QFontInfo & fontInfo )
*/
HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING2 )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->styleString ( *PQFONTINFO(1) ) );
  }
}

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
}

/*
QStringList styles ( const QString & family ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_STYLES )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->styles ( PQSTRING(1) ) );
  }
}

/*
int weight ( const QString & family, const QString & style ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_WEIGHT )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->weight ( PQSTRING(1), PQSTRING(2) ) );
  }
}

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
}

/*
int addApplicationFont ( const QString & fileName )
*/
HB_FUNC_STATIC( QFONTDATABASE_ADDAPPLICATIONFONT )
{
  RINT( QFontDatabase::addApplicationFont ( PQSTRING(1) ) );
}

/*
int addApplicationFontFromData ( const QByteArray & fontData )
*/
HB_FUNC_STATIC( QFONTDATABASE_ADDAPPLICATIONFONTFROMDATA )
{
  RINT( QFontDatabase::addApplicationFontFromData ( *PQBYTEARRAY(1) ) );
}

/*
QStringList applicationFontFamilies ( int id )
*/
HB_FUNC_STATIC( QFONTDATABASE_APPLICATIONFONTFAMILIES )
{
  RQSTRINGLIST( QFontDatabase::applicationFontFamilies ( PINT(1) ) );
}

/*
bool removeAllApplicationFonts ()
*/
HB_FUNC_STATIC( QFONTDATABASE_REMOVEALLAPPLICATIONFONTS )
{
  RBOOL( QFontDatabase::removeAllApplicationFonts () );
}

/*
bool removeApplicationFont ( int id )
*/
HB_FUNC_STATIC( QFONTDATABASE_REMOVEAPPLICATIONFONT )
{
  RBOOL( QFontDatabase::removeApplicationFont ( PINT(1) ) );
}

/*
QList<int> standardSizes ()
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
bool supportsThreadedFontRendering ()
*/
HB_FUNC_STATIC( QFONTDATABASE_SUPPORTSTHREADEDFONTRENDERING )
{
  RBOOL( QFontDatabase::supportsThreadedFontRendering () );
}

/*
QString writingSystemName ( WritingSystem writingSystem )
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMNAME )
{
  RQSTRING( QFontDatabase::writingSystemName ( (QFontDatabase::WritingSystem) hb_parni(1) ) );
}

/*
QString writingSystemSample ( WritingSystem writingSystem )
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMSAMPLE )
{
  RQSTRING( QFontDatabase::writingSystemSample ( (QFontDatabase::WritingSystem) hb_parni(1) ) );
}

$extraMethods

#pragma ENDDUMP
