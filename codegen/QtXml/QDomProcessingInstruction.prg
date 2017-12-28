$header

#include "hbclass.ch"

CLASS QDomProcessingInstruction INHERIT QDomNode

   METHOD new
   METHOD data
   METHOD nodeType
   METHOD setData
   METHOD target

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomProcessingInstruction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDomProcessingInstruction ()
$internalConstructor=|new1|

$prototype=QDomProcessingInstruction ( const QDomProcessingInstruction & x )
$internalConstructor=|new2|const QDomProcessingInstruction &

//[1]QDomProcessingInstruction ()
//[2]QDomProcessingInstruction ( const QDomProcessingInstruction & x )

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomProcessingInstruction_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMPROCESSINGINSTRUCTION(1) )
  {
    QDomProcessingInstruction_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString data () const
$method=|QString|data|

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=void setData ( const QString & d )
$method=|void|setData|const QString &

$prototype=QString target () const
$method=|QString|target|

#pragma ENDDUMP
