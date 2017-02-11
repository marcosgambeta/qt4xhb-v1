/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QObject>

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

#include <QWidget>
#include <QVariant>

/*
QObject ( QObject * parent = 0 )
*/
HB_FUNC( QOBJECT_NEW )
{
  QObject * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QObject ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QOBJECT_DELETE )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool blockSignals ( bool block )
*/
HB_FUNC( QOBJECT_BLOCKSIGNALS )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    bool b = obj->blockSignals ( par1 );
    hb_retl( b );
  }
}


/*
const QObjectList & children () const
*/
HB_FUNC( QOBJECT_CHILDREN )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObjectList list = obj->children (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
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
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}





/*
void dumpObjectInfo ()
*/
HB_FUNC( QOBJECT_DUMPOBJECTINFO )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->dumpObjectInfo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void dumpObjectTree ()
*/
HB_FUNC( QOBJECT_DUMPOBJECTTREE )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->dumpObjectTree (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QByteArray> dynamicPropertyNames () const
*/
HB_FUNC( QOBJECT_DYNAMICPROPERTYNAMES )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->dynamicPropertyNames (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual bool event ( QEvent * e )
*/
HB_FUNC( QOBJECT_EVENT )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->event ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool eventFilter ( QObject * watched, QEvent * event )
*/
HB_FUNC( QOBJECT_EVENTFILTER )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->eventFilter ( par1, par2 );
    hb_retl( b );
  }
}


/*
T findChild ( const QString & name = QString() ) const
*/
HB_FUNC( QOBJECT_FINDCHILD )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : hb_parc(1);
    QObject * ptr = obj->findChild<QObject *> ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );  }
}



/*
QList<T> findChildren ( const QString & name = QString() ) const
*/
HB_FUNC( QOBJECT_FINDCHILDREN1 )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : hb_parc(1);
    QList<QObject *> list = obj->findChildren<QObject *> ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
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
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<T> findChildren ( const QRegExp & regExp ) const
*/
HB_FUNC( QOBJECT_FINDCHILDREN2 )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QObject *> list = obj->findChildren<QObject *> ( *par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
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
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


//[1]QList<T> findChildren ( const QString & name = QString() ) const
//[2]QList<T> findChildren ( const QRegExp & regExp ) const

HB_FUNC( QOBJECT_FINDCHILDREN )
{
  if( ISBETWEEN(0,1) && (ISCHAR(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QOBJECT_FINDCHILDREN1 );
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QOBJECT_FINDCHILDREN2 );
  }
}

/*
bool inherits ( const char * className ) const
*/
HB_FUNC( QOBJECT_INHERITS )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    bool b = obj->inherits (  (const char *) par1 );
    hb_retl( b );
  }
}


/*
void installEventFilter ( QObject * filterObj )
*/
HB_FUNC( QOBJECT_INSTALLEVENTFILTER )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->installEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isWidgetType () const
*/
HB_FUNC( QOBJECT_ISWIDGETTYPE )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isWidgetType (  );
    hb_retl( b );
  }
}


/*
void killTimer ( int id )
*/
HB_FUNC( QOBJECT_KILLTIMER )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->killTimer ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual const QMetaObject * metaObject () const
*/
HB_FUNC( QOBJECT_METAOBJECT )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->metaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );  }
}


/*
void moveToThread ( QThread * targetThread )
*/
HB_FUNC( QOBJECT_MOVETOTHREAD )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QThread * par1 = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->moveToThread ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString objectName () const
*/
HB_FUNC( QOBJECT_OBJECTNAME )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->objectName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QObject * parent () const
*/
HB_FUNC( QOBJECT_PARENT )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );  }
}


/*
QVariant property ( const char * name ) const
*/
HB_FUNC( QOBJECT_PROPERTY )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->property (  (const char *) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
void removeEventFilter ( QObject * obj )
*/
HB_FUNC( QOBJECT_REMOVEEVENTFILTER )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectName ( const QString & name )
*/
HB_FUNC( QOBJECT_SETOBJECTNAME )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setObjectName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParent ( QObject * parent )
*/
HB_FUNC( QOBJECT_SETPARENT )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setParent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setProperty ( const char * name, const QVariant & value )
*/
HB_FUNC( QOBJECT_SETPROPERTY )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->setProperty (  (const char *) par1, *par2 );
    hb_retl( b );
  }
}


/*
bool signalsBlocked () const
*/
HB_FUNC( QOBJECT_SIGNALSBLOCKED )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->signalsBlocked (  );
    hb_retl( b );
  }
}


/*
int startTimer ( int interval )
*/
HB_FUNC( QOBJECT_STARTTIMER )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->startTimer ( par1 );
    hb_retni( i );
  }
}


/*
QThread * thread () const
*/
HB_FUNC( QOBJECT_THREAD )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QThread * ptr = obj->thread (  );
    _qt4xhb_createReturnClass ( ptr, "QTHREAD" );  }
}


/*
void deleteLater ()
*/
HB_FUNC( QOBJECT_DELETELATER )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->deleteLater (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




