#include "qtimer11.h"
#include<QTimer>
#include <QVariant>
#include<QDebug>

qtimer11::qtimer11(QObject *parent):QObject(parent)
{
    connect(&t1,&QTimer::timeout ,this,&qtimer11::timeout);

    connect(&t2,&QTimer::timeout ,this,&qtimer11::timeout2);

    connect(&t3,&QTimer::timeout ,this,&qtimer11::timeout3);
}

void qtimer11::timeout()
{
    emit first(QVariant(1));
}

void qtimer11::timeout2()
{
    emit second(QVariant(2));
}

void qtimer11::timeout3()
{
    emit third(QVariant(3));
}

void qtimer11::startTimer()
{
    t1.start(1000);
    t2.start(5000);
    t3.start(10000);
}


