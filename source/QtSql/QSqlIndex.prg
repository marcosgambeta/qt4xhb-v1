/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QSqlIndex INHERIT QSqlRecord

   METHOD new
   METHOD delete
   METHOD append
   METHOD cursorName
   METHOD isDescending
   METHOD name
   METHOD setCursorName
   METHOD setDescending
   METHOD setName

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtSql/QSqlIndex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QSQLINDEX_NEW )
{
  if( ISBETWEEN( 0, 2 ) && ( HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) && ( HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) )
  {
    /*
    QSqlIndex( const QString & cursorname = QString(), const QString & name = QString() )
    */
    QSqlIndex * obj = new QSqlIndex( OPQSTRING( 1, QString() ), OPQSTRING( 2, QString() ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISNUMPAR( 1 ) && ISQSQLINDEX( 1 ) )
  {
    /*
    QSqlIndex( const QSqlIndex & other )
    */
    QSqlIndex * obj = new QSqlIndex( *PQSQLINDEX( 1 ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLINDEX_DELETE )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

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

HB_FUNC_STATIC( QSQLINDEX_APPEND )
{
  if( ISNUMPAR( 1 ) && ISQSQLFIELD( 1 ) )
  {
    /*
    void append( const QSqlField & field )
    */
    QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      obj->append( *PQSQLFIELD( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 2 ) && ISQSQLFIELD( 1 ) && HB_ISLOG( 2 ) )
  {
    /*
    void append( const QSqlField & field, bool desc )
    */
    QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      obj->append( *PQSQLFIELD( 1 ), PBOOL( 2 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString cursorName() const
*/
HB_FUNC_STATIC( QSQLINDEX_CURSORNAME )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->cursorName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isDescending( int i ) const
*/
HB_FUNC_STATIC( QSQLINDEX_ISDESCENDING )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->isDescending( PINT( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QSQLINDEX_NAME )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCursorName( const QString & cursorName )
*/
HB_FUNC_STATIC( QSQLINDEX_SETCURSORNAME )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setCursorName( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDescending( int i, bool desc )
*/
HB_FUNC_STATIC( QSQLINDEX_SETDESCENDING )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISLOG( 2 ) )
    {
#endif
      obj->setDescending( PINT( 1 ), PBOOL( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setName( const QString & name )
*/
HB_FUNC_STATIC( QSQLINDEX_SETNAME )
{
  QSqlIndex * obj = static_cast< QSqlIndex * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setName( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
