/****************************************************************************
** Meta object code from reading C++ file 'AdminConnector.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.14.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../AdminConnector.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'AdminConnector.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.14.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_AdminConnector_t {
    QByteArrayData data[13];
    char stringdata0[119];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_AdminConnector_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_AdminConnector_t qt_meta_stringdata_AdminConnector = {
    {
QT_MOC_LITERAL(0, 0, 14), // "AdminConnector"
QT_MOC_LITERAL(1, 15, 7), // "onCheck"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 14), // "onRequestReply"
QT_MOC_LITERAL(4, 39, 14), // "QtHttpRequest*"
QT_MOC_LITERAL(5, 54, 7), // "request"
QT_MOC_LITERAL(6, 62, 12), // "QtHttpReply*"
QT_MOC_LITERAL(7, 75, 5), // "reply"
QT_MOC_LITERAL(8, 81, 8), // "getOpMsg"
QT_MOC_LITERAL(9, 90, 6), // "getPin"
QT_MOC_LITERAL(10, 97, 3), // "num"
QT_MOC_LITERAL(11, 101, 7), // "getMenu"
QT_MOC_LITERAL(12, 109, 9) // "getStatus"

    },
    "AdminConnector\0onCheck\0\0onRequestReply\0"
    "QtHttpRequest*\0request\0QtHttpReply*\0"
    "reply\0getOpMsg\0getPin\0num\0getMenu\0"
    "getStatus"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_AdminConnector[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   44,    2, 0x0a /* Public */,
       3,    2,   45,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
       8,    0,   50,    2, 0x02 /* Public */,
       9,    1,   51,    2, 0x02 /* Public */,
      11,    1,   54,    2, 0x02 /* Public */,
      12,    1,   57,    2, 0x02 /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4, 0x80000000 | 6,    5,    7,

 // methods: parameters
    QMetaType::QString,
    QMetaType::QString, QMetaType::Int,   10,
    QMetaType::QString, QMetaType::Int,   10,
    QMetaType::Int, QMetaType::Int,   10,

       0        // eod
};

void AdminConnector::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<AdminConnector *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->onCheck(); break;
        case 1: _t->onRequestReply((*reinterpret_cast< QtHttpRequest*(*)>(_a[1])),(*reinterpret_cast< QtHttpReply*(*)>(_a[2]))); break;
        case 2: { QString _r = _t->getOpMsg();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 3: { QString _r = _t->getPin((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 4: { QString _r = _t->getMenu((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 5: { int _r = _t->getStatus((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 1:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 1:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QtHttpReply* >(); break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QtHttpRequest* >(); break;
            }
            break;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject AdminConnector::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_AdminConnector.data,
    qt_meta_data_AdminConnector,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *AdminConnector::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *AdminConnector::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_AdminConnector.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int AdminConnector::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
