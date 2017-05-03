/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDomProcessingInstruction INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomProcessingInstruction
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QDomProcessingInstruction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomProcessingInstruction>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDomProcessingInstruction ()
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW1 )
{
  QDomProcessingInstruction * o = NULL;
  o = new QDomProcessingInstruction (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomProcessingInstruction *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomProcessingInstruction ( const QDomProcessingInstruction & x )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW2 )
{
  QDomProcessingInstruction * o = NULL;
  QDomProcessingInstruction * par1 = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomProcessingInstruction ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomProcessingInstruction *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_DATA )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->data (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NODETYPE )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType (  ) );
  }
}


/*
void setData ( const QString & d )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_SETDATA )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString target () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_TARGET )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->target (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
