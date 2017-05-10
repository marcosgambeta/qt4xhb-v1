/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDomCDATASection INHERIT QDomText

   DATA class_id INIT Class_Id_QDomCDATASection
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomCDATASection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomCDATASection>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomCDATASection ()
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW1 )
{
  QDomCDATASection * o = NULL;
  o = new QDomCDATASection (  );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomCDATASection ( const QDomCDATASection & x )
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW2 )
{
  QDomCDATASection * o = NULL;
  QDomCDATASection * par1 = (QDomCDATASection *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomCDATASection ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomCDATASection ()
//[2]QDomCDATASection ( const QDomCDATASection & x )

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NODETYPE )
{
  QDomCDATASection * obj = (QDomCDATASection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType (  ) );
  }
}




#pragma ENDDUMP
