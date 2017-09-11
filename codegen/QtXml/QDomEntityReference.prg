$header

#include "hbclass.ch"

CLASS QDomEntityReference INHERIT QDomNode

   DATA self_destruction INIT .F.

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
$internalConstructor=|new1|

/*
QDomEntityReference ( const QDomEntityReference & x )
*/
$internalConstructor=|new2|const QDomEntityReference &

//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntityReference_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    QDomEntityReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType () const
*/
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
