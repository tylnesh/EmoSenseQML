/****************************************************************************
** Meta object code from reading C++ file 'backend.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "backend.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QList>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'backend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_BackEnd_t {
    QByteArrayData data[44];
    char stringdata0[749];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_BackEnd_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_BackEnd_t qt_meta_stringdata_BackEnd = {
    {
QT_MOC_LITERAL(0, 0, 7), // "BackEnd"
QT_MOC_LITERAL(1, 8, 21), // "questionnaire1Changed"
QT_MOC_LITERAL(2, 30, 0), // ""
QT_MOC_LITERAL(3, 31, 21), // "questionnaire2Changed"
QT_MOC_LITERAL(4, 53, 19), // "pictureCountChanged"
QT_MOC_LITERAL(5, 73, 16), // "subjectIdChanged"
QT_MOC_LITERAL(6, 90, 17), // "subjectAgeChanged"
QT_MOC_LITERAL(7, 108, 17), // "subjectSexChanged"
QT_MOC_LITERAL(8, 126, 23), // "subjectEducationChanged"
QT_MOC_LITERAL(9, 150, 17), // "samValenceChanged"
QT_MOC_LITERAL(10, 168, 17), // "samArousalChanged"
QT_MOC_LITERAL(11, 186, 25), // "arduinoButtonsPathChanged"
QT_MOC_LITERAL(12, 212, 25), // "arduinoSensorsPathChanged"
QT_MOC_LITERAL(13, 238, 18), // "affectivaIPChanged"
QT_MOC_LITERAL(14, 257, 25), // "picturesFolderPathChanged"
QT_MOC_LITERAL(15, 283, 23), // "videosFolderPathChanged"
QT_MOC_LITERAL(16, 307, 25), // "isPicturesSelectedChanged"
QT_MOC_LITERAL(17, 333, 23), // "isVideosSelectedChanged"
QT_MOC_LITERAL(18, 357, 21), // "currentPictureChanged"
QT_MOC_LITERAL(19, 379, 19), // "currentVideoChanged"
QT_MOC_LITERAL(20, 399, 14), // "availablePorts"
QT_MOC_LITERAL(21, 414, 10), // "connectAll"
QT_MOC_LITERAL(22, 425, 14), // "shuffleIndexes"
QT_MOC_LITERAL(23, 440, 10), // "QList<int>"
QT_MOC_LITERAL(24, 451, 18), // "getShuffledIndexes"
QT_MOC_LITERAL(25, 470, 9), // "subjectId"
QT_MOC_LITERAL(26, 480, 10), // "subjectAge"
QT_MOC_LITERAL(27, 491, 10), // "subjectSex"
QT_MOC_LITERAL(28, 502, 16), // "subjectEducation"
QT_MOC_LITERAL(29, 519, 18), // "arduinoButtonsPath"
QT_MOC_LITERAL(30, 538, 18), // "arduinoSensorsPath"
QT_MOC_LITERAL(31, 557, 11), // "affectivaIP"
QT_MOC_LITERAL(32, 569, 18), // "picturesFolderPath"
QT_MOC_LITERAL(33, 588, 16), // "videosFolderPath"
QT_MOC_LITERAL(34, 605, 18), // "isPicturesSelected"
QT_MOC_LITERAL(35, 624, 16), // "isVideosSelected"
QT_MOC_LITERAL(36, 641, 14), // "currentPicture"
QT_MOC_LITERAL(37, 656, 12), // "currentVideo"
QT_MOC_LITERAL(38, 669, 12), // "pictureCount"
QT_MOC_LITERAL(39, 682, 10), // "samArousal"
QT_MOC_LITERAL(40, 693, 10), // "samValence"
QT_MOC_LITERAL(41, 704, 14), // "questionnaire1"
QT_MOC_LITERAL(42, 719, 14), // "QList<QString>"
QT_MOC_LITERAL(43, 734, 14) // "questionnaire2"

    },
    "BackEnd\0questionnaire1Changed\0\0"
    "questionnaire2Changed\0pictureCountChanged\0"
    "subjectIdChanged\0subjectAgeChanged\0"
    "subjectSexChanged\0subjectEducationChanged\0"
    "samValenceChanged\0samArousalChanged\0"
    "arduinoButtonsPathChanged\0"
    "arduinoSensorsPathChanged\0affectivaIPChanged\0"
    "picturesFolderPathChanged\0"
    "videosFolderPathChanged\0"
    "isPicturesSelectedChanged\0"
    "isVideosSelectedChanged\0currentPictureChanged\0"
    "currentVideoChanged\0availablePorts\0"
    "connectAll\0shuffleIndexes\0QList<int>\0"
    "getShuffledIndexes\0subjectId\0subjectAge\0"
    "subjectSex\0subjectEducation\0"
    "arduinoButtonsPath\0arduinoSensorsPath\0"
    "affectivaIP\0picturesFolderPath\0"
    "videosFolderPath\0isPicturesSelected\0"
    "isVideosSelected\0currentPicture\0"
    "currentVideo\0pictureCount\0samArousal\0"
    "samValence\0questionnaire1\0QList<QString>\0"
    "questionnaire2"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_BackEnd[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      22,   14, // methods
      18,  146, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      18,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,  124,    2, 0x06 /* Public */,
       3,    0,  125,    2, 0x06 /* Public */,
       4,    0,  126,    2, 0x06 /* Public */,
       5,    0,  127,    2, 0x06 /* Public */,
       6,    0,  128,    2, 0x06 /* Public */,
       7,    0,  129,    2, 0x06 /* Public */,
       8,    0,  130,    2, 0x06 /* Public */,
       9,    0,  131,    2, 0x06 /* Public */,
      10,    0,  132,    2, 0x06 /* Public */,
      11,    0,  133,    2, 0x06 /* Public */,
      12,    0,  134,    2, 0x06 /* Public */,
      13,    0,  135,    2, 0x06 /* Public */,
      14,    0,  136,    2, 0x06 /* Public */,
      15,    0,  137,    2, 0x06 /* Public */,
      16,    0,  138,    2, 0x06 /* Public */,
      17,    0,  139,    2, 0x06 /* Public */,
      18,    0,  140,    2, 0x06 /* Public */,
      19,    0,  141,    2, 0x06 /* Public */,

 // methods: name, argc, parameters, tag, flags
      20,    0,  142,    2, 0x02 /* Public */,
      21,    0,  143,    2, 0x02 /* Public */,
      22,    0,  144,    2, 0x02 /* Public */,
      24,    0,  145,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::QStringList,
    QMetaType::Void,
    0x80000000 | 23,
    0x80000000 | 23,

 // properties: name, type, flags
      25, QMetaType::QString, 0x00495103,
      26, QMetaType::Int, 0x00495103,
      27, QMetaType::QString, 0x00495103,
      28, QMetaType::QString, 0x00495103,
      29, QMetaType::QString, 0x00495103,
      30, QMetaType::QString, 0x00495103,
      31, QMetaType::QString, 0x00495103,
      32, QMetaType::QString, 0x00495103,
      33, QMetaType::QString, 0x00495103,
      34, QMetaType::Bool, 0x00495103,
      35, QMetaType::Bool, 0x00495103,
      36, QMetaType::QString, 0x00495103,
      37, QMetaType::QString, 0x00495103,
      38, QMetaType::Int, 0x00495103,
      39, QMetaType::Int, 0x00495103,
      40, QMetaType::Int, 0x00495103,
      41, 0x80000000 | 42, 0x0049510b,
      43, 0x80000000 | 42, 0x0049510b,

 // properties: notify_signal_id
       3,
       4,
       5,
       6,
       9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
       2,
       8,
       7,
       0,
       1,

       0        // eod
};

