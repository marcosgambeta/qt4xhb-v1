$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QPicture INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD data
   METHOD isNull
   METHOD load1
   METHOD load2
   METHOD load
   METHOD play
   METHOD save1
   METHOD save2
   METHOD save
   METHOD setBoundingRect
   METHOD setData
   METHOD size
   METHOD swap

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPicture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPicture ( int formatVersion = -1 )
*/
HB_FUNC_STATIC( QPICTURE_NEW1 )
{
  QPicture * o = new QPicture ( OPINT(1,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPicture ( const QPicture & pic )
*/
HB_FUNC_STATIC( QPICTURE_NEW2 )
{
  QPicture * o = new QPicture ( *PQPICTURE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPicture ( int formatVersion = -1 )
//[2]QPicture ( const QPicture & pic )

HB_FUNC_STATIC( QPICTURE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPICTURE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPICTURE(1) )
  {
    HB_FUNC_EXEC( QPICTURE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRect boundingRect () const
*/
HB_FUNC_STATIC( QPICTURE_BOUNDINGRECT )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const char * data () const
*/
HB_FUNC_STATIC( QPICTURE_DATA )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->data ();
    hb_retc( str1 );
  }
}

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool load ( const QString & fileName, const char * format = 0 )
*/
$method=|bool|load,load1|const QString &,const char *=0

/*
bool load ( QIODevice * dev, const char * format = 0 )
*/
$method=|bool|load,load2|QIODevice *,const char *=0

//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_LOAD2 );
  }
}

/*
bool play ( QPainter * painter )
*/
$method=|bool|play|QPainter *

/*
bool save ( const QString & fileName, const char * format = 0 )
*/
$method=|bool|save,save1|const QString &,const char *=0

/*
bool save ( QIODevice * dev, const char * format = 0 )
*/
$method=|bool|save,save2|QIODevice *,const char *=0

//[1]bool save ( const QString & fileName, const char * format = 0 )
//[2]bool save ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_SAVE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_SAVE1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_SAVE2 );
  }
}

/*
void setBoundingRect ( const QRect & r )
*/
HB_FUNC_STATIC( QPICTURE_SETBOUNDINGRECT )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBoundingRect ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( const char * data, uint size )
*/
HB_FUNC_STATIC( QPICTURE_SETDATA )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( (const char *) hb_parc(1), PUINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
uint size () const
*/
HB_FUNC_STATIC( QPICTURE_SIZE )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->size () );
  }
}

/*
void swap ( QPicture & other )
*/
HB_FUNC_STATIC( QPICTURE_SWAP )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPicture * par1 = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// QPicture & operator= ( const QPicture & p )

#pragma ENDDUMP
