//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QSound INHERIT QObject

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD isFinished
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD stop
   METHOD isAvailable
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSound
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QSound>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QSound( const QString &filename, QObject * parent = 0 )
    */
HB_FUNC_STATIC(QSOUND_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    QSound *obj = new QSound(PQSTRING(1), OPQOBJECT(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSOUND_DELETE)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString fileName() const
*/
HB_FUNC_STATIC(QSOUND_FILENAME)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->fileName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC(QSOUND_ISFINISHED)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isFinished());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int loops() const
*/
HB_FUNC_STATIC(QSOUND_LOOPS)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->loops());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int loopsRemaining() const
*/
HB_FUNC_STATIC(QSOUND_LOOPSREMAINING)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->loopsRemaining());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setLoops( int number )
*/
HB_FUNC_STATIC(QSOUND_SETLOOPS)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLoops(PINT(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void stop()
*/
HB_FUNC_STATIC(QSOUND_STOP)
{
  QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stop();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
static bool isAvailable()
*/
HB_FUNC_STATIC(QSOUND_ISAVAILABLE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QSound::isAvailable());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QSOUND_PLAY)
{
  if (ISNUMPAR(0))
  {
    /*
    void play()
    */
    QSound *obj = qobject_cast<QSound *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->play();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    static void play( const QString &filename )
    */

    QSound::play(PQSTRING(1));

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
