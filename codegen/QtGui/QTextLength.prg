$header

#include "hbclass.ch"

CLASS QTextLength

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD rawValue
   METHOD type
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextLength
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextLength>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextLength ()
*/
HB_FUNC_STATIC( QTEXTLENGTH_NEW1 )
{
  QTextLength * o = new QTextLength ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextLength ( Type type, qreal value )
*/
HB_FUNC_STATIC( QTEXTLENGTH_NEW2 )
{
  QTextLength * o = new QTextLength ( (QTextLength::Type) hb_parni(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTextLength ()
//[2]QTextLength ( Type type, qreal value )

HB_FUNC_STATIC( QTEXTLENGTH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTLENGTH_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTLENGTH_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTLENGTH_DELETE )
{
  QTextLength * obj = (QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal rawValue () const
*/
HB_FUNC_STATIC( QTEXTLENGTH_RAWVALUE )
{
  QTextLength * obj = (QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rawValue () );
  }
}

/*
Type type () const
*/
HB_FUNC_STATIC( QTEXTLENGTH_TYPE )
{
  QTextLength * obj = (QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

/*
qreal value ( qreal maximumLength ) const
*/
HB_FUNC_STATIC( QTEXTLENGTH_VALUE )
{
  QTextLength * obj = (QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->value ( PQREAL(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
