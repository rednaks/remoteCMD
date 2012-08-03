CC = gcc
CFLAGS = -Wall -lcurl
OBJDIR = obj
SRCDIR = src

CLIENT_SRC = $(SRCDIR)/client.c
CLIENT_OBJ = $(OBJDIR)/client.o
CLIENT_ENG = $(OBJDIR)/client_engine.o

DAEMON_SRC = $(SRCDIR)/daemon.c
DAEMON_OBJ = $(OBJDIR)/daemon.o
DAEMON_ENG = $(OBJDIR)/daemon_engine.o

CLIENT = $(OBJDIR)/remoteCMD-client
DAEMON = $(OBJDIR)/remoteCMD-daemon


remoteCMD: $(CLIENT) $(DAEMON)
	@echo "Finished"


$(CLIENT): $(CLIENT_OBJ) $(CLIENT_ENG) 
	$(CC) $(CLIENT_OBJ) $(CLIENT_ENG) -o $(CLIENT) $(CFLAGS)

$(DAEMON): $(DAEMON_OBJ) $(DAEMON_ENG)
	$(CC) $(DAEMON_OBJ) $(DAEMON_ENG) -o $(DAEMON) $(CFLAGS)

$(CLIENT_OBJ): $(CLIENT_SRC)
	$(CC) -c $(CLIENT_SRC) -o $(CLIENT_OBJ)

$(DAEMON_OBJ): $(DAEMON_OBJ)
	$(CC) -c $(DAEMON_SRC) -o $(DAEMON_OBJ)

$(CLIENT_ENG): $(SRCDIR)/client_engine.*
	$(CC) -c $(SRCDIR)/client_engine.c -o $(CLIENT_ENG)

$(DAEMON_ENG): $(SRCDIR)/daemon_engine.*
	$(CC) -c $(SRCDIR)/daemon_engine.c -o $(DAEMON_ENG)
clean:
	rm $(OBJDIR)/*.o

delete: clean
	rm $(DEAMON) $(CLIENT)
