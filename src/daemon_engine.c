#include "daemon_engine.h"

char *getCMD(){

	CURL * session = curl_easy_init();
	char url="http://localhost/remoteCMD/server.php?getcmd=1";

	if(session){
    		curl_easy_setopt(session,CURLOPT_URL,url);
    		curl_easy_perform(session);
    		curl_easy_cleanup(session);
    	}else
        printf("erreur lors de l\'initialisation de la fonction curl_easy_init()\n"); 
	return "cmd received";
}
