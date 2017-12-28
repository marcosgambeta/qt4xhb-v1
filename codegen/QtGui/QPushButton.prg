$header

#include "hbclass.ch"

CLASS QPushButton INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD autoDefault
   METHOD isDefault
   METHOD isFlat
   METHOD setAutoDefault
   METHOD setDefault
   METHOD setFlat
   METHOD showMenu

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPushButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QPushButton ( QWidget * parent = 0 )
void QPushButton_new1 ()
{
  QPushButton * o = new QPushButton ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$prototype=QPushButton ( const QString & text, QWidget * parent = 0 )
void QPushButton_new2 ()
{
  QPushButton * o = new QPushButton ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$prototype=QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
void QPushButton_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QPushButton * o = new QPushButton ( par1, PQSTRING(2), OPQWIDGET(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QPushButton ( QWidget * parent = 0 )
//[2]QPushButton ( const QString & text, QWidget * parent = 0 )
//[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPushButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPushButton_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QPushButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool autoDefault () const
$method=|bool|autoDefault|

$prototype=bool isDefault () const
$method=|bool|isDefault|

$prototype=bool isFlat () const
$method=|bool|isFlat|

$prototype=void setAutoDefault ( bool )
$method=|void|setAutoDefault|bool

$prototype=void setDefault ( bool )
$method=|void|setDefault|bool

$prototype=void setFlat ( bool )
$method=|void|setFlat|bool

$prototype=void showMenu ()
$method=|void|showMenu|

#pragma ENDDUMP
