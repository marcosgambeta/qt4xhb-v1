$header

#include "hbclass.ch"


CLASS QSqlRelation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD displayColumn
   METHOD indexColumn
   METHOD isValid
   METHOD tableName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlRelation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSqlRelation ()
*/
HB_FUNC_STATIC( QSQLRELATION_NEW1 )
{
  QSqlRelation * o = new QSqlRelation ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )
*/
HB_FUNC_STATIC( QSQLRELATION_NEW2 )
{
  QSqlRelation * o = new QSqlRelation ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSqlRelation ()
//[2]QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )

HB_FUNC_STATIC( QSQLRELATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLRELATION_NEW1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QSQLRELATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
QString displayColumn () const
*/
HB_FUNC_STATIC( QSQLRELATION_DISPLAYCOLUMN )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->displayColumn () );
  }
}


/*
QString indexColumn () const
*/
HB_FUNC_STATIC( QSQLRELATION_INDEXCOLUMN )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->indexColumn () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLRELATION_ISVALID )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QString tableName () const
*/
HB_FUNC_STATIC( QSQLRELATION_TABLENAME )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->tableName () );
  }
}

$extraMethods

#pragma ENDDUMP
