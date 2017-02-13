/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR

CLASS QColor

   DATA pointer
   DATA class_id INIT Class_Id_QColor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD alpha
   METHOD alphaF
   METHOD black
   METHOD blackF
   METHOD blue
   METHOD blueF
   METHOD convertTo
   METHOD cyan
   METHOD cyanF
   METHOD darker
   METHOD getCmyk
   METHOD getCmykF
   METHOD getHsl
   METHOD getHslF
   METHOD getHsv
   METHOD getHsvF
   METHOD getRgb
   METHOD getRgbF
   METHOD green
   METHOD greenF
   METHOD hslHue
   METHOD hslHueF
   METHOD hslSaturation
   METHOD hslSaturationF
   METHOD hsvHue
   METHOD hsvHueF
   METHOD hsvSaturation
   METHOD hsvSaturationF
   METHOD hue
   METHOD hueF
   METHOD isValid
   METHOD lighter
   METHOD lightness
   METHOD lightnessF
   METHOD magenta
   METHOD magentaF
   METHOD name
   METHOD red
   METHOD redF
   METHOD rgb
   METHOD rgba
   METHOD saturation
   METHOD saturationF
   METHOD setAlpha
   METHOD setAlphaF
   METHOD setBlue
   METHOD setBlueF
   METHOD setCmyk
   METHOD setCmykF
   METHOD setGreen
   METHOD setGreenF
   METHOD setHsl
   METHOD setHslF
   METHOD setHsv
   METHOD setHsvF
   METHOD setNamedColor
   METHOD setRed
   METHOD setRedF
   METHOD setRgb1
   METHOD setRgb2
   METHOD setRgb
   METHOD setRgbF
   METHOD setRgba
   METHOD spec
   METHOD toCmyk
   METHOD toHsl
   METHOD toHsv
   METHOD toRgb
   METHOD value
   METHOD valueF
   METHOD yellow
   METHOD yellowF
   METHOD colorNames
   METHOD fromCmyk
   METHOD fromCmykF
   METHOD fromHsl
   METHOD fromHslF
   METHOD fromHsv
   METHOD fromHsvF
   METHOD fromRgb1
   METHOD fromRgb2
   METHOD fromRgbF
   METHOD fromRgba
   METHOD isValidColor
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QColor
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QColor
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QColor
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QColor
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QColor
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QColor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QColor>

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
QColor ()
*/
HB_FUNC_STATIC( QCOLOR_NEW1 )
{
  QColor * o = NULL;
  o = new QColor (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QColor ( int r, int g, int b, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_NEW2 )
{
  QColor * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = ISNIL(4)? 255 : hb_parni(4);
  o = new QColor ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QColor ( QRgb color )
*/
HB_FUNC_STATIC( QCOLOR_NEW3 )
{
  QColor * o = NULL;
  QRgb par1 = hb_parni(1);
  o = new QColor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QColor ( const QString & name )
*/
HB_FUNC_STATIC( QCOLOR_NEW4 )
{
  QColor * o = NULL;
  QString par1 = hb_parc(1);
  o = new QColor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QColor ( const char * name )
*/
HB_FUNC_STATIC( QCOLOR_NEW5 )
{
  QColor * o = NULL;
  const char * par1 = hb_parc(1);
  o = new QColor (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QColor ( const QColor & color )
*/
HB_FUNC_STATIC( QCOLOR_NEW6 )
{
  QColor * o = NULL;
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  o = new QColor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QColor ( Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QCOLOR_NEW7 )
{
  QColor * o = NULL;
  int par1 = hb_parni(1);
  o = new QColor (  (Qt::GlobalColor) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QColor ()
//[2]QColor ( int r, int g, int b, int a = 255 )
//[3]QColor ( QRgb color )
//[4]QColor ( const QString & name )
//[5]QColor ( const char * name )
//[6]QColor ( const QColor & color )
//[7]QColor ( Qt::GlobalColor color )

// TODO: conflitos entre [3] e [7] e [4] e [5]

HB_FUNC_STATIC( QCOLOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW6 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLOR_DELETE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int alpha () const
*/
HB_FUNC_STATIC( QCOLOR_ALPHA )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->alpha (  );
    hb_retni( i );
  }
}


/*
qreal alphaF () const
*/
HB_FUNC_STATIC( QCOLOR_ALPHAF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->alphaF (  );
    hb_retnd( r );
  }
}


/*
int black () const
*/
HB_FUNC_STATIC( QCOLOR_BLACK )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->black (  );
    hb_retni( i );
  }
}


/*
qreal blackF () const
*/
HB_FUNC_STATIC( QCOLOR_BLACKF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->blackF (  );
    hb_retnd( r );
  }
}


/*
int blue () const
*/
HB_FUNC_STATIC( QCOLOR_BLUE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->blue (  );
    hb_retni( i );
  }
}


/*
qreal blueF () const
*/
HB_FUNC_STATIC( QCOLOR_BLUEF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->blueF (  );
    hb_retnd( r );
  }
}


/*
QColor convertTo ( Spec colorSpec ) const
*/
HB_FUNC_STATIC( QCOLOR_CONVERTTO )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor * ptr = new QColor( obj->convertTo (  (QColor::Spec) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
int cyan () const
*/
HB_FUNC_STATIC( QCOLOR_CYAN )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->cyan (  );
    hb_retni( i );
  }
}


/*
qreal cyanF () const
*/
HB_FUNC_STATIC( QCOLOR_CYANF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->cyanF (  );
    hb_retnd( r );
  }
}


/*
QColor darker ( int factor = 200 ) const
*/
HB_FUNC_STATIC( QCOLOR_DARKER )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 200 : hb_parni(1);
    QColor * ptr = new QColor( obj->darker ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
void getCmyk ( int * c, int * m, int * y, int * k, int * a = 0 )
*/
HB_FUNC_STATIC( QCOLOR_GETCMYK )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    int par5;
    obj->getCmyk ( &par1, &par2, &par3, &par4, &par5 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getCmykF ( qreal * c, qreal * m, qreal * y, qreal * k, qreal * a = 0 )
*/
HB_FUNC_STATIC( QCOLOR_GETCMYKF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    qreal par5;
    obj->getCmykF ( &par1, &par2, &par3, &par4, &par5 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
    hb_stornd( par5, 5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHsl ( int * h, int * s, int * l, int * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSL )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getHsl ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHslF ( qreal * h, qreal * s, qreal * l, qreal * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSLF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getHslF ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHsv ( int * h, int * s, int * v, int * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSV )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getHsv ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHsvF ( qreal * h, qreal * s, qreal * v, qreal * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSVF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getHsvF ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getRgb ( int * r, int * g, int * b, int * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETRGB )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getRgb ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getRgbF ( qreal * r, qreal * g, qreal * b, qreal * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETRGBF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getRgbF ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int green () const
*/
HB_FUNC_STATIC( QCOLOR_GREEN )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->green (  );
    hb_retni( i );
  }
}


/*
qreal greenF () const
*/
HB_FUNC_STATIC( QCOLOR_GREENF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->greenF (  );
    hb_retnd( r );
  }
}


/*
int hslHue () const
*/
HB_FUNC_STATIC( QCOLOR_HSLHUE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hslHue (  );
    hb_retni( i );
  }
}


/*
qreal hslHueF () const
*/
HB_FUNC_STATIC( QCOLOR_HSLHUEF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hslHueF (  );
    hb_retnd( r );
  }
}


/*
int hslSaturation () const
*/
HB_FUNC_STATIC( QCOLOR_HSLSATURATION )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hslSaturation (  );
    hb_retni( i );
  }
}


/*
qreal hslSaturationF () const
*/
HB_FUNC_STATIC( QCOLOR_HSLSATURATIONF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hslSaturationF (  );
    hb_retnd( r );
  }
}


/*
int hsvHue () const
*/
HB_FUNC_STATIC( QCOLOR_HSVHUE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hsvHue (  );
    hb_retni( i );
  }
}


/*
qreal hsvHueF () const
*/
HB_FUNC_STATIC( QCOLOR_HSVHUEF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hsvHueF (  );
    hb_retnd( r );
  }
}


