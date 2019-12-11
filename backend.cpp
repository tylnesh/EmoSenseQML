#include "backend.h"
#include <QDebug>
#include <QtSerialPort/QSerialPortInfo>
#include <include/zhelpers.hpp>
#include <QFile>
#include <QDateTime>
#include <QTime>
#include <random>
#include <ctime>
#include <QProcess>


zmq::context_t contextAffectiva(1);
zmq::socket_t subscriber(contextAffectiva, ZMQ_SUB);
QFile measurement;
QTime t;
long long ms;



BackEnd::BackEnd(QObject *parent) : QObject(parent)
{

}




QList<QString> BackEnd::questionnaire1() {
    return m_questionnaire1;
}

void BackEnd::setQuestionnaire1(const QList<QString> &questionnaire1){
    if (questionnaire1 == m_questionnaire1)
        return;

    m_questionnaire1 = questionnaire1;
    qDebug() << m_questionnaire1;
    emit questionnaire1Changed();

}


QList<QString> BackEnd::questionnaire2() {
    return m_questionnaire2;
}

void BackEnd::setQuestionnaire2(const QList<QString> &questionnaire2){
    if (questionnaire2 == m_questionnaire2)
        return;

    m_questionnaire2 = questionnaire2;
    emit questionnaire2Changed();

}


int BackEnd::pictureCount()
{
    return m_pictureCount;
}

void BackEnd::setPictureCount(const int &pictureCount)
{
    if (pictureCount == m_pictureCount)
        return;

    m_pictureCount = pictureCount;
    qDebug() << "Picture count: " << m_pictureCount;
    emit pictureCountChanged();
}



QString BackEnd::subjectId()
{
    return m_subjectId;
}

