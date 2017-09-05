$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QColorDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QColorDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_NEW1 )
{
  QColorDialog * o = new QColorDialog ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QColorDialog ( const QColor & initial, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_NEW2 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QColorDialog * o = new QColorDialog ( par1, OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
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

$deleteMethod

/*
QColor currentColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_CURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->currentColor () );
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
    obj->open ();
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
    obj->open ( PQOBJECT(1), (const char *) hb_parc(2) );
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
    hb_retni( (int) obj->options () );
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
    QColor * ptr = new QColor( obj->selectedColor () );
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
    obj->setOption ( (QColorDialog::ColorDialogOption) par1, OPBOOL(2,true) );
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
    obj->setOptions ( (QColorDialog::ColorDialogOptions) par1 );
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
    RBOOL( obj->testOption ( (QColorDialog::ColorDialogOption) par1 ) );
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
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRgb customColor ( int index )
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOLOR )
{
  QRgb i = QColorDialog::customColor ( PINT(1) );
  hb_retni( i );
}

/*
int customCount ()
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOUNT )
{
  RINT( QColorDialog::customCount () );
}

/*
QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR1 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  QColor * ptr = new QColor( QColorDialog::getColor ( par1, PQWIDGET(2), PQSTRING(3), (QColorDialog::ColorDialogOptions) par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
}

/*
QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR2 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QColor * ptr = new QColor( QColorDialog::getColor ( par1, OPQWIDGET(2,0) ) );
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
  QRgb par2 = hb_parni(2);
  QColorDialog::setCustomColor ( PINT(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardColor ( int index, QRgb color
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETSTANDARDCOLOR )
{
  QRgb par2 = hb_parni(2);
  QColorDialog::setStandardColor ( PINT(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
