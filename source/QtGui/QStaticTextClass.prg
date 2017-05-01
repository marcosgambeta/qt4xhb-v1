/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QTEXTOPTION
#endif

CLASS QStaticText

   DATA pointer
   DATA class_id INIT Class_Id_QStaticText
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD performanceHint
   METHOD prepare
   METHOD setPerformanceHint
   METHOD setText
   METHOD setTextFormat
   METHOD setTextOption
   METHOD setTextWidth
   METHOD size
   METHOD text
   METHOD textFormat
   METHOD textOption
   METHOD textWidth
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStaticText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStaticText>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QStaticText ()
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW1 )
{
  QStaticText * o = NULL;
  o = new QStaticText (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStaticText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QStaticText ( const QString & text )
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW2 )
{
  QStaticText * o = NULL;
  QString par1 = hb_parc(1);
  o = new QStaticText ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStaticText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QStaticText ( const QStaticText & other )
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW3 )
{
  QStaticText * o = NULL;
  QStaticText * par1 = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QStaticText ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStaticText *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QStaticText ()
//[2]QStaticText ( const QString & text )
//[3]QStaticText ( const QStaticText & other )

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATICTEXT_DELETE )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
PerformanceHint performanceHint () const
*/
HB_FUNC_STATIC( QSTATICTEXT_PERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->performanceHint (  ) );
  }
}


/*
void prepare ( const QTransform & matrix = QTransform(), const QFont & font = QFont() )
*/
HB_FUNC_STATIC( QSTATICTEXT_PREPARE )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform par1 = ISNIL(1)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QFont par2 = ISNIL(2)? QFont() : *(QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->prepare ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHint ( PerformanceHint performanceHint )
*/
HB_FUNC_STATIC( QSTATICTEXT_SETPERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPerformanceHint (  (QStaticText::PerformanceHint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextFormat ( Qt::TextFormat textFormat )
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextOption ( const QTextOption & textOption )
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTOPTION )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * par1 = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTextOption ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextWidth ( qreal textWidth )
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size () const
*/
HB_FUNC_STATIC( QSTATICTEXT_SIZE )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Qt::TextFormat textFormat () const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textFormat (  ) );
  }
}


/*
QTextOption textOption () const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTOPTION )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->textOption (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
qreal textWidth () const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->textWidth (  );
    hb_retnd( r );
  }
}


HB_FUNC_STATIC( QSTATICTEXT_NEWFROM )
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

HB_FUNC_STATIC( QSTATICTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTATICTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSTATICTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTATICTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSTATICTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTATICTEXT_SETSELFDESTRUCTION )
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