void BackEnd::setSubjectId(const QString &subjectId)
{
    if (subjectId == m_subjectId)
        return;

    m_subjectId = subjectId;
    qDebug() << "Subject Id: " << m_subjectId;
    emit subjectIdChanged();
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

QString BackEnd::subjectSex()
{
    return m_subjectSex;
}

void BackEnd::setSubjectSex(const QString &subjectSex){
    if (subjectSex == m_subjectSex)
        return;

    m_subjectSex = subjectSex;
    qDebug() << "Subject sex: " << m_subjectSex;
    emit subjectSexChanged();
}


QString BackEnd::subjectEducation()
{
    return m_subjectEducation;
}

void BackEnd::setSubjectEducation(const QString &subjectEducation)
{
    if (subjectEducation == m_subjectEducation)
        return;
    m_subjectEducation = subjectEducation;
    emit subjectEducationChanged();
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
    return m_affectivaIP;
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

QString BackEnd::currentPicture()
{

    return m_currentPicture;
}

QString BackEnd::currentVideo()
{

    return m_currentVideo;
}

void BackEnd::setVideosFolderPath(const QString &videosFolderPath)
{
    if (videosFolderPath == m_videosFolderPath)
        return;

    m_videosFolderPath = videosFolderPath;
    qDebug() << "Videos Folder Path: " << m_videosFolderPath;
    emit videosFolderPathChanged();
}

void BackEnd::setCurrentPicture(const QString &currentPicture)
{
    if (currentPicture == m_currentPicture)
        return;

    m_currentPicture = currentPicture;
    qDebug() << "Current Picture: " << m_currentPicture;
    emit currentPictureChanged();
}


void BackEnd::setCurrentVideo(const QString &currentVideo)
{
    if (currentVideo == m_currentVideo)
        return;

    m_currentVideo = currentVideo;
    qDebug() << "Current Videos: " << m_currentVideo;
    emit currentVideoChanged();
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
        ports += port.systemLocation();
    }
    return ports;
}

void BackEnd::connectAll()
{
        t.start();
        ms = t.elapsed();
        qDebug() << "ms: " << ms;
        QString address = "tcp://" + affectivaIP();
        subscriber.connect(address.toUtf8().constData());
        subscriber.setsockopt( ZMQ_SUBSCRIBE, "aff", 3);

        connect(&m_affectivaTimer, &QTimer::timeout, this, &BackEnd::readAffectiva);
        m_affectivaTimer.start(20);

        connect(&m_fileWriterTimer, &QTimer::timeout, this, &BackEnd::handleWriting);
        m_fileWriterTimer.start(20);
}





void BackEnd::readButtons()
{
    QString tmp = QString(buttonsPort->readAll());

    if (tmp.isEmpty()) qDebug() << "buttons serial is empty";
    qDebug() << "Buttons tmp: " << tmp.toInt();
    m_readButtons =  tmp;
       if (!m_buttonsTimer.isActive())
           m_buttonsTimer.start(20);
}

void BackEnd::readSensors()
{
    QString tmp = QString(sensorsPort->readAll());

    if (tmp.isEmpty()) qDebug() << "Sensors serial is empty";
    qDebug() << "Sensors tmp: " << tmp;
    m_readSensors = tmp;
       if (!m_sensorsTimer.isActive())
           m_sensorsTimer.start(20);
}

void BackEnd::readAffectiva()
{
    QString tmp = QString::fromStdString(s_recv(subscriber).data()) ;
    if (tmp != "aff" && tmp != "") m_readAffectiva = tmp;

       if (!m_affectivaTimer.isActive())
           m_affectivaTimer.start(20);
}



void BackEnd::handleError(QSerialPort::SerialPortError serialPortError)
{
    if (serialPortError == QSerialPort::ReadError) {
      //  qDebug(QObject::tr("An I/O error occurred while reading the data from port %1, error: %2").arg(serial->portName()).arg(serial->errorString()));
    }
}

void BackEnd::handleWriting() {

    //static QTime time(QTime::currentTime());

    QTextStream measurementStream( &measurement );

   measurementStream << m_readAffectiva <<";"<< ";" <<  ";" << t.elapsed() << endl;

}

QList<int> BackEnd::getShuffledIndexes(){

    std::random_device rd;
        std::mt19937 g(rd());

    QList<int> ind;
    for (int i = 0; i<pictureCount(); i++) ind.append(i);
    std::shuffle(ind.begin(),ind.end(),g);
    qDebug() << "getShuffledIndexes() :" << ind;



    QList<int> newList(ind.mid(0,100));


    return newList;

}

QList<int> BackEnd::shuffleIndexes(){

    QList<int> indexes;
    indexes.append(getShuffledIndexes());
    qDebug() << "indexes: " << indexes;
    return indexes;
}


int BackEnd::samValence()
{
    return m_samValence;
}

void BackEnd::setSamValence(const int &samValence)
{
    if (samValence == m_samValence)
        return;

    m_samValence = samValence;
    qDebug() << "SAM VALENCE: " << m_samValence;
    emit samValenceChanged();
}

int BackEnd::samBelief()
{
    return m_samBelief;
}

void BackEnd::setSamBelief(const int &samArousal)
{
    if (samArousal == m_samBelief)
        return;

    m_samBelief = samArousal;
    qDebug() << "SAM AROUSAL: " << m_samBelief;
    emit samBeliefChanged();
}

void BackEnd::writeQ1(){
    QTextStream q(&measurement);
    q << "questionaire 1" << endl;
    for(const QString& str : questionnaire1()){
        q << str << ";";
    }

    q << endl;

}

void BackEnd::writeQ2(){
    QTextStream q(&measurement);
    q << "questionaire 2" << endl;
    for(const QString& str : questionnaire2()){
        q << str << ";";
    }

    q << endl;
    q << "joy;fear;disgust;sadness;anger;surprise;contempt;valence;engagement;affectivaAgeGroup;affectivaGender;Valence;Believability;Timestamp;TimeToReact;" << endl;

    ms = t.elapsed();

}

void BackEnd::writeFile(){
    QDateTime UTC(QDateTime::currentDateTimeUtc());
    QDateTime local(UTC);
    measurement.setFileName("/home/emosense/Documents/" + subjectId() + "_emotion_pictures_" + local.toString() +".csv");
    measurement.open(QIODevice::ReadWrite);
    QTextStream measurementHeader( &measurement );
    measurementHeader << "id;age;sex;education"<< endl;
    measurementHeader << subjectId() <<";"<< subjectAge() <<";"<< subjectSex() << ";" << subjectEducation() << endl;



}

void BackEnd::writeSAM(){
    QTextStream q(&measurement);
    //static QTime time(QTime::currentTime());

    ms = t.elapsed() - ms;
    q << ";" << ";" << ";" << ";" << ";" << ";" << ";" << ";" << ";"  << ";" << ";"<< samBelief() << ";" << samValence() << ";" << t.elapsed() << ";" << ms << endl ;
    ms = t.elapsed();
}
void BackEnd::writeValence(){
    QTextStream q(&measurement);
    //static QTime time(QTime::currentTime());

    ms = t.elapsed() - ms;
    q << ";" << ";" << ";" << ";" << ";" << ";" << ";" << ";" << ";"  << ";" << ";" << samValence() << ";;" << t.elapsed() << ";" << ms << endl ;
    ms = t.elapsed();
}
void BackEnd::writeBelief(){
    QTextStream q(&measurement);
    //static QTime time(QTime::currentTime());

    ms = t.elapsed() - ms;
    q << ";" << ";" << ";" << ";" << ";" << ";" << ";" << ";" << ";"  << ";" << ";"  << ";" << samBelief() << ";" << t.elapsed() << ";" << ms << endl ;
    ms = t.elapsed();
}
