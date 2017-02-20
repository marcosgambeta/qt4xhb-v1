/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlLexicalHandler

   DATA pointer
   DATA class_id INIT Class_Id_QXmlLexicalHandler
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endEntity
   METHOD errorString
   METHOD startCDATA
   METHOD startDTD
   METHOD startEntity
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlLexicalHandler
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlLexicalHandler
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlLexicalHandler
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlLexicalHandler
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlLexicalHandler
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlLexicalHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlLexicalHandler>

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

HB_FUNC_STATIC( QXMLLEXICALHANDLER_DELETE )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool comment ( const QString & ch ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_COMMENT )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->comment ( par1 ) );
  }
}


/*
virtual bool endCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->endCDATA (  ) );
  }
}


/*
virtual bool endDTD () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->endDTD (  ) );
  }
}


/*
virtual bool endEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ENDENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->endEntity ( par1 ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_ERRORSTRING )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool startCDATA () = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTCDATA )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->startCDATA (  ) );
  }
}


/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTDTD )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    hb_retl( obj->startDTD ( par1, par2, par3 ) );
  }
}


/*
virtual bool startEntity ( const QString & name ) = 0
*/
HB_FUNC_STATIC( QXMLLEXICALHANDLER_STARTENTITY )
{
  QXmlLexicalHandler * obj = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->startEntity ( par1 ) );
  }
}




#pragma ENDDUMP
