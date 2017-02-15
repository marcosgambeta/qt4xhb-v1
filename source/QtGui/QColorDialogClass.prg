/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR

CLASS QColorDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QColorDialog
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD open1
   METHOD open2
   METHOD open
   METHOD options
   METHOD selectedColor
   METHOD setCurrentColor
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD customCount
   METHOD getColor1
   METHOD getColor2
   METHOD getColor
   METHOD setCustomColor
   METHOD setStandardColor
   METHOD onColorSelected
   METHOD onCurrentColorChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QColorDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QColorDialog>

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
QColorDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_NEW1 )
{
  QColorDialog * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QColorDialog ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColorDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QColorDialog ( const QColor & initial, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_NEW2 )
{
  QColorDialog * o = NULL;
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QColorDialog ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColorDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QColorDialog ( QWidget * parent = 0 )
//[2]QColorDialog ( const QColor & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_NEW1 );
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLORDIALOG_DELETE )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QColor currentColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_CURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->currentColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void open ()
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPEN1 )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPEN2 )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void open ()
//[2]void open ( QObject * receiver, const char * member )

HB_FUNC_STATIC( QCOLORDIALOG_OPEN )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_OPEN1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_OPEN2 );
  }
}

/*
ColorDialogOptions options () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPTIONS )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->options (  );
    hb_retni( i );
  }
}


/*
QColor selectedColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_SELECTEDCOLOR )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->selectedColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void setCurrentColor ( const QColor & color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setCurrentColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( ColorDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETOPTION )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = ISNIL(2)? true : hb_parl(2);
    obj->setOption (  (QColorDialog::ColorDialogOption) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( ColorDialogOptions options )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETOPTIONS )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QColorDialog::ColorDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( ColorDialogOption option ) const
*/
HB_FUNC_STATIC( QCOLORDIALOG_TESTOPTION )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testOption (  (QColorDialog::ColorDialogOption) par1 );
    hb_retl( b );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETVISIBLE )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QRgb customColor ( int index )
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOLOR )
{
  int par1 = hb_parni(1);
  QRgb i = QColorDialog::customColor ( par1 );
  hb_retni( i );
}


/*
int customCount ()
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOUNT )
{
  int i = QColorDialog::customCount (  );
  hb_retni( i );
}


/*
QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR1 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString par3 = hb_parc(3);
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  QColor * ptr = new QColor( QColorDialog::getColor ( par1, par2, par3,  (QColorDialog::ColorDialogOptions) par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR2 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QColor * ptr = new QColor( QColorDialog::getColor ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
}


//[1]QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
//[2]QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
{
  if( ISBETWEEN(3,4) && (ISQCOLOR(1)||ISCHAR(1)) && ISQWIDGET(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR1 );
  }
  else if( ISBETWEEN(0,2) && (ISQCOLOR(1)||ISCHAR(1)||ISNIL(1)) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR2 );
  }
}

/*
void setCustomColor ( int index, QRgb color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCUSTOMCOLOR )
{
  int par1 = hb_parni(1);
  QRgb par2 = hb_parni(2);
  QColorDialog::setCustomColor ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStandardColor ( int index, QRgb color
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETSTANDARDCOLOR )
{
  int par1 = hb_parni(1);
  QRgb par2 = hb_parni(2);
  QColorDialog::setStandardColor ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
