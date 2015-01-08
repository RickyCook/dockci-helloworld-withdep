import socket
import unittest

class TestEchoService(unittest.TestCase):

    def setUp(self):
        self.sock = socket.socket()
        self.sock.connect(('echoservice', 7000))
        self.sock.settimeout(2)

    def test_basic(self):
        data = 'hey! this is the test string\n'.encode()
        self.sock.send(data)
        self.assertEqual(self.sock.recv(100), data)


if __name__ == '__main__':
    unittest.main()
