int socket;
int OnInit()
  {
   socket=SocketCreate();
   return(INIT_SUCCEEDED);
  }

void OnDeinit(const int reason)
  {
   SocketClose(socket);  
  }

void OnTick()
{
  socket=SocketCreate();
  if(socket!=INVALID_HANDLE) 
  {
     if(SocketConnect(socket,"127.0.0.1",9090,1000)) 
       {
        Print("Connected to "," 127.0.0.1",":",9090);
       }  
     else
       {
        Print("Connection ","127.0.0.1",":",9090," error ",GetLastError());
       }
  SocketClose(socket); 
  }
 else Print("Socket creation error ",GetLastError());
}
pythonsocketsmql