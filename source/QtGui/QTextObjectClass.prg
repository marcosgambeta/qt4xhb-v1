/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTDOCUMENT
REQUEST QTEXTFORMAT

CLASS QTextObject INHERIT QObject

   DATA class_id INIT Class_Id_QTextObject
   DATA self_destruction INIT .f.

   METHOD document
   METHOD format
   METHOD formatIndex
   METHOD objectIndex
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextObject>

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
QTextDocument * document () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_DOCUMENT )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );  }
}


/*
QTextFormat format () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMAT )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFORMAT" );  }
}


/*
int formatIndex () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMATINDEX )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->formatIndex (  );
    hb_retni( i );
  }
}


/*
int objectIndex () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_OBJECTINDEX )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->objectIndex (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
