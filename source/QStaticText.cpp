/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QStaticText>

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
QStaticText ()
*/
HB_FUNC( QSTATICTEXT_NEW1 )
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
HB_FUNC( QSTATICTEXT_NEW2 )
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
HB_FUNC( QSTATICTEXT_NEW3 )
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

HB_FUNC( QSTATICTEXT_NEW )
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

HB_FUNC( QSTATICTEXT_DELETE )
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
HB_FUNC( QSTATICTEXT_PERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->performanceHint (  );
    hb_retni( i );
  }
}


/*
void prepare ( const QTransform & matrix = QTransform(), const QFont & font = QFont() )
*/
HB_FUNC( QSTATICTEXT_PREPARE )
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
HB_FUNC( QSTATICTEXT_SETPERFORMANCEHINT )
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
HB_FUNC( QSTATICTEXT_SETTEXT )
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
HB_FUNC( QSTATICTEXT_SETTEXTFORMAT )
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
HB_FUNC( QSTATICTEXT_SETTEXTOPTION )
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
HB_FUNC( QSTATICTEXT_SETTEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTextWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size () const
*/
HB_FUNC( QSTATICTEXT_SIZE )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );  }
}


/*
QString text () const
*/
HB_FUNC( QSTATICTEXT_TEXT )
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
HB_FUNC( QSTATICTEXT_TEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textFormat (  );
    hb_retni( i );
  }
}


/*
QTextOption textOption () const
*/
HB_FUNC( QSTATICTEXT_TEXTOPTION )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->textOption (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOPTION" );  }
}


/*
qreal textWidth () const
*/
HB_FUNC( QSTATICTEXT_TEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->textWidth (  );
    hb_retnd( r );
  }
}



