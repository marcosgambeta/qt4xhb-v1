$header

#include "hbclass.ch"


CLASS QDomCDATASection INHERIT QDomText

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   DESTRUCTOR destroyObject

END CLASS

$destructor

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
  QDomCDATASection * o = new QDomCDATASection ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomCDATASection ( const QDomCDATASection & x )
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW2 )
{
  QDomCDATASection * o = new QDomCDATASection ( *PQDOMCDATASECTION(1) );
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
    hb_retni( (int) obj->nodeType () );
  }
}




#pragma ENDDUMP
