/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDOMTEXT

CLASS QDomText INHERIT QDomCharacterData

   DATA class_id INIT Class_Id_QDomText
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   METHOD splitText
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDomText>

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
QDomText ()
*/
HB_FUNC( QDOMTEXT_NEW1 )
{
  QDomText * o = NULL;
  o = new QDomText (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomText ( const QDomText & x )
*/
HB_FUNC( QDOMTEXT_NEW2 )
{
  QDomText * o = NULL;
  QDomText * par1 = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomText ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomText ()
//[2]QDomText ( const QDomText & x )

HB_FUNC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC( QDOMTEXT_NODETYPE )
{
  QDomText * obj = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nodeType (  );
    hb_retni( i );
  }
}


/*
QDomText splitText ( int offset )
*/
HB_FUNC( QDOMTEXT_SPLITTEXT )
{
  QDomText * obj = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDomText * ptr = new QDomText( obj->splitText ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMTEXT", true );  }
}




#pragma ENDDUMP
