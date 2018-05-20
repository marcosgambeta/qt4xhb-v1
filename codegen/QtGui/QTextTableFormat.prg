%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTLENGTH
#endif

$beginClassFrom=QTextFrameFormat

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD cellPadding
   METHOD cellSpacing
   METHOD clearColumnWidthConstraints
   METHOD columnWidthConstraints
   METHOD columns
   METHOD headerRowCount
   METHOD isValid
   METHOD setAlignment
   METHOD setCellPadding
   METHOD setCellSpacing
   METHOD setColumnWidthConstraints
   METHOD setHeaderRowCount

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextTableFormat ()
$constructor=|new|

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=qreal cellPadding () const
$method=|qreal|cellPadding|

$prototype=qreal cellSpacing () const
$method=|qreal|cellSpacing|

$prototype=void clearColumnWidthConstraints ()
$method=|void|clearColumnWidthConstraints|

$prototype=QVector<QTextLength> columnWidthConstraints () const
$method=|QVector<QTextLength>|columnWidthConstraints|

$prototype=int columns () const
$method=|int|columns|

$prototype=int headerRowCount () const
$method=|int|headerRowCount|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setCellPadding ( qreal padding )
$method=|void|setCellPadding|qreal

$prototype=void setCellSpacing ( qreal spacing )
$method=|void|setCellSpacing|qreal

$prototype=void setColumnWidthConstraints ( const QVector<QTextLength> & constraints )
$method=|void|setColumnWidthConstraints|const QVector<QTextLength> &

$prototype=void setHeaderRowCount ( int count )
$method=|void|setHeaderRowCount|int

#pragma ENDDUMP
