/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDomNamedNodeMap>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDomNamedNodeMap ()
*/
HB_FUNC( QDOMNAMEDNODEMAP_NEW1 )
{
  QDomNamedNodeMap * o = NULL;
  o = new QDomNamedNodeMap (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomNamedNodeMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomNamedNodeMap ( const QDomNamedNodeMap & n )
*/
HB_FUNC( QDOMNAMEDNODEMAP_NEW2 )
{
  QDomNamedNodeMap * o = NULL;
  QDomNamedNodeMap * par1 = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomNamedNodeMap ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomNamedNodeMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomNamedNodeMap ()
//[2]QDomNamedNodeMap ( const QDomNamedNodeMap & n )

HB_FUNC( QDOMNAMEDNODEMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNAMEDNODEMAP(1) )
  {
    HB_FUNC_EXEC( QDOMNAMEDNODEMAP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QDOMNAMEDNODEMAP_DELETE )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & name ) const
*/
HB_FUNC( QDOMNAMEDNODEMAP_CONTAINS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->contains ( par1 );
    hb_retl( b );
  }
}


/*
int count () const
*/
HB_FUNC( QDOMNAMEDNODEMAP_COUNT )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC( QDOMNAMEDNODEMAP_ISEMPTY )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}


/*
QDomNode item ( int index ) const
*/
HB_FUNC( QDOMNAMEDNODEMAP_ITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDomNode * ptr = new QDomNode( obj->item ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
uint length () const
*/
HB_FUNC( QDOMNAMEDNODEMAP_LENGTH )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint i = obj->length (  );
    hb_retni( i );
  }
}


/*
QDomNode namedItem ( const QString & name ) const
*/
HB_FUNC( QDOMNAMEDNODEMAP_NAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomNode * ptr = new QDomNode( obj->namedItem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
QDomNode namedItemNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC( QDOMNAMEDNODEMAP_NAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDomNode * ptr = new QDomNode( obj->namedItemNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
QDomNode removeNamedItem ( const QString & name )
*/
HB_FUNC( QDOMNAMEDNODEMAP_REMOVENAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomNode * ptr = new QDomNode( obj->removeNamedItem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
QDomNode removeNamedItemNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC( QDOMNAMEDNODEMAP_REMOVENAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDomNode * ptr = new QDomNode( obj->removeNamedItemNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
QDomNode setNamedItem ( const QDomNode & newNode )
*/
HB_FUNC( QDOMNAMEDNODEMAP_SETNAMEDITEM )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * par1 = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDomNode * ptr = new QDomNode( obj->setNamedItem ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
QDomNode setNamedItemNS ( const QDomNode & newNode )
*/
HB_FUNC( QDOMNAMEDNODEMAP_SETNAMEDITEMNS )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * par1 = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDomNode * ptr = new QDomNode( obj->setNamedItemNS ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
int size () const
*/
HB_FUNC( QDOMNAMEDNODEMAP_SIZE )
{
  QDomNamedNodeMap * obj = (QDomNamedNodeMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->size (  );
    hb_retni( i );
  }
}



