#ifndef ZEVISIONCOMM_H
#define ZEVISIONCOMM_H

#include <QMainWindow>
#include <QFile>

#include "utilities/ipaddress.h"

QT_BEGIN_NAMESPACE
namespace Ui { class ZevisionComm; }
QT_END_NAMESPACE

class ZevisionComm : public QMainWindow
{
    Q_OBJECT

public:
    ZevisionComm(QWidget *parent = nullptr);
    ~ZevisionComm();

private slots:
    void on_actionExit_triggered();

private:
    Ui::ZevisionComm *ui;
};
#endif // ZEVISIONCOMM_H
