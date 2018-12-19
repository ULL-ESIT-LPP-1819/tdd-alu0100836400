class Array
    def iterate!(code)
        self.each_with_index do |n, i|
            self[i] = code.call(n)
        end
    end
end

puts [1,2,3].iterate!(->(n)(n**2))