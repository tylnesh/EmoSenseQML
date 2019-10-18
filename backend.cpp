#include "backend.h"
#include <QDebug>
#include <QtSerialPort/QSerialPortInfo>

BackEnd::BackEnd(QObject *parent) : QObject(parent)
{

}

QString BackEnd::subjectName()
{
    return m_subjectName;
}

void BackEnd::setSubjectName(const QString &subjectName)
{
    if (subjectName == m_subjectName)
        return;

    m_subjectName = subjectName;
    qDebug() << "Subject Name: " << m_subjectName;
    emit subjectNameChanged();
}


int BackEnd::subjectAge()
{
    return m_subjectAge;
}

void BackEnd::setSubjectAge(const int &subjectAge)
{
    if (subjectAge == m_subjectAge)
        return;

    m_subjectAge = subjectAge;
    qDebug() << "Subject Age: " << m_subjectAge;
    emit subjectAgeChanged();
}

//Getters/Setters for Arduino Buttons Path

QString BackEnd::arduinoButtonsPath()
{
    return m_arduinoButtonsPath;
}

void BackEnd::setArduinoButtonsPath(const QString &arduinoButtonsPath)
{
    if (arduinoButtonsPath == m_arduinoButtonsPath)
        return;

    m_arduinoButtonsPath = arduinoButtonsPath;
    qDebug() << "Arduino Buttons Path: " << m_arduinoButtonsPath;
    emit arduinoButtonsPathChanged();
}


//Getters/Setters for Arduino Sensors Path

QString BackEnd::arduinoSensorsPath()
{
    return m_arduinoSensorsPath;
}

void BackEnd::setArduinoSensorsPath(const QString &arduinoSensorsPath)
{
    if (arduinoSensorsPath == m_arduinoSensorsPath)
        return;

    m_arduinoSensorsPath = arduinoSensorsPath;
    qDebug() << "Arduino Sensors Path: " << m_arduinoSensorsPath;
    emit arduinoSensorsPathChanged();
}

//Getters/Setters for Affectiva IP address

QString BackEnd::affectivaIP()
{
    return m_arduinoSensorsPath;
}

void BackEnd::setAffectivaIP(const QString &affectivaIP)
{
    if (affectivaIP == m_affectivaIP)
        return;

    m_affectivaIP = affectivaIP;
    qDebug() << "Affectiva IP: " << m_affectivaIP;
    emit affectivaIPChanged();
}

//Getters/Setters for Pictures Folder Path

QString BackEnd::picturesFolderPath()
{
    return m_picturesFolderPath;
}

void BackEnd::setPicturesFolderPath(const QString &picturesFolderPath)
{
    if (picturesFolderPath == m_picturesFolderPath)
        return;

    m_picturesFolderPath = picturesFolderPath;
    qDebug() << "Pictures Folder Path: " << m_picturesFolderPath;
    emit picturesFolderPathChanged();
}

//Getters/Setters for Pictures Folder Path

QString BackEnd::videosFolderPath()
{
    return m_videosFolderPath;
}

void BackEnd::setVideosFolderPath(const QString &videosFolderPath)
{
    if (videosFolderPath == m_videosFolderPath)
        return;

    m_videosFolderPath = videosFolderPath;
    qDebug() << "Videos Folder Path: " << m_videosFolderPath;
    emit videosFolderPathChanged();
}



bool BackEnd::isPicturesSelected(){
    return m_isPicturesSelected;
}

void BackEnd::setIsPicturesSelected(const bool &isPicturesSelected)
{
    if (isPicturesSelected == m_isPicturesSelected)
        return;

    m_isPicturesSelected = isPicturesSelected;
    qDebug() << "Pictures Folder selected " << m_isPicturesSelected;
    emit isPicturesSelectedChanged();
}


bool BackEnd::isVideosSelected(){
    return m_isVideosSelected;
}

void BackEnd::setIsVideosSelected(const bool &isVideosSelected)
{
    if (isVideosSelected == m_isVideosSelected)
        return;

    m_isVideosSelected = isVideosSelected;
    qDebug() << "Videos Folder selected " << m_isVideosSelected;
    emit isVideosSelectedChanged();

}




QStringList BackEnd::availablePorts()
{
    QStringList ports;

    for (QSerialPortInfo port : QSerialPortInfo::availablePorts())
    {
        //Their is some sorting to do for just list the port I want, with vendor Id & product Id
        //qDebug() << port.portName();
        //<< port.vendorIdentifier() << port.productIdentifier()
        //<< port.hasProductIdentifier() << port.hasVendorIdentifier() << port.isBusy();
        ports += port.portName();
    }
    return ports;
}



