/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDomDocumentFragment INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomDocumentFragment
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomDocumentFragment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomDocumentFragment ()
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW1 )
{
  QDomDocumentFragment * o = NULL;
  o = new QDomDocumentFragment ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomDocumentFragment ( const QDomDocumentFragment & x )
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW2 )
{
  QDomDocumentFragment * o = NULL;
  QDomDocumentFragment * par1 = (QDomDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomDocumentFragment ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomDocumentFragment ()
//[2]QDomDocumentFragment ( const QDomDocumentFragment & x )

HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTFRAGMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NODETYPE )
{
  QDomDocumentFragment * obj = (QDomDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}




#pragma ENDDUMP
