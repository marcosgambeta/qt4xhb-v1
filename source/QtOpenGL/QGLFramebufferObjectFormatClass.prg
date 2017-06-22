/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QGLFramebufferObjectFormat INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD attachment
   METHOD internalTextureFormat
   METHOD samples
   METHOD setAttachment
   METHOD setInternalTextureFormat
   METHOD setSamples
   METHOD setTextureTarget
   METHOD textureTarget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLFramebufferObjectFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGLFramebufferObjectFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObjectFormat ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW1 )
{
  QGLFramebufferObjectFormat * o = new QGLFramebufferObjectFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW2 )
{
  QGLFramebufferObjectFormat * o = new QGLFramebufferObjectFormat ( *PQGLFRAMEBUFFEROBJECTFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFramebufferObjectFormat ()
//[2]QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECTFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECTFORMAT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_DELETE )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QGLFramebufferObject::Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_ATTACHMENT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->attachment () );
  }
}


/*
GLenum internalTextureFormat () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_INTERNALTEXTUREFORMAT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum i = obj->internalTextureFormat ();
    hb_retni( i );
  }
}


/*
int samples () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SAMPLES )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->samples () );
  }
}


/*
void setAttachment ( QGLFramebufferObject::Attachment attachment )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETATTACHMENT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttachment ( (QGLFramebufferObject::Attachment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInternalTextureFormat ( GLenum internalTextureFormat )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETINTERNALTEXTUREFORMAT )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum par1 = hb_parni(1);
    obj->setInternalTextureFormat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSamples ( int samples )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETSAMPLES )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSamples ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextureTarget ( GLenum target )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_SETTEXTURETARGET )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum par1 = hb_parni(1);
    obj->setTextureTarget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLenum textureTarget () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_TEXTURETARGET )
{
  QGLFramebufferObjectFormat * obj = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum i = obj->textureTarget ();
    hb_retni( i );
  }
}





#pragma ENDDUMP
