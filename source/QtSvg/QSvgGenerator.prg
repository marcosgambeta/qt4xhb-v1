//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
#endif

CLASS QSvgGenerator INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD description
   METHOD fileName
   METHOD outputDevice
   METHOD resolution
   METHOD setDescription
   METHOD setFileName
   METHOD setOutputDevice
   METHOD setResolution
   METHOD setSize
   METHOD setTitle
   METHOD setViewBox
   METHOD size
   METHOD title
   METHOD viewBox
   METHOD viewBoxF

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSvgGenerator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtSvg/QSvgGenerator>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

    /*
    QSvgGenerator()
    */
HB_FUNC_STATIC(QSVGGENERATOR_NEW)
{
  if (ISNUMPAR(0))
  {
    QSvgGenerator *obj = new QSvgGenerator();
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSVGGENERATOR_DELETE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString description() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_DESCRIPTION)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->description());
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
QString fileName() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_FILENAME)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

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
QIODevice *outputDevice() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_OUTPUTDEVICE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QIODevice *ptr = obj->outputDevice();
      Qt4xHb::createReturnQObjectClass(ptr, "QIODEVICE");
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
int resolution() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_RESOLUTION)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->resolution());
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
void setDescription( const QString &description )
*/
HB_FUNC_STATIC(QSVGGENERATOR_SETDESCRIPTION)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setDescription(PQSTRING(1));
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
void setFileName( const QString &fileName )
*/
HB_FUNC_STATIC(QSVGGENERATOR_SETFILENAME)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFileName(PQSTRING(1));
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
void setOutputDevice( QIODevice *outputDevice )
*/
HB_FUNC_STATIC(QSVGGENERATOR_SETOUTPUTDEVICE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIODEVICE(1))
    {
#endif
      obj->setOutputDevice(PQIODEVICE(1));
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
void setResolution( int dpi )
*/
HB_FUNC_STATIC(QSVGGENERATOR_SETRESOLUTION)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setResolution(PINT(1));
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
void setSize( const QSize &size )
*/
HB_FUNC_STATIC(QSVGGENERATOR_SETSIZE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSIZE(1))
    {
#endif
      obj->setSize(*PQSIZE(1));
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
void setTitle( const QString &title )
*/
HB_FUNC_STATIC(QSVGGENERATOR_SETTITLE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTitle(PQSTRING(1));
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

HB_FUNC_STATIC(QSVGGENERATOR_SETVIEWBOX)
{
  if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    void setViewBox( const QRect &viewBox )
    */
    QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setViewBox(*PQRECT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    void setViewBox( const QRectF &viewBox )
    */
    QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setViewBox(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QSize size() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_SIZE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->size());
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
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
QString title() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_TITLE)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->title());
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
QRect viewBox() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_VIEWBOX)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRect *ptr = new QRect(obj->viewBox());
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
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
QRectF viewBoxF() const
*/
HB_FUNC_STATIC(QSVGGENERATOR_VIEWBOXF)
{
  QSvgGenerator *obj = static_cast<QSvgGenerator *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->viewBoxF());
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
