package main

import (
	"log"
	"os"
	"os/signal"
	"syscall"

	"github.com/datahattrick/twistyapps/internal/http"
	"github.com/datahattrick/twistyapps/internal/logger"
	"github.com/datahattrick/twistyapps/internal/utils"
)

// @title			twistytapps
// @version		0.1
// @description	    Welcome to TWISTYtasks your home for everything tasks related. For more information, please visit our home at [https://insertname.here](https://insertname.here).
// @description			You can help us improve our API and Application by submitting feature requests at [https://insertticketsite.here](https://insertticketsite.here).
// @description	 		For any issues or bugs please help us by providing a ticket here at [https://insertticketsite.here](https://insertticketsite.here)
//
// @schemes		http https
// @host			localhost:8000
// @host			https://insertdomain.here/api/v1
// @BasePath		/api/v1
func main() {
	l := logger.New("goapp", "v1.0.0", 1)
	logger.UpdateDefaultLogger(l)

	cfg := utils.Config{}
	//utils.Validator()

	//Read config this will generate defaults if fail
	err := utils.LoadDotEnvFile(&cfg)
	if err != nil {
		log.Fatal("Need settings", err)
	}
	// Connect to the database
	//utils.ConnectDB()

	server := http.NewServerHTTP(&cfg)

	// Channel for sending server shutdown signal
	signalCh := make(chan os.Signal, 1)
	signal.Notify(signalCh, os.Interrupt, syscall.SIGTERM)

	// Start server in seperate go routine
	go func() {
		server.Start(&cfg)
	}()

	// recieving server shutdown signal
	sig := <-signalCh
	log.Println("Received signal : ", sig)

	// Graceful shutdown
	if err := server.ShutDown(); err != nil {
		log.Fatalf("Server shutdown failed: %v\n", err)
	}

}
