/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDomCharacterData>

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
QDomCharacterData ()
*/
HB_FUNC( QDOMCHARACTERDATA_NEW1 )
{
  QDomCharacterData * o = NULL;
  o = new QDomCharacterData (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomCharacterData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomCharacterData ( const QDomCharacterData & x )
*/
HB_FUNC( QDOMCHARACTERDATA_NEW2 )
{
  QDomCharacterData * o = NULL;
  QDomCharacterData * par1 = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomCharacterData ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomCharacterData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomCharacterData ()
//[2]QDomCharacterData ( const QDomCharacterData & x )

HB_FUNC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCHARACTERDATA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    HB_FUNC_EXEC( QDOMCHARACTERDATA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
void appendData ( const QString & arg )
*/
HB_FUNC( QDOMCHARACTERDATA_APPENDDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->appendData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString data () const
*/
HB_FUNC( QDOMCHARACTERDATA_DATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->data (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void deleteData ( unsigned long offset, unsigned long count )
*/
HB_FUNC( QDOMCHARACTERDATA_DELETEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    unsigned long par2 = hb_parnl(2);
    obj->deleteData ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertData ( unsigned long offset, const QString & arg )
*/
HB_FUNC( QDOMCHARACTERDATA_INSERTDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    QString par2 = hb_parc(2);
    obj->insertData ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
uint length () const
*/
HB_FUNC( QDOMCHARACTERDATA_LENGTH )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint i = obj->length (  );
    hb_retni( i );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC( QDOMCHARACTERDATA_NODETYPE )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nodeType (  );
    hb_retni( i );
  }
}


/*
void replaceData ( unsigned long offset, unsigned long count, const QString & arg )
*/
HB_FUNC( QDOMCHARACTERDATA_REPLACEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    unsigned long par2 = hb_parnl(2);
    QString par3 = hb_parc(3);
    obj->replaceData ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setData ( const QString & v )
*/
HB_FUNC( QDOMCHARACTERDATA_SETDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString substringData ( unsigned long offset, unsigned long count )
*/
HB_FUNC( QDOMCHARACTERDATA_SUBSTRINGDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    unsigned long par1 = hb_parnl(1);
    unsigned long par2 = hb_parnl(2);
    QString str1 = obj->substringData ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



