from ftplib import FTP

ftp=FTP('speedtest.tele2.net','anonymous','anonymous') 
files=ftp.nlst()
ftp.quit()
with open('files.txt','w+') as txt:
        for file in files:
                txt.writelines(f'{file}\n')