/*
int hsvSaturation () const
*/
HB_FUNC_STATIC( QCOLOR_HSVSATURATION )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hsvSaturation (  );
    hb_retni( i );
  }
}


/*
qreal hsvSaturationF () const
*/
HB_FUNC_STATIC( QCOLOR_HSVSATURATIONF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hsvSaturationF (  );
    hb_retnd( r );
  }
}


/*
int hue () const
*/
HB_FUNC_STATIC( QCOLOR_HUE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hue (  );
    hb_retni( i );
  }
}


/*
qreal hueF () const
*/
HB_FUNC_STATIC( QCOLOR_HUEF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hueF (  );
    hb_retnd( r );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QCOLOR_ISVALID )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
QColor lighter ( int factor = 150 ) const
*/
HB_FUNC_STATIC( QCOLOR_LIGHTER )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 150 : hb_parni(1);
    QColor * ptr = new QColor( obj->lighter ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
int lightness () const
*/
HB_FUNC_STATIC( QCOLOR_LIGHTNESS )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->lightness (  );
    hb_retni( i );
  }
}


/*
qreal lightnessF () const
*/
HB_FUNC_STATIC( QCOLOR_LIGHTNESSF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->lightnessF (  );
    hb_retnd( r );
  }
}


/*
int magenta () const
*/
HB_FUNC_STATIC( QCOLOR_MAGENTA )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->magenta (  );
    hb_retni( i );
  }
}


