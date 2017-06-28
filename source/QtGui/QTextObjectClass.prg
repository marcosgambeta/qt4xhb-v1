/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
REQUEST QTEXTFORMAT
#endif

CLASS QTextObject INHERIT QObject

   DATA self_destruction INIT .F.

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

#include <QTextObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_DOCUMENT )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
QTextFormat format () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMAT )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
  }
}

/*
int formatIndex () const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMATINDEX )
{
  QTextObject * obj = (QTextObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->formatIndex () );
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
    RINT( obj->objectIndex () );
  }
}

#pragma ENDDUMP
