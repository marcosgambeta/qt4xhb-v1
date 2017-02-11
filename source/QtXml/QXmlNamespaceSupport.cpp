/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlNamespaceSupport>

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
QXmlNamespaceSupport ()
*/
HB_FUNC( QXMLNAMESPACESUPPORT_NEW )
{
  QXmlNamespaceSupport * o = NULL;
  o = new QXmlNamespaceSupport (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlNamespaceSupport *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC( QXMLNAMESPACESUPPORT_DELETE )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void popContext ()
*/
HB_FUNC( QXMLNAMESPACESUPPORT_POPCONTEXT )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->popContext (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString prefix ( const QString & uri ) const
*/
HB_FUNC( QXMLNAMESPACESUPPORT_PREFIX )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->prefix ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QStringList prefixes () const
*/
HB_FUNC( QXMLNAMESPACESUPPORT_PREFIXES1 )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->prefixes (  );
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
QStringList prefixes ( const QString & uri ) const
*/
HB_FUNC( QXMLNAMESPACESUPPORT_PREFIXES2 )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QStringList strl = obj->prefixes ( par1 );
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


//[1]QStringList prefixes () const
//[2]QStringList prefixes ( const QString & uri ) const

HB_FUNC( QXMLNAMESPACESUPPORT_PREFIXES )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_PREFIXES1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLNAMESPACESUPPORT_PREFIXES2 );
  }
}

/*
void processName ( const QString & qname, bool isAttribute, QString & nsuri, QString & localname ) const
*/
HB_FUNC( QXMLNAMESPACESUPPORT_PROCESSNAME )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2 = hb_parl(2);
    QString par3 = hb_parc(3);
    QString par4 = hb_parc(4);
    obj->processName ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void pushContext ()
*/
HB_FUNC( QXMLNAMESPACESUPPORT_PUSHCONTEXT )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->pushContext (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reset ()
*/
HB_FUNC( QXMLNAMESPACESUPPORT_RESET )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefix ( const QString & pre, const QString & uri )
*/
HB_FUNC( QXMLNAMESPACESUPPORT_SETPREFIX )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    obj->setPrefix ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void splitName ( const QString & qname, QString & prefix, QString & localname ) const
*/
HB_FUNC( QXMLNAMESPACESUPPORT_SPLITNAME )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    obj->splitName ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString uri ( const QString & prefix ) const
*/
HB_FUNC( QXMLNAMESPACESUPPORT_URI )
{
  QXmlNamespaceSupport * obj = (QXmlNamespaceSupport *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->uri ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



