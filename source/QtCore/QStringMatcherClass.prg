/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QStringMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn1
   METHOD indexIn2
   METHOD pattern
   METHOD caseSensitivity
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStringMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStringMatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStringMatcher()
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW1 )
{
  QStringMatcher * o = NULL;
  o = new QStringMatcher ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW2 )
{
  QStringMatcher * o = NULL;
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  o = new QStringMatcher ( PQSTRING(1),  (Qt::CaseSensitivity) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW3 )
{
  QStringMatcher * o = NULL;
  const QChar * par1 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) Qt::CaseSensitive : hb_parni(3);
  o = new QStringMatcher ( par1, PINT(2),  (Qt::CaseSensitivity) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QStringMatcher(const QStringMatcher &other)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW4 )
{
  QStringMatcher * o = NULL;
  QStringMatcher * par1 = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QStringMatcher ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QStringMatcher()
//[2]QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//[3]QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//[4]QStringMatcher(const QStringMatcher &other)

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTRINGMATCHER_DELETE )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setPattern(const QString &pattern)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETPATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPattern ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETCASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCaseSensitivity (  (Qt::CaseSensitivity) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexIn(const QString &str, int from = 0) const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN1 )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->indexIn ( PQSTRING(1), OPINT(2,0) ) );
  }
}


/*
int indexIn(const QChar *str, int length, int from = 0) const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN2 )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QChar * par1 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->indexIn ( par1, PINT(2), OPINT(3,0) ) );
  }
}


/*
QString pattern() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_PATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->pattern ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_CASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->caseSensitivity () );
  }
}


HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
