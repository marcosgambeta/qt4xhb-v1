$header

#include "hbclass.ch"


CLASS QXmlParseException

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD columnNumber
   METHOD lineNumber
   METHOD message
   METHOD publicId
   METHOD systemId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlParseException>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW1 )
{
  QXmlParseException * o = new QXmlParseException ( OPQSTRING(1,QString()), OPINT(2,-1), OPINT(3,-1), OPQSTRING(4,QString()), OPQSTRING(5,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlParseException ( const QXmlParseException & other )
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW2 )
{
  QXmlParseException * o = new QXmlParseException ( *PQXMLPARSEEXCEPTION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
//[2]QXmlParseException ( const QXmlParseException & other )

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW )
{
  if( ISBETWEEN(0,5) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
  {
    HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int columnNumber () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_COLUMNNUMBER )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnNumber () );
  }
}


/*
int lineNumber () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_LINENUMBER )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}

/*
QString message () const
*/
$method=|QString|message|

/*
QString publicId () const
*/
$method=|QString|publicId|

/*
QString systemId () const
*/
$method=|QString|systemId|

$extraMethods

#pragma ENDDUMP
