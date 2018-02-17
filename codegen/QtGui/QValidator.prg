%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QValidator INHERIT QObject

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void fixup ( QString & input ) const
HB_FUNC_STATIC( QVALIDATOR_FIXUP ) // TODO: revisar a implementacao e corrigir
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=virtual State validate ( QString & input, int & pos ) const = 0
HB_FUNC_STATIC( QVALIDATOR_VALIDATE ) // TODO: revisar a implementacao e corrigir
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2;
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}

#pragma ENDDUMP
