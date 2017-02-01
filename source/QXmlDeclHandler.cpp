/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlDeclHandler>

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

HB_FUNC( QXMLDECLHANDLER_DELETE )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value ) = 0
*/
HB_FUNC( QXMLDECLHANDLER_ATTRIBUTEDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    QString par4 = hb_parc(4);
    QString par5 = hb_parc(5);
    bool b = obj->attributeDecl ( par1, par2, par3, par4, par5 );
    hb_retl( b );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC( QXMLDECLHANDLER_ERRORSTRING )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC( QXMLDECLHANDLER_EXTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    bool b = obj->externalEntityDecl ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool internalEntityDecl ( const QString & name, const QString & value ) = 0
*/
HB_FUNC( QXMLDECLHANDLER_INTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    bool b = obj->internalEntityDecl ( par1, par2 );
    hb_retl( b );
  }
}



