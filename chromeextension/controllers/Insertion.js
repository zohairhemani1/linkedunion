(function(){function _subscribeToEnableDisable(){chrome.extension.onRequest.addListener(function(request,sender,sendResponse){var uri=location.href;switch(request.action){case"enable":break;case"disable":uri=uri.replace(/enableripple=[^&]*[&]?/i,"").replace(/[\?&]*$/,"");break;default:throw{name:"MethodNotImplemented",message:"Requested action is not supported!"}}if(location.href!==uri){location.href=uri}else{location.reload()}})}function _enableBus(){document.addEventListener("bus-init",function(e){var send=document.getElementById("bus-send"),receive=document.getElementById("bus-receive");send.addEventListener("DOMNodeInserted",function(evt){var action=evt.target.dataset.msg,data=JSON.parse(evt.target.textContent);chrome.extension.sendRequest({action:action,data:evt.target.textContent},function(response){var m=document.createElement("span");m.dataset.msg=evt.target.dataset.callback;m.innerHTML=JSON.stringify(response);receive.appendChild(m)})})})}_subscribeToEnableDisable();chrome.extension.sendRequest({action:"isEnabled",tabURL:location.href},function(response){if(response.enabled){_enableBus()}})})();