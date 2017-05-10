/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlSimpleReader INHERIT QXmlReader

   DATA class_id INIT Class_Id_QXmlSimpleReader
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSimpleReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlSimpleReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlSimpleReader ()
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_NEW )
{
  QXmlSimpleReader * o = NULL;
  o = new QXmlSimpleReader (  );
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QXMLSIMPLEREADER_DELETE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool parse ( const QXmlInputSource * input, bool incremental )
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_PARSE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QXmlInputSource * par1 = (const QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->parse ( par1, PBOOL(2) ) );
  }
}


/*
virtual bool parseContinue ()
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_PARSECONTINUE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->parseContinue (  ) );
  }
}




#pragma ENDDUMP
