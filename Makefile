CC = gcc
CFLAGS = -Wall -lcurl
OBJDIR = obj
SRCDIR = src

CLIENT_SRC = $(SRCDIR)/client.c
CLIENT_OBJ = $(OBJDIR)/client.o

DAEMON_SRC = $(SRCDIR)/daemon.c
DAEMON_OBJ = $(SRCDIR)/daemon.o

CLIENT = $(OBJDIR)/remoteCMD-client
SERVER = $(OBJDIR)/remoteCMD-daemon


#remoteCMD: $(CLIENT) $(SERVER)


#$(CLIENT): $(CLIENT_OBJ) 
#	$(CC) $(CLIENT_OBJ) -o $(CLIENT) $(CFLAGS)

#$(DAEMON): $(DAEMON_OBJ)
#	$(CC) $(DAEMON_OBJ) -o $(DAEMON) $(CFLAGS)

#$(CLIENT_OBJ): $(CLIENT_SRC)
#	$(CC) -c $(CLIENT_SRC) -o $(CLIENT_OBJ)

#$(DAEMON_OBJ): $(DAEMON_OBJ)
#	$(CC) -c $(DAEMON_SRC) -o $(DAEMON_OBJ)

#clean:
#	rm $(OBJDIR)/*.o

#delete: clean
#	rm $(DEAMON) $(CLIENT)
