# M300

## Linux

![Linux](https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Tux.png/220px-Tux.png)

Linux ist ein Kernel, der für ein Betriebssystem zur Verfügung gestellt wird. Linux ist Open Source, deswegen kann man den Kernel erweitern.

Da ich im Geschäft mit Linux und Solaris arbeite, dokumentiere ich hier  ein paar basic-commands die ich häufig verwende:

* cd --> (Change directory) Verzeichnis wird geändert
* ls --> (list) listet der Inhalt in einem Directory an
* pwd --> (print working directory) gibt den aktuellen "Standort" im Dateisystem aus
* mkdir --> (make directory) erstellt Verzeichnis
* rm --> (remove) löscht eine Datei (rmdir bei directory)
* chmod --> (change mode) ändert die Berechtigung
* nano / vi (Dateiname) --> (Anwendungen) öffnet ein Leeres Textfile, dass man bearbeiten kann
* df --> (disk free) zeigt wie viel Speicherplatz im Directory frei resp. besetzt ist 


Das sind natürlich nur ein paar wenige Basic Befehle, man kann diese natürlich auch weiter ausschmücken um effizienter zu arbeiten.

## Virtualisierung
### Was ist eine Virtuelle Maschine?

Eine Virtuelle Maschine, abgekürzt VM, ist ein Computer, so wie wir ihn kennen, nur dass er nicht auf seiner eigenen Hardware "sitzt". Eine VM ist einfach gesagt, ein Computer, der im Computer ist. Die VM bezieht seine Ressourcen vom phyischen Host. Damit VM und Host, im Bezug Ressourcen, zusammenspielen, ist der Hypervisor zuständig. Er ist Vermittler zwischen VM und Host. Der Hypervisor ist eine Software, welche wichtige Elemente, wie Arbeitsspeicher, Prozessor Netzwerkverbindungen und so weiter, an die VM(s) vermittelt.

Es wird dadurch ermöglicht, dass eine VM ein Betriebssystem, unabhängig vom Host-Betriebssystem, beheimaten kann. Das heisst, dass man ein Linux OS auf einem Windows Client mittels Vmware, Hyper-V, Virtualbox, etc. ,laufen lassen kann.

### Hypervisor

Der Hypervisor ist wie bereits erwähnt der Vermittler zwischen VM(s) und dem Host. Aber man muss beachten, es gibt 2 verschiedene Typen von Hypervisoren gibt.

#### Hypervisor Typ 1

Der Typ-1-Hypervisor beinhaltet kein Betriebssystem, er ist eigentlich das Betriebssystem selbst.

Als Beispiel bei Hyper-V, man meint man ist auf einem Windows-Host, wo der Hypervisor installiert ist, aber man ist bereits auf dem Hypervisor selbst.

#### Hypervisor Typ 2

Der Hypervisor Typ 2 ist ein Hypervisor, welcher auf dem Host-OS installiert ist.
Zum Beispiel VMWare oder Virtualbox, kann man als Windows-Client herunterladen und dort VMs hosten.

