$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMELEMENT
#endif

CLASS QDomAttr INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD name
   METHOD nodeType
   METHOD ownerElement
   METHOD setValue
   METHOD specified
   METHOD value
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomAttr>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomAttr ()
*/
HB_FUNC_STATIC( QDOMATTR_NEW1 )
{
  QDomAttr * o = new QDomAttr ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomAttr ( const QDomAttr & x )
*/
HB_FUNC_STATIC( QDOMATTR_NEW2 )
{
  QDomAttr * o = new QDomAttr ( *PQDOMATTR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomAttr ()
//[2]QDomAttr ( const QDomAttr & x )

HB_FUNC_STATIC( QDOMATTR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMATTR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMATTR(1) )
  {
    HB_FUNC_EXEC( QDOMATTR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QString name () const
*/
HB_FUNC_STATIC( QDOMATTR_NAME )
{
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMATTR_NODETYPE )
{
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
QDomElement ownerElement () const
*/
HB_FUNC_STATIC( QDOMATTR_OWNERELEMENT )
{
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->ownerElement () );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
void setValue ( const QString & v )
*/
HB_FUNC_STATIC( QDOMATTR_SETVALUE )
{
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool specified () const
*/
HB_FUNC_STATIC( QDOMATTR_SPECIFIED )
{
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->specified () );
  }
}


/*
QString value () const
*/
HB_FUNC_STATIC( QDOMATTR_VALUE )
{
  QDomAttr * obj = (QDomAttr *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->value () );
  }
}




#pragma ENDDUMP
