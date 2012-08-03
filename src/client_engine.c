#include "client_engine.h"
#include <curl/curl.h>
#include <string.h>

void sendCMD(char *cmd){

	CURL *handle=curl_easy_init();
	char url[2000]={'\0'};
	sprintf(url,"%s%s","http://localhost/remoteCMD/server.php?setcmd=",cmd);
	if(handle){
		curl_easy_setopt(handle,CURLOPT_URL,url);
		curl_easy_perform(handle);
		curl_easy_cleanup(handle);
	}else printf("\n\tConnection Problem\n");
}
