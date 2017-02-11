/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QResource>

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
QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
*/
HB_FUNC( QRESOURCE_NEW )
{
  QResource * o = NULL;
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  QLocale par2 = ISNIL(2)? QLocale() : *(QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QResource ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QResource *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC( QRESOURCE_DELETE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString absoluteFilePath () const
*/
HB_FUNC( QRESOURCE_ABSOLUTEFILEPATH )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->absoluteFilePath (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
const uchar * data () const
*/
HB_FUNC( QRESOURCE_DATA )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uchar * ptr = obj->data (  );
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );  }
}


/*
QString fileName () const
*/
HB_FUNC( QRESOURCE_FILENAME )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isCompressed () const
*/
HB_FUNC( QRESOURCE_ISCOMPRESSED )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCompressed (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QRESOURCE_ISVALID )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
QLocale locale () const
*/
HB_FUNC( QRESOURCE_LOCALE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );  }
}


/*
void setFileName ( const QString & file )
*/
HB_FUNC( QRESOURCE_SETFILENAME )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC( QRESOURCE_SETLOCALE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * par1 = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLocale ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qint64 size () const
*/
HB_FUNC( QRESOURCE_SIZE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}



/*
bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC( QRESOURCE_REGISTERRESOURCE )
{
  QString par1 = hb_parc(1);
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  bool b = QResource::registerResource ( par1, par2 );
  hb_retl( b );
}



/*
bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC( QRESOURCE_UNREGISTERRESOURCE )
{
  QString par1 = hb_parc(1);
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  bool b = QResource::unregisterResource ( par1, par2 );
  hb_retl( b );
}




