# SOC Lab – Photon OS (OVA) + Docker

Questo file contiene TUTTE le istruzioni necessarie per creare l’ambiente di laboratorio.  
Photon OS viene utilizzato come macchina virtuale in formato OVA e Docker viene usato per eseguire il laboratorio tramite container.  

Scaricare Photon OS in formato OVA dal sito ufficiale VMware:  
https://github.com/vmware/photon/wiki/Downloading-Photon-OS  
Selezionare Photon OS OVA (ultima versione stabile, v15).  

Accedere all’ESXi Host Client tramite browser:  
https://IP_ESXI/ui  

Importare la OVA seguendo il percorso:  
Virtual Machines → Create / Register VM → Deploy a virtual machine from an OVF or OVA file.  
Selezionare il file Photon-OS.ova, accettare tutte le opzioni di default e completare il wizard.  
Assicurarsi di impostare:  
CPU: 2 vCPU  
RAM: 3GB  

Accendere la macchina virtuale (Power On) e aprire la console.  

Accedere a Photon OS con le credenziali di default:  
username: root  
password: changeme 
(al primo accesso verrà richiesto di cambiare la password)  

Aggiornare il sistema operativo:  
tdnf update -y  

Eseguire i seguenti comandi per abilitare Docker:  
systemctl enable docker  
systemctl start docker  

Verificare che docker sia attivo:
docker info  

Installare git:  
tdnf install -y git  

Scaricare sulla VM appena installata i file necessari al laboratorio con il comando:  
git clone https://github.com/paolobelloni-its/soc-lab.git    

e spostarsi nella cartella opportuna:  
cd soc-lab  

Per abilitare il laboratorio, eseguire i comandi seguenti:  
docker build -t soc-lab:1 .  
docker run --rm -it soc-lab:1  

# SOC Lab – Scopo e metodo  

Lo scopo del laboratorio e' capire cosa succede su ESXi quando si la lanciano i 3 test scaricati.  
Scegliere ogni test dal menu e, osservando i tool di monitoring che ESXi mette a disposizione, si chiede di capire cosa sta avvenendo sulla macchina host.  