/*
qreal magentaF () const
*/
HB_FUNC_STATIC( QCOLOR_MAGENTAF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->magentaF (  );
    hb_retnd( r );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QCOLOR_NAME )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int red () const
*/
HB_FUNC_STATIC( QCOLOR_RED )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->red (  );
    hb_retni( i );
  }
}


/*
qreal redF () const
*/
HB_FUNC_STATIC( QCOLOR_REDF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->redF (  );
    hb_retnd( r );
  }
}


/*
QRgb rgb () const
*/
HB_FUNC_STATIC( QCOLOR_RGB )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb i = obj->rgb (  );
    hb_retni( i );
  }
}


/*
QRgb rgba () const
*/
HB_FUNC_STATIC( QCOLOR_RGBA )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb i = obj->rgba (  );
    hb_retni( i );
  }
}


/*
int saturation () const
*/
HB_FUNC_STATIC( QCOLOR_SATURATION )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->saturation (  );
    hb_retni( i );
  }
}


/*
qreal saturationF () const
*/
HB_FUNC_STATIC( QCOLOR_SATURATIONF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->saturationF (  );
    hb_retnd( r );
  }
}


/*
void setAlpha ( int alpha )
*/
HB_FUNC_STATIC( QCOLOR_SETALPHA )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlpha ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlphaF ( qreal alpha )
*/
HB_FUNC_STATIC( QCOLOR_SETALPHAF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAlphaF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlue ( int blue )
*/
HB_FUNC_STATIC( QCOLOR_SETBLUE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBlue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlueF ( qreal blue )
*/
HB_FUNC_STATIC( QCOLOR_SETBLUEF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBlueF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCmyk ( int c, int m, int y, int k, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETCMYK )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = ISNIL(5)? 255 : hb_parni(5);
    obj->setCmyk ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETCMYKF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = ISNIL(5)? 1.0 : hb_parnd(5);
    obj->setCmykF ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreen ( int green )
*/
HB_FUNC_STATIC( QCOLOR_SETGREEN )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreenF ( qreal green )
*/
HB_FUNC_STATIC( QCOLOR_SETGREENF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setGreenF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHsl ( int h, int s, int l, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSL )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = ISNIL(4)? 255 : hb_parni(4);
    obj->setHsl ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSLF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
    obj->setHslF ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHsv ( int h, int s, int v, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSV )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = ISNIL(4)? 255 : hb_parni(4);
    obj->setHsv ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSVF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
    obj->setHsvF ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNamedColor ( const QString & name )
*/
HB_FUNC_STATIC( QCOLOR_SETNAMEDCOLOR )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setNamedColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRed ( int red )
*/
HB_FUNC_STATIC( QCOLOR_SETRED )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRed ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRedF ( qreal red )
*/
HB_FUNC_STATIC( QCOLOR_SETREDF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRedF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgb ( int r, int g, int b, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETRGB1 )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = ISNIL(4)? 255 : hb_parni(4);
    obj->setRgb ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgb ( QRgb rgb )
*/
HB_FUNC_STATIC( QCOLOR_SETRGB2 )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par1 = hb_parni(1);
    obj->setRgb ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setRgb ( int r, int g, int b, int a = 255 )
//[2]void setRgb ( QRgb rgb )

HB_FUNC_STATIC( QCOLOR_SETRGB )
{
  if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_SETRGB1 );
  }
  //else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  //{
  //  HB_FUNC_EXEC( QCOLOR_SETRGB1 );
  //}
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_SETRGB2 );
  }
}

/*
void setRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETRGBF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
    obj->setRgbF ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgba ( QRgb rgba )
*/
HB_FUNC_STATIC( QCOLOR_SETRGBA )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRgb par1 = hb_parni(1);
    obj->setRgba ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Spec spec () const
*/
HB_FUNC_STATIC( QCOLOR_SPEC )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->spec (  );
    hb_retni( i );
  }
}


