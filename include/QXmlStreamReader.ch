/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QXmlStreamReader::Error
*/
#define QXmlStreamReader_NoError                                     0
#define QXmlStreamReader_CustomError                                 2
#define QXmlStreamReader_NotWellFormedError                          3
#define QXmlStreamReader_PrematureEndOfDocumentError                 4
#define QXmlStreamReader_UnexpectedElementError                      1

/*
enum QXmlStreamReader::ReadElementTextBehaviour
*/
#define QXmlStreamReader_ErrorOnUnexpectedElement                    0
#define QXmlStreamReader_IncludeChildElements                        1
#define QXmlStreamReader_SkipChildElements                           2

/*
enum QXmlStreamReader::TokenType
*/
#define QXmlStreamReader_NoToken                                     0
#define QXmlStreamReader_Invalid                                     1
#define QXmlStreamReader_StartDocument                               2
#define QXmlStreamReader_EndDocument                                 3
#define QXmlStreamReader_StartElement                                4
#define QXmlStreamReader_EndElement                                  5
#define QXmlStreamReader_Characters                                  6
#define QXmlStreamReader_Comment                                     7
#define QXmlStreamReader_DTD                                         8
#define QXmlStreamReader_EntityReference                             9
#define QXmlStreamReader_ProcessingInstruction                       10
