/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSound INHERIT QObject

   DATA class_id INIT Class_Id_QSound
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD isFinished
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD play1
   METHOD stop
   METHOD isAvailable
   METHOD play2
   METHOD play
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSound
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSound>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSound ( const QString & filename, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSOUND_NEW )
{
  QSound * o = NULL;
  QString par1 = hb_parc(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSound ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSound *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSOUND_DELETE )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString fileName () const
*/
HB_FUNC_STATIC( QSOUND_FILENAME )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isFinished () const
*/
HB_FUNC_STATIC( QSOUND_ISFINISHED )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
}


/*
int loops () const
*/
HB_FUNC_STATIC( QSOUND_LOOPS )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->loops (  ) );
  }
}


/*
int loopsRemaining () const
*/
HB_FUNC_STATIC( QSOUND_LOOPSREMAINING )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->loopsRemaining (  ) );
  }
}


/*
void setLoops ( int number )
*/
HB_FUNC_STATIC( QSOUND_SETLOOPS )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLoops ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play ()
*/
HB_FUNC_STATIC( QSOUND_PLAY1 )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->play (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QSOUND_STOP )
{
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool isAvailable ()
*/
HB_FUNC_STATIC( QSOUND_ISAVAILABLE )
{
  hb_retl( QSound::isAvailable (  ) );
}


/*
void play ( const QString & filename )
*/
HB_FUNC_STATIC( QSOUND_PLAY2 )
{
  QString par1 = hb_parc(1);
  QSound::play ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void play ()
//[2]void play ( const QString & filename )

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
}



#pragma ENDDUMP