/*
QColor toCmyk () const
*/
HB_FUNC_STATIC( QCOLOR_TOCMYK )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->toCmyk (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
QColor toHsl () const
*/
HB_FUNC_STATIC( QCOLOR_TOHSL )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->toHsl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
QColor toHsv () const
*/
HB_FUNC_STATIC( QCOLOR_TOHSV )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->toHsv (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
QColor toRgb () const
*/
HB_FUNC_STATIC( QCOLOR_TORGB )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->toRgb (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
int value () const
*/
HB_FUNC_STATIC( QCOLOR_VALUE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->value (  );
    hb_retni( i );
  }
}


/*
qreal valueF () const
*/
HB_FUNC_STATIC( QCOLOR_VALUEF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->valueF (  );
    hb_retnd( r );
  }
}


/*
int yellow () const
*/
HB_FUNC_STATIC( QCOLOR_YELLOW )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->yellow (  );
    hb_retni( i );
  }
}


/*
qreal yellowF () const
*/
HB_FUNC_STATIC( QCOLOR_YELLOWF )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->yellowF (  );
    hb_retnd( r );
  }
}




/*
QStringList colorNames ()
*/
HB_FUNC_STATIC( QCOLOR_COLORNAMES )
{
  QStringList strl = QColor::colorNames (  );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}


/*
QColor fromCmyk ( int c, int m, int y, int k, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMCMYK )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = ISNIL(5)? 255 : hb_parni(5);
  QColor * ptr = new QColor( QColor::fromCmyk ( par1, par2, par3, par4, par5 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMCMYKF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = ISNIL(5)? 1.0 : hb_parnd(5);
  QColor * ptr = new QColor( QColor::fromCmykF ( par1, par2, par3, par4, par5 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromHsl ( int h, int s, int l, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSL )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = ISNIL(4)? 255 : hb_parni(4);
  QColor * ptr = new QColor( QColor::fromHsl ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSLF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
  QColor * ptr = new QColor( QColor::fromHslF ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromHsv ( int h, int s, int v, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSV )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = ISNIL(4)? 255 : hb_parni(4);
  QColor * ptr = new QColor( QColor::fromHsv ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSVF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
  QColor * ptr = new QColor( QColor::fromHsvF ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromRgb ( QRgb rgb )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGB1 )
{
  QRgb par1 = hb_parni(1);
  QColor * ptr = new QColor( QColor::fromRgb ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromRgb ( int r, int g, int b, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGB2 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = ISNIL(4)? 255 : hb_parni(4);
  QColor * ptr = new QColor( QColor::fromRgb ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGBF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
  QColor * ptr = new QColor( QColor::fromRgbF ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
QColor fromRgba ( QRgb rgba )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGBA )
{
  QRgb par1 = hb_parni(1);
  QColor * ptr = new QColor( QColor::fromRgba ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );}


/*
bool isValidColor ( const QString & name )
*/
HB_FUNC_STATIC( QCOLOR_ISVALIDCOLOR )
{
  QString par1 = hb_parc(1);
  bool b = QColor::isValidColor ( par1 );
  hb_retl( b );
}



/*
int qAlpha ( QRgb rgba )
*/
HB_FUNC( QALPHA )
{
  hb_retni( qAlpha ( (QRgb) hb_parni(1) ) );
}

/*
int qBlue ( QRgb rgb )
*/
HB_FUNC( QBLUE )
{
  hb_retni( qBlue ( (QRgb) hb_parni(1) ) );
}

/*
int qGray ( int r, int g, int b )
*/
HB_FUNC( QGRAY1 )
{
  hb_retni( qGray ( hb_parni(1), hb_parni(2), hb_parni(3) ) );
}

/*
int qGray ( QRgb rgb )
*/
HB_FUNC( QGRAY2 )
{
  hb_retni( qGray ( (QRgb) hb_parni(1) ) );
}

//[1]int qGray ( int r, int g, int b )
//[2]int qGray ( QRgb rgb )

HB_FUNC( QGRAY )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGRAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAY2 );
  }
}

/*
int qGreen ( QRgb rgb )
*/
HB_FUNC( QGREEN )
{
  hb_retni( qGreen ( (QRgb) hb_parni(1) ) );
}

/*
int qRed ( QRgb rgb )
*/
HB_FUNC( QRED )
{
  hb_retni( qRed ( (QRgb) hb_parni(1) ) );
}

/*
QRgb qRgb ( int r, int g, int b )
*/
HB_FUNC( QRGB )
{
  hb_retni( qRgb ( hb_parni(1), hb_parni(2), hb_parni(3) ) );
}

/*
QRgb qRgba ( int r, int g, int b, int a )
*/
HB_FUNC( QRGBA )
{
  hb_retni( qRgba ( hb_parni(1), hb_parni(2), hb_parni(3), hb_parni(4) ) );
}



#pragma ENDDUMP
