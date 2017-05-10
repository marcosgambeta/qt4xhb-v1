/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
#endif

CLASS QAbstractFileEngineIterator

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractFileEngineIterator
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentFileInfo
   METHOD currentFileName
   METHOD currentFilePath
   METHOD filters
   METHOD hasNext
   METHOD nameFilters
   METHOD next
   METHOD path
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFileEngineIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractFileEngineIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_DELETE )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QFileInfo currentFileInfo () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_CURRENTFILEINFO )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfo * ptr = new QFileInfo( obj->currentFileInfo (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFILEINFO", true );
  }
}


/*
virtual QString currentFileName () const = 0
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_CURRENTFILENAME )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->currentFileName (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString currentFilePath () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_CURRENTFILEPATH )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->currentFilePath (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QDir::Filters filters () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_FILTERS )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->filters (  ) );
  }
}


/*
virtual bool hasNext () const = 0
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_HASNEXT )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasNext (  ) );
  }
}


/*
QStringList nameFilters () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_NAMEFILTERS )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->nameFilters (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QString next () = 0
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_NEXT )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->next (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_PATH )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->path (  );
    hb_retc( RQSTRING(str1) );
  }
}


HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_NEWFROM )
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

HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QABSTRACTFILEENGINEITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QABSTRACTFILEENGINEITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QABSTRACTFILEENGINEITERATOR_SETSELFDESTRUCTION )
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