![Hypervisoren](https://www.nakivo.com/blog/wp-content/uploads/2018/10/Type-1-and-type-2-hypervisor-1024x584.png)

## Git
Git wurde von Linux-Gründer Linux Torvalds entwickelt. Es ist Versionenorientiert. Es macht es mehreren Benutzern möglich, eine einzelne Datei, gleichzeitig zu bearbeiten.


### Repository

![Repository](https://backlog.com/app/themes/backlog-child/assets/img/guides/git/basics/creating_a_repository_001.png)

Bei einem Git-Repository hat man als (Mit-)Bearbeiter mehrere Möglichkeiten, wie folgende:

* Die eigene Arbeit kann einfach wieder in die zentrale Basis integriert werden.
* Es kann zeitgleich weiterentwickelt werden, z.B. jeder an verschiedenen Features.
* Die Versionierung verhindert, dass bereits getätigte Arbeiten verloren gehen bzw. überschrieben werden.
* Bei Bedarf kann zu früheren Versionen zurückgekehrt werden oder simultan an verschiedenen Versionen gearbeitet werden (auch "Branches" genannt).

## Cloud Computing

Es gibt drei verschiedene Arten von Cloud Computing:

#### IaaS (Infrastructure as a Service)

IaaS ist eine Infrastruktur in der Cloud, welche man nutzen kann, um, als Beispiel, Virtuelle Maschinen zu verwalten. Diese Virtuelle Maschinen laufen dann auf dieser Infrastruktur.


#### PaaS (Platform as a Service)

PaaS ist eine Plattform für Entwickler, welche eine Plattform benützen, um zu entwickeln, dabei muss man sich keine Sorgen um die gesamte Infrastruktur machen.


#### SaaS (Software as a Service)

Software als ein Service, kann man sich so vorstellen; die Software muss nicht lokal auf einem Client installiert sein, sondern Eine Applikation, auf der Cloud, die nach aussen hin anbietet.

## Markdown
Markdown ist eine vereinfachte Auszeichnungssprache. Dass man diese Auszeichnungsprache ohne konvertierung lesen kann, war das Ziel, bei der Entwicklung von Markdown.


## Systemsicherheit
### Firewall
Die Firewall ist der Teil im Netzwerk, der das Netzwerk von anderen Netzen trennt. Sie bestimmt die Kommunikationswege. Ob Datenpakete ins Netzwerk rein oder aus dem Netzwerk raus gehen dürfen, entscheidet die Firewall. Das entscheidet sie an der Source, Destination, dem Port und dem Protokoll.

Es gibt folgende Firewall-Typen:

* Application Layer Firewall / Layer 7 – Firewall: Filterung nach Daten-Inhalt → Proxy
* Personal Firewall -->  auf Host lokal die Kommunikation nach Regeln zulässt oder nicht (z.B. Windows Firewall, Comodo Firewall, Avira, Kaspersky ect. )

### Reverse Proxy




## Vagrant
### Was ist Vagrant?

Vagrant ist ein Programm, mit welchem man sehr einfach und effizient Virtuelle Maschinen erstellen kann. Anhand eines Files, des Vagrant Files, lassen sich Konfigurationen an den VM's und Informationen für die Hypervisoren anpassen. Durch die Commands von Vagrant lassen sich die VM's ganz einfach erstellen, booten & löschen.

Als Beispiel hier ein paar Commands:

> <"vagrant Init">  -->    #Erstellt VM

> <"vagrant up">    -->    #Startet VM

> <"vagrant ssh">   -->    #Verbindung per SSH zur VM

> <"vagrant status"> -->   #Status der VM

> <"vagrant port">  -->    #Anzeige weitergeleitete Ports der VM 

> <"vagrant halt">  -->    #stoppt VM

> <"vagrant destroy"> -->  #Löscht die VM


Weitere Informationen zu Vagrant unter diesem [Hyperlink](https://www.vagrantup.com/)

### Vagrant in der Praxis
#### Einleitung

Ich beziehe mich in dieser Aufgabe, voll und ganz am Bewertungsraster der LB2 im BSCW.
Es geht in dieser Aufgabe darum eine Vagrant VM aufzusetzen. Diese VM wird auf das Vagrantfile zurückgreifen, um die Konfigrationen auszulesen.

#### Umgebung

Meine Umgebung soll folgendermassen funktionieren:

![Bild](C:\Users\Terry Peter\Documents\MeinLokalesRepository\M300\LB2\Plan\NW-Plan.png)

Ich habe in diesem Repository unter dem Ordner "LB2/ubuntu" ein Vagrant File erstellt, wo sich die VM befindet.

Den Ordner habe ich ganz einfach Lokal erstellt.
Anschliessend habe ich in git bash in diesem Ordner folgenden vagrant Befehl eingegeben:

> vagrant init ubuntu/trusty64

Das File wurde also erstellt. In diesem File befinden sich die Konfigurationen der VM. Diese Konfigurationen sind in fünf Punkte aufgeteilt, diese sind logischerweise in dem vagrant file zu finden.

* config.vm.box --> OS der VM
* config.vm.provider --> Provider/Hypervisor
* config.vm.network --> Netzwerkkonfigurationen
* config.vm.synced_folder --> Konfigurationen mit Filezugriff
* config.vm.provision --> Konfiguration zum automatisiertes Aufsetzen

Wenn man diese Konfigurationen bearbeitet hat, kann man die VM unter dem richtigen Pfad mit folgendem Command starten:

> vagrant up

Die VM wird nun gestartet und liest dabei die Konfiguration aus dem Vagrant File.





























