$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QSIZE
#endif

CLASS QFontComboBox INHERIT QComboBox

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD fontFilters
   METHOD setFontFilters
   METHOD setWritingSystem
   METHOD writingSystem
   METHOD sizeHint
   METHOD setCurrentFont

   METHOD onCurrentFontChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontComboBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontComboBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_NEW )
{
  QFontComboBox * o = new QFontComboBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QFont currentFont () const
*/
$method=|QFont|currentFont|

/*
FontFilters fontFilters () const
*/
$method=|QFontComboBox::FontFilters|fontFilters|

/*
void setFontFilters ( FontFilters filters )
*/
$method=|void|setFontFilters|QFontComboBox::FontFilters

/*
void setWritingSystem ( QFontDatabase::WritingSystem script )
*/
$method=|void|setWritingSystem|QFontDatabase::WritingSystem

/*
QFontDatabase::WritingSystem writingSystem () const
*/
$method=|QFontDatabase::WritingSystem|writingSystem|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void setCurrentFont ( const QFont & font )
*/
$method=|void|setCurrentFont|const QFont &

#pragma ENDDUMP
