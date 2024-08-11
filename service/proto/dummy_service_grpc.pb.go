// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.5.1
// - protoc             v5.27.3
// source: proto/dummy_service.proto

package service

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.64.0 or later.
const _ = grpc.SupportPackageIsVersion9

const (
	DummyService_CreateGroup_FullMethodName = "/DummyService/CreateGroup"
	DummyService_PlaceWager_FullMethodName  = "/DummyService/PlaceWager"
)

// DummyServiceClient is the client API for DummyService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type DummyServiceClient interface {
	CreateGroup(ctx context.Context, in *Grouping, opts ...grpc.CallOption) (*Group, error)
	PlaceWager(ctx context.Context, in *Wager, opts ...grpc.CallOption) (*WagerResult, error)
}

type dummyServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewDummyServiceClient(cc grpc.ClientConnInterface) DummyServiceClient {
	return &dummyServiceClient{cc}
}

func (c *dummyServiceClient) CreateGroup(ctx context.Context, in *Grouping, opts ...grpc.CallOption) (*Group, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(Group)
	err := c.cc.Invoke(ctx, DummyService_CreateGroup_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *dummyServiceClient) PlaceWager(ctx context.Context, in *Wager, opts ...grpc.CallOption) (*WagerResult, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(WagerResult)
	err := c.cc.Invoke(ctx, DummyService_PlaceWager_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// DummyServiceServer is the server API for DummyService service.
// All implementations must embed UnimplementedDummyServiceServer
// for forward compatibility.
type DummyServiceServer interface {
	CreateGroup(context.Context, *Grouping) (*Group, error)
	PlaceWager(context.Context, *Wager) (*WagerResult, error)
	mustEmbedUnimplementedDummyServiceServer()
}

// UnimplementedDummyServiceServer must be embedded to have
// forward compatible implementations.
//
// NOTE: this should be embedded by value instead of pointer to avoid a nil
// pointer dereference when methods are called.
type UnimplementedDummyServiceServer struct{}

func (UnimplementedDummyServiceServer) CreateGroup(context.Context, *Grouping) (*Group, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateGroup not implemented")
}
func (UnimplementedDummyServiceServer) PlaceWager(context.Context, *Wager) (*WagerResult, error) {
	return nil, status.Errorf(codes.Unimplemented, "method PlaceWager not implemented")
}
func (UnimplementedDummyServiceServer) mustEmbedUnimplementedDummyServiceServer() {}
func (UnimplementedDummyServiceServer) testEmbeddedByValue()                      {}

// UnsafeDummyServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to DummyServiceServer will
// result in compilation errors.
type UnsafeDummyServiceServer interface {
	mustEmbedUnimplementedDummyServiceServer()
}

func RegisterDummyServiceServer(s grpc.ServiceRegistrar, srv DummyServiceServer) {
	// If the following call pancis, it indicates UnimplementedDummyServiceServer was
	// embedded by pointer and is nil.  This will cause panics if an
	// unimplemented method is ever invoked, so we test this at initialization
	// time to prevent it from happening at runtime later due to I/O.
	if t, ok := srv.(interface{ testEmbeddedByValue() }); ok {
		t.testEmbeddedByValue()
	}
	s.RegisterService(&DummyService_ServiceDesc, srv)
}

func _DummyService_CreateGroup_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Grouping)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(DummyServiceServer).CreateGroup(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: DummyService_CreateGroup_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(DummyServiceServer).CreateGroup(ctx, req.(*Grouping))
	}
	return interceptor(ctx, in, info, handler)
}

func _DummyService_PlaceWager_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Wager)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(DummyServiceServer).PlaceWager(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: DummyService_PlaceWager_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(DummyServiceServer).PlaceWager(ctx, req.(*Wager))
	}
	return interceptor(ctx, in, info, handler)
}

// DummyService_ServiceDesc is the grpc.ServiceDesc for DummyService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var DummyService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "DummyService",
	HandlerType: (*DummyServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateGroup",
			Handler:    _DummyService_CreateGroup_Handler,
		},
		{
			MethodName: "PlaceWager",
			Handler:    _DummyService_PlaceWager_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/dummy_service.proto",
}
