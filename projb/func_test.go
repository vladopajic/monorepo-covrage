package projb_test

import (
	"testing"

	"github.com/vladopajic/monorepo-covrage/projb"
)

func Test_Hello(t *testing.T) {
	if projb.Hello() != "hello" {
		t.Error("could not hello")
	}
}
