package proja_test

import (
	"testing"

	"github.com/vladopajic/monorepo-covrage/proja"
)

func Test_Hello(t *testing.T) {
	if proja.Hello() != "hello" {
		t.Error("could not hello")
	}
}
