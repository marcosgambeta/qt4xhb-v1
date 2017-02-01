/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlErrorHandler>

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

HB_FUNC( QXMLERRORHANDLER_DELETE )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool error ( const QXmlParseException & exception ) = 0
*/
HB_FUNC( QXMLERRORHANDLER_ERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->error ( *par1 );
    hb_retl( b );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC( QXMLERRORHANDLER_ERRORSTRING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool fatalError ( const QXmlParseException & exception ) = 0
*/
HB_FUNC( QXMLERRORHANDLER_FATALERROR )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->fatalError ( *par1 );
    hb_retl( b );
  }
}


/*
virtual bool warning ( const QXmlParseException & exception ) = 0
*/
HB_FUNC( QXMLERRORHANDLER_WARNING )
{
  QXmlErrorHandler * obj = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->warning ( *par1 );
    hb_retl( b );
  }
}



