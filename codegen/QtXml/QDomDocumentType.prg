$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMNAMEDNODEMAP
#endif

CLASS QDomDocumentType INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD entities
   METHOD internalSubset
   METHOD name
   METHOD nodeType
   METHOD notations
   METHOD publicId
   METHOD systemId
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomDocumentType>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomDocumentType ()
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW1 )
{
  QDomDocumentType * o = new QDomDocumentType ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomDocumentType ( const QDomDocumentType & n )
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW2 )
{
  QDomDocumentType * o = new QDomDocumentType ( *PQDOMDOCUMENTTYPE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomDocumentType ()
//[2]QDomDocumentType ( const QDomDocumentType & n )

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTTYPE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTTYPE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNamedNodeMap entities () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_ENTITIES )
{
  QDomDocumentType * obj = (QDomDocumentType *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->entities () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}

/*
QString internalSubset () const
*/
$method=|QString|internalSubset|

/*
QString name () const
*/
$method=|QString|name|

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NODETYPE )
{
  QDomDocumentType * obj = (QDomDocumentType *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
QDomNamedNodeMap notations () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NOTATIONS )
{
  QDomDocumentType * obj = (QDomDocumentType *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->notations () );
    _qt4xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}

/*
QString publicId () const
*/
$method=|QString|publicId|

/*
QString systemId () const
*/
$method=|QString|systemId|

#pragma ENDDUMP
