/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDECORATION

CLASS QDecorationFactory

   DATA pointer
   DATA class_id INIT Class_Id_QDecorationFactory
   DATA self_destruction INIT .f.

   METHOD create
   METHOD keys
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDecorationFactory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDecorationFactory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDecorationFactory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDecorationFactory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDecorationFactory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDecorationFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDecorationFactory>

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
QDecoration * create ( const QString & key )
*/
HB_FUNC_STATIC( QDECORATIONFACTORY_CREATE )
{
  QString par1 = hb_parc(1);
  QDecoration * ptr = QDecorationFactory::create ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QDECORATION" );
}


/*
QStringList keys ()
*/
HB_FUNC_STATIC( QDECORATIONFACTORY_KEYS )
{
  QStringList strl = QDecorationFactory::keys (  );
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




#pragma ENDDUMP
