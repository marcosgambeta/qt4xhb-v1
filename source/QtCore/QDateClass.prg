/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATE

CLASS QDate

   DATA pointer
   DATA class_id INIT Class_Id_QDate
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMonths
   METHOD addYears
   METHOD day
   METHOD dayOfWeek
   METHOD dayOfYear
   METHOD daysInMonth
   METHOD daysInYear
   METHOD daysTo
   METHOD getDate
   METHOD isNull
   METHOD isValid1
   METHOD month
   METHOD setDate
   METHOD toJulianDay
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD weekNumber
   METHOD year
   METHOD currentDate
   METHOD fromJulianDay
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isLeapYear
   METHOD isValid2
   METHOD isValid
   METHOD longDayName1
   METHOD longDayName2
   METHOD longDayName
   METHOD longMonthName1
   METHOD longMonthName2
   METHOD longMonthName
   METHOD shortDayName1
   METHOD shortDayName2
   METHOD shortDayName
   METHOD shortMonthName1
   METHOD shortMonthName2
   METHOD shortMonthName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDate
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDate
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDate
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDate
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDate
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
