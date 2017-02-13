/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFILEINFO

CLASS QAbstractFileEngineIterator

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractFileEngineIterator
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QAbstractFileEngineIterator
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAbstractFileEngineIterator
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAbstractFileEngineIterator
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAbstractFileEngineIterator
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAbstractFileEngineIterator
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAbstractFileEngineIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractFileEngineIterator>

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


HB_FUNC( QABSTRACTFILEENGINEITERATOR_DELETE )
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
HB_FUNC( QABSTRACTFILEENGINEITERATOR_CURRENTFILEINFO )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfo * ptr = new QFileInfo( obj->currentFileInfo (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFILEINFO", true );  }
}


/*
virtual QString currentFileName () const = 0
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_CURRENTFILENAME )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->currentFileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString currentFilePath () const
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_CURRENTFILEPATH )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->currentFilePath (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QDir::Filters filters () const
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_FILTERS )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->filters (  );
    hb_retni( i );
  }
}


/*
virtual bool hasNext () const = 0
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_HASNEXT )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasNext (  );
    hb_retl( b );
  }
}


/*
QStringList nameFilters () const
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_NAMEFILTERS )
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
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QString next () = 0
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_NEXT )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->next (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString path () const
*/
HB_FUNC( QABSTRACTFILEENGINEITERATOR_PATH )
{
  QAbstractFileEngineIterator * obj = (QAbstractFileEngineIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->path (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





#pragma ENDDUMP
