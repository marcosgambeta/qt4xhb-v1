$header

/*
enum QStateMachine::Error
*/
#define QStateMachine_NoError                                        0
#define QStateMachine_NoInitialStateError                            1
#define QStateMachine_NoDefaultStateInHistoryStateError              2
#define QStateMachine_NoCommonAncestorForTransitionError             3

/*
enum QStateMachine::EventPriority
*/
#define QStateMachine_NormalPriority                                 0
#define QStateMachine_HighPriority                                   1

/*
enum QStateMachine::RestorePolicy
*/
#define QStateMachine_DontRestoreProperties                          0
#define QStateMachine_RestoreProperties                              1
