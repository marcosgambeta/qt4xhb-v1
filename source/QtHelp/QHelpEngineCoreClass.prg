/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QHelpEngineCore INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addCustomFilter
   METHOD autoSaveFilter
   METHOD collectionFile
   METHOD copyCollectionFile
   METHOD currentFilter
   METHOD customFilters
   METHOD customValue
   METHOD documentationFileName
   METHOD error
   METHOD fileData
   METHOD files
   METHOD filterAttributes1
   METHOD filterAttributes2
   METHOD filterAttributes
   METHOD findFile
   METHOD registerDocumentation
   METHOD registeredDocumentations
   METHOD removeCustomFilter
   METHOD removeCustomValue
   METHOD setAutoSaveFilter
   METHOD setCollectionFile
   METHOD setCurrentFilter
   METHOD setCustomValue
   METHOD setupData
   METHOD unregisterDocumentation
   METHOD metaData
   METHOD namespaceName
   METHOD onCurrentFilterChanged
   METHOD onSetupFinished
   METHOD onSetupStarted
   METHOD onWarning
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpEngineCore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpEngineCore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QHelpEngineCore ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPENGINECORE_NEW )
{
  QHelpEngineCore * o = new QHelpEngineCore ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QHELPENGINECORE_DELETE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool addCustomFilter ( const QString & filterName, const QStringList & attributes )
*/
HB_FUNC_STATIC( QHELPENGINECORE_ADDCUSTOMFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->addCustomFilter ( PQSTRING(1), PQSTRINGLIST(2) ) );
  }
}


/*
bool autoSaveFilter () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_AUTOSAVEFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoSaveFilter () );
  }
}


/*
QString collectionFile () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_COLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->collectionFile () );
  }
}


/*
bool copyCollectionFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_COPYCOLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->copyCollectionFile ( PQSTRING(1) ) );
  }
}


/*
QString currentFilter () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CURRENTFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->currentFilter () );
  }
}


/*
QStringList customFilters () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CUSTOMFILTERS )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->customFilters ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QVariant customValue ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->customValue ( PQSTRING(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QString documentationFileName ( const QString & namespaceName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_DOCUMENTATIONFILENAME )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->documentationFileName ( PQSTRING(1) ) );
  }
}


/*
QString error () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_ERROR )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->error () );
  }
}


/*
QByteArray fileData ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILEDATA )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fileData ( *PQURL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QList<QUrl> files ( const QString namespaceName, const QStringList & filterAttributes, const QString & extensionFilter = QString() )
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILES )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QUrl> list = obj->files ( PQSTRING(1), PQSTRINGLIST(2), OPQSTRING(3,QString()) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QURL" );
    #else
    pDynSym = hb_dynsymFindName( "QURL" );
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
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



/*
QStringList filterAttributes () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES1 )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->filterAttributes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QStringList filterAttributes ( const QString & filterName ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES2 )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->filterAttributes ( PQSTRING(1) );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


//[1]QStringList filterAttributes () const
//[2]QStringList filterAttributes ( const QString & filterName ) const

HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHELPENGINECORE_FILTERATTRIBUTES1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHELPENGINECORE_FILTERATTRIBUTES2 );
  }
}

/*
QUrl findFile ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FINDFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->findFile ( *PQURL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}



/*
bool registerDocumentation ( const QString & documentationFileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REGISTERDOCUMENTATION )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->registerDocumentation ( PQSTRING(1) ) );
  }
}


/*
QStringList registeredDocumentations () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_REGISTEREDDOCUMENTATIONS )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->registeredDocumentations ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool removeCustomFilter ( const QString & filterName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REMOVECUSTOMFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->removeCustomFilter ( PQSTRING(1) ) );
  }
}


/*
bool removeCustomValue ( const QString & key )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REMOVECUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->removeCustomValue ( PQSTRING(1) ) );
  }
}


/*
void setAutoSaveFilter ( bool save )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETAUTOSAVEFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoSaveFilter ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCollectionFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCOLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCollectionFile ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentFilter ( const QString & filterName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCURRENTFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentFilter ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setCustomValue ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setCustomValue ( PQSTRING(1), *PQVARIANT(2) ) );
  }
}


/*
bool setupData ()
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETUPDATA )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setupData () );
  }
}


/*
bool unregisterDocumentation ( const QString & namespaceName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_UNREGISTERDOCUMENTATION )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unregisterDocumentation ( PQSTRING(1) ) );
  }
}



/*
QVariant metaData ( const QString & documentationFileName, const QString & name )
*/
HB_FUNC_STATIC( QHELPENGINECORE_METADATA )
{
  QVariant * ptr = new QVariant( QHelpEngineCore::metaData ( PQSTRING(1), PQSTRING(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}


/*
QString namespaceName ( const QString & documentationFileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_NAMESPACENAME )
{
  RQSTRING( QHelpEngineCore::namespaceName ( PQSTRING(1) ) );
}





#pragma ENDDUMP
