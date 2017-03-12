/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextImageFormat INHERIT QTextCharFormat

   DATA class_id INIT Class_Id_QTextImageFormat
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD height
   METHOD isValid
   METHOD name
   METHOD setHeight
   METHOD setName
   METHOD setWidth
   METHOD width
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextImageFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextImageFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextImageFormat ()
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NEW )
{
  QTextImageFormat * o = NULL;
  o = new QTextImageFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextImageFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTEXTIMAGEFORMAT_DELETE )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal height () const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_HEIGHT )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->height (  );
    hb_retnd( r );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_ISVALID )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NAME )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setHeight ( qreal height )
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETHEIGHT )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setName ( const QString & name )
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETNAME )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETWIDTH )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width () const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_WIDTH )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->width (  );
    hb_retnd( r );
  }
}




#pragma ENDDUMP
