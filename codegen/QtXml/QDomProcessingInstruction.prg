$header

#include "hbclass.ch"


CLASS QDomProcessingInstruction INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

/*
QDomProcessingInstruction ()
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW1 )
{
  QDomProcessingInstruction * o = new QDomProcessingInstruction ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomProcessingInstruction ( const QDomProcessingInstruction & x )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW2 )
{
  QDomProcessingInstruction * o = new QDomProcessingInstruction ( *PQDOMPROCESSINGINSTRUCTION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomProcessingInstruction ()
//[2]QDomProcessingInstruction ( const QDomProcessingInstruction & x )

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMPROCESSINGINSTRUCTION(1) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString data () const
*/
$method=|QString|data|

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NODETYPE )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}

/*
void setData ( const QString & d )
*/
$method=|void|setData|const QString &

/*
QString target () const
*/
$method=|QString|target|

#pragma ENDDUMP
