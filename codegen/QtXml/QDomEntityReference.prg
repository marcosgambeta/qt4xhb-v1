$header

#include "hbclass.ch"


CLASS QDomEntityReference INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomEntityReference>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomEntityReference ()
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW1 )
{
  QDomEntityReference * o = new QDomEntityReference ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomEntityReference ( const QDomEntityReference & x )
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW2 )
{
  QDomEntityReference * o = new QDomEntityReference ( *PQDOMENTITYREFERENCE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMENTITYREFERENCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    HB_FUNC_EXEC( QDOMENTITYREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NODETYPE )
{
  QDomEntityReference * obj = (QDomEntityReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}




#pragma ENDDUMP
