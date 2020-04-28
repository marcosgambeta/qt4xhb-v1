/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QDomText INHERIT QDomCharacterData

   METHOD new
   METHOD nodeType
   METHOD splitText

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXml/QDomText>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomText ()
*/
void QDomText_new1()
{
  QDomText * obj = new QDomText();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QDomText ( const QDomText & x )
*/
void QDomText_new2()
{
  QDomText * obj = new QDomText( *PQDOMTEXT(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QDomText ()
[2]QDomText ( const QDomText & x )
*/

HB_FUNC_STATIC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomText_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    QDomText_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMTEXT_NODETYPE )
{
  QDomText * obj = (QDomText *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDomText splitText ( int offset )
*/
HB_FUNC_STATIC( QDOMTEXT_SPLITTEXT )
{
  QDomText * obj = (QDomText *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDomText * ptr = new QDomText( obj->splitText( PINT(1) ) );
      Qt4xHb::createReturnClass( ptr, "QDOMTEXT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
