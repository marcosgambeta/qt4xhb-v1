/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextBoundaryFinder>

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
QTextBoundaryFinder()
*/
HB_FUNC( QTEXTBOUNDARYFINDER_NEW1 )
{
  QTextBoundaryFinder * o = NULL;
  o = new QTextBoundaryFinder (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextBoundaryFinder(const QTextBoundaryFinder &other)
*/
HB_FUNC( QTEXTBOUNDARYFINDER_NEW2 )
{
  QTextBoundaryFinder * o = NULL;
  QTextBoundaryFinder * par1 = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextBoundaryFinder ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextBoundaryFinder(BoundaryType type, const QString &string)
*/
HB_FUNC( QTEXTBOUNDARYFINDER_NEW3 )
{
  QTextBoundaryFinder * o = NULL;
  int par1 = hb_parni(1);
  QString par2 = hb_parc(2);
  o = new QTextBoundaryFinder (  (QTextBoundaryFinder::BoundaryType) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/
HB_FUNC( QTEXTBOUNDARYFINDER_NEW4 )
{
  QTextBoundaryFinder * o = NULL;
  int par1 = hb_parni(1);
  const QChar * par2 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = hb_parni(3);
  unsigned char * par4 = ISNIL(4)? 0 : (unsigned char *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par5 = ISNIL(5)? 0 : hb_parni(5);
  o = new QTextBoundaryFinder (  (QTextBoundaryFinder::BoundaryType) par1, par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBoundaryFinder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTextBoundaryFinder()
//[2]QTextBoundaryFinder(const QTextBoundaryFinder &other)
//[3]QTextBoundaryFinder(BoundaryType type, const QString &string)
//[4]QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)

HB_FUNC( QTEXTBOUNDARYFINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBOUNDARYFINDER(1) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW3 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QTEXTBOUNDARYFINDER_DELETE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC( QTEXTBOUNDARYFINDER_ISVALID )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
BoundaryType type() const
*/
HB_FUNC( QTEXTBOUNDARYFINDER_TYPE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
QString string() const
*/
HB_FUNC( QTEXTBOUNDARYFINDER_STRING )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->string (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void toStart()
*/
HB_FUNC( QTEXTBOUNDARYFINDER_TOSTART )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toStart (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toEnd()
*/
HB_FUNC( QTEXTBOUNDARYFINDER_TOEND )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toEnd (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int position() const
*/
HB_FUNC( QTEXTBOUNDARYFINDER_POSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->position (  );
    hb_retni( i );
  }
}


/*
void setPosition(int position)
*/
HB_FUNC( QTEXTBOUNDARYFINDER_SETPOSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPosition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int toNextBoundary()
*/
HB_FUNC( QTEXTBOUNDARYFINDER_TONEXTBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->toNextBoundary (  );
    hb_retni( i );
  }
}


/*
int toPreviousBoundary()
*/
HB_FUNC( QTEXTBOUNDARYFINDER_TOPREVIOUSBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->toPreviousBoundary (  );
    hb_retni( i );
  }
}


/*
bool isAtBoundary() const
*/
HB_FUNC( QTEXTBOUNDARYFINDER_ISATBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isAtBoundary (  );
    hb_retl( b );
  }
}


/*
BoundaryReasons boundaryReasons() const
*/
HB_FUNC( QTEXTBOUNDARYFINDER_BOUNDARYREASONS )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->boundaryReasons (  );
    hb_retni( i );
  }
}




