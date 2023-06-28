#include "zevision_comm.h"
#include "ui_zevision_comm.h"

ZevisionComm::ZevisionComm(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::ZevisionComm)
{
    ui->setupUi(this);
}

ZevisionComm::~ZevisionComm()
{
    delete ui;
}


void ZevisionComm::on_actionExit_triggered()
{
    this->close();
}

