#ifndef QTIMER11_H
#define QTIMER11_H

#include <QObject>
#include <QTimer>
#include <QVariant>
class qtimer11:public QObject
{
  Q_OBJECT
public:
    qtimer11(QObject *parent=nullptr);
signals:
    void first(QVariant data);
    void second(QVariant data2);
    void third(QVariant data3);

private slots:
    void timeout();
    void timeout2();
    void timeout3();
public slots:
    void startTimer();
//    void stoptTimer();
private:
    QTimer t1;
    QTimer t2;
    QTimer t3;
    QString color;

};

#endif // QTIMER_INTGRN_H
