package main

import (
	"context"
	"log"
	"net"

	"gihub.com/plenahan/dummysports/wager"
	"google.golang.org/grpc"
)

type myInvoicerServer struct {
	wager.UnimplementedInvoicerServer
}

func (s myInvoicerServer) Create(ctx context.Context, req *wager.CreateRequest) (*wager.CreateResponse, error) {
	win := req.Bet.Line > 5.5
	var payout int64
	if win {
		payout = req.Amount.Amount * 100
	} else {
		payout = 0
	}
	return &wager.CreateResponse{
		Win:    win,
		Payout: payout,
	}, nil
}

func main() {
	lis, err := net.Listen("tcp", ":8089")
	if err != nil {
		log.Fatalf("cannot create listener: %s", err)
	}
	serverRegistrar := grpc.NewServer()
	service := &myInvoicerServer{}
	wager.RegisterInvoicerServer(serverRegistrar, service)
	err = serverRegistrar.Serve(lis)
	if err != nil {
		log.Fatalf("impossible to serve: %s", err)
	}
}