void BackEnd::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<BackEnd *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->questionnaire1Changed(); break;
        case 1: _t->questionnaire2Changed(); break;
        case 2: _t->pictureCountChanged(); break;
        case 3: _t->subjectIdChanged(); break;
        case 4: _t->subjectAgeChanged(); break;
        case 5: _t->subjectSexChanged(); break;
        case 6: _t->subjectEducationChanged(); break;
        case 7: _t->samValenceChanged(); break;
        case 8: _t->samArousalChanged(); break;
        case 9: _t->arduinoButtonsPathChanged(); break;
        case 10: _t->arduinoSensorsPathChanged(); break;
        case 11: _t->affectivaIPChanged(); break;
        case 12: _t->picturesFolderPathChanged(); break;
        case 13: _t->videosFolderPathChanged(); break;
        case 14: _t->isPicturesSelectedChanged(); break;
        case 15: _t->isVideosSelectedChanged(); break;
        case 16: _t->currentPictureChanged(); break;
        case 17: _t->currentVideoChanged(); break;
        case 18: { QStringList _r = _t->availablePorts();
            if (_a[0]) *reinterpret_cast< QStringList*>(_a[0]) = std::move(_r); }  break;
        case 19: _t->connectAll(); break;
        case 20: { QList<int> _r = _t->shuffleIndexes();
            if (_a[0]) *reinterpret_cast< QList<int>*>(_a[0]) = std::move(_r); }  break;
        case 21: { QList<int> _r = _t->getShuffledIndexes();
            if (_a[0]) *reinterpret_cast< QList<int>*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::questionnaire1Changed)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::questionnaire2Changed)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::pictureCountChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::subjectIdChanged)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::subjectAgeChanged)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::subjectSexChanged)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::subjectEducationChanged)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::samValenceChanged)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::samArousalChanged)) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::arduinoButtonsPathChanged)) {
                *result = 9;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::arduinoSensorsPathChanged)) {
                *result = 10;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::affectivaIPChanged)) {
                *result = 11;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::picturesFolderPathChanged)) {
                *result = 12;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::videosFolderPathChanged)) {
                *result = 13;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::isPicturesSelectedChanged)) {
                *result = 14;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::isVideosSelectedChanged)) {
                *result = 15;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::currentPictureChanged)) {
                *result = 16;
                return;
            }
        }
        {
            using _t = void (BackEnd::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&BackEnd::currentVideoChanged)) {
                *result = 17;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 17:
        case 16:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QList<QString> >(); break;
        }
    }

