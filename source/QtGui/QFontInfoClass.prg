/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QFontInfo

   DATA pointer
   DATA class_id INIT Class_Id_QFontInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bold
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD italic
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD style
   METHOD styleHint
   METHOD styleName
   METHOD weight
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QFontInfo
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QFontInfo
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QFontInfo
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QFontInfo
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QFontInfo
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QFontInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFontInfo>

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
QFontInfo ( const QFont & font )
*/
HB_FUNC( QFONTINFO_NEW1 )
{
  QFontInfo * o = NULL;
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QFontInfo ( const QFontInfo & fi )
*/
HB_FUNC( QFONTINFO_NEW2 )
{
  QFontInfo * o = NULL;
  QFontInfo * par1 = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QFontInfo ( const QFont & font )
//[2]QFontInfo ( const QFontInfo & fi )

HB_FUNC( QFONTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    HB_FUNC_EXEC( QFONTINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QFONTINFO_DELETE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool bold () const
*/
HB_FUNC( QFONTINFO_BOLD )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->bold (  );
    hb_retl( b );
  }
}


/*
bool exactMatch () const
*/
HB_FUNC( QFONTINFO_EXACTMATCH )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->exactMatch (  );
    hb_retl( b );
  }
}


/*
QString family () const
*/
HB_FUNC( QFONTINFO_FAMILY )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->family (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool fixedPitch () const
*/
HB_FUNC( QFONTINFO_FIXEDPITCH )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fixedPitch (  );
    hb_retl( b );
  }
}


/*
bool italic () const
*/
HB_FUNC( QFONTINFO_ITALIC )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->italic (  );
    hb_retl( b );
  }
}


/*
int pixelSize () const
*/
HB_FUNC( QFONTINFO_PIXELSIZE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->pixelSize (  );
    hb_retni( i );
  }
}


/*
int pointSize () const
*/
HB_FUNC( QFONTINFO_POINTSIZE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->pointSize (  );
    hb_retni( i );
  }
}


/*
qreal pointSizeF () const
*/
HB_FUNC( QFONTINFO_POINTSIZEF )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->pointSizeF (  );
    hb_retnd( r );
  }
}


/*
bool rawMode () const
*/
HB_FUNC( QFONTINFO_RAWMODE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->rawMode (  );
    hb_retl( b );
  }
}


/*
QFont::Style style () const
*/
HB_FUNC( QFONTINFO_STYLE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->style (  );
    hb_retni( i );
  }
}


/*
QFont::StyleHint styleHint () const
*/
HB_FUNC( QFONTINFO_STYLEHINT )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->styleHint (  );
    hb_retni( i );
  }
}


/*
QString styleName () const
*/
HB_FUNC( QFONTINFO_STYLENAME )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->styleName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int weight () const
*/
HB_FUNC( QFONTINFO_WEIGHT )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->weight (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
