$header

#include "hbclass.ch"


CLASS QDomDocumentFragment INHERIT QDomNode

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
  QDomDocumentFragment * o = new QDomDocumentFragment ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomDocumentFragment ( const QDomDocumentFragment & x )
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW2 )
{
  QDomDocumentFragment * o = new QDomDocumentFragment ( *PQDOMDOCUMENTFRAGMENT(1) );
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