#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<BackEnd *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->subjectId(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->subjectAge(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->subjectSex(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->subjectEducation(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->arduinoButtonsPath(); break;
        case 5: *reinterpret_cast< QString*>(_v) = _t->arduinoSensorsPath(); break;
        case 6: *reinterpret_cast< QString*>(_v) = _t->affectivaIP(); break;
        case 7: *reinterpret_cast< QString*>(_v) = _t->picturesFolderPath(); break;
        case 8: *reinterpret_cast< QString*>(_v) = _t->videosFolderPath(); break;
        case 9: *reinterpret_cast< bool*>(_v) = _t->isPicturesSelected(); break;
        case 10: *reinterpret_cast< bool*>(_v) = _t->isVideosSelected(); break;
        case 11: *reinterpret_cast< QString*>(_v) = _t->currentPicture(); break;
        case 12: *reinterpret_cast< QString*>(_v) = _t->currentVideo(); break;
        case 13: *reinterpret_cast< int*>(_v) = _t->pictureCount(); break;
        case 14: *reinterpret_cast< int*>(_v) = _t->samArousal(); break;
        case 15: *reinterpret_cast< int*>(_v) = _t->samValence(); break;
        case 16: *reinterpret_cast< QList<QString>*>(_v) = _t->questionnaire1(); break;
        case 17: *reinterpret_cast< QList<QString>*>(_v) = _t->questionnaire2(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<BackEnd *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setSubjectId(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setSubjectAge(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->setSubjectSex(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setSubjectEducation(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setArduinoButtonsPath(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->setArduinoSensorsPath(*reinterpret_cast< QString*>(_v)); break;
        case 6: _t->setAffectivaIP(*reinterpret_cast< QString*>(_v)); break;
        case 7: _t->setPicturesFolderPath(*reinterpret_cast< QString*>(_v)); break;
        case 8: _t->setVideosFolderPath(*reinterpret_cast< QString*>(_v)); break;
        case 9: _t->setIsPicturesSelected(*reinterpret_cast< bool*>(_v)); break;
        case 10: _t->setIsVideosSelected(*reinterpret_cast< bool*>(_v)); break;
        case 11: _t->setCurrentPicture(*reinterpret_cast< QString*>(_v)); break;
        case 12: _t->setCurrentVideo(*reinterpret_cast< QString*>(_v)); break;
        case 13: _t->setPictureCount(*reinterpret_cast< int*>(_v)); break;
        case 14: _t->setSamArousal(*reinterpret_cast< int*>(_v)); break;
        case 15: _t->setSamValence(*reinterpret_cast< int*>(_v)); break;
        case 16: _t->setQuestionnaire1(*reinterpret_cast< QList<QString>*>(_v)); break;
        case 17: _t->setQuestionnaire2(*reinterpret_cast< QList<QString>*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject BackEnd::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_BackEnd.data,
    qt_meta_data_BackEnd,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *BackEnd::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *BackEnd::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_BackEnd.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int BackEnd::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 22)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 22;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 22)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 22;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 18;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 18;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 18;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 18;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 18;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void BackEnd::questionnaire1Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void BackEnd::questionnaire2Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void BackEnd::pictureCountChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void BackEnd::subjectIdChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void BackEnd::subjectAgeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void BackEnd::subjectSexChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void BackEnd::subjectEducationChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void BackEnd::samValenceChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void BackEnd::samArousalChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}

// SIGNAL 9
void BackEnd::arduinoButtonsPathChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}

// SIGNAL 10
void BackEnd::arduinoSensorsPathChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 10, nullptr);
}

// SIGNAL 11
void BackEnd::affectivaIPChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 11, nullptr);
}

// SIGNAL 12
void BackEnd::picturesFolderPathChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 12, nullptr);
}

// SIGNAL 13
void BackEnd::videosFolderPathChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 13, nullptr);
}

// SIGNAL 14
void BackEnd::isPicturesSelectedChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 14, nullptr);
}

// SIGNAL 15
void BackEnd::isVideosSelectedChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 15, nullptr);
}

// SIGNAL 16
void BackEnd::currentPictureChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 16, nullptr);
}

// SIGNAL 17
void BackEnd::currentVideoChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 17, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
