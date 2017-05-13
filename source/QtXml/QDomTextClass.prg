/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMTEXT
#endif

CLASS QDomText INHERIT QDomCharacterData

   DATA class_id INIT Class_Id_QDomText
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   METHOD splitText
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomText>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomText ()
*/
HB_FUNC_STATIC( QDOMTEXT_NEW1 )
{
  QDomText * o = NULL;
  o = new QDomText ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomText ( const QDomText & x )
*/
HB_FUNC_STATIC( QDOMTEXT_NEW2 )
{
  QDomText * o = NULL;
  QDomText * par1 = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomText ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomText ()
//[2]QDomText ( const QDomText & x )

HB_FUNC_STATIC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW2 );
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
  QDomText * obj = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
QDomText splitText ( int offset )
*/
HB_FUNC_STATIC( QDOMTEXT_SPLITTEXT )
{
  QDomText * obj = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDomText * ptr = new QDomText( obj->splitText ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMTEXT", true );
  }
}




#pragma ENDDUMP
