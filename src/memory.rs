struct MemoryBus {
    memory: [u8; 65536],
}

impl MemoryBus {
    fn read(&self, address: u16) -> u8 {
        self.memory[address as usize]
    }

    fn write(&mut self, adress: u16, value: u8) {
        self.memory[adress as usize] = value;
    }
}
