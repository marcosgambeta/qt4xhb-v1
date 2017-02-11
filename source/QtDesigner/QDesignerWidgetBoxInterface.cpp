/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerWidgetBoxInterface>

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


HB_FUNC( QDESIGNERWIDGETBOXINTERFACE_DELETE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString fileName () const = 0
*/
HB_FUNC( QDESIGNERWIDGETBOXINTERFACE_FILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool load () = 0
*/
HB_FUNC( QDESIGNERWIDGETBOXINTERFACE_LOAD )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->load (  );
    hb_retl( b );
  }
}


/*
virtual bool save () = 0
*/
HB_FUNC( QDESIGNERWIDGETBOXINTERFACE_SAVE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->save (  );
    hb_retl( b );
  }
}


/*
virtual void setFileName ( const QString & fileName ) = 0
*/
HB_FUNC( QDESIGNERWIDGETBOXINTERFACE_SETFILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




