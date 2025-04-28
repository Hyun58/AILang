component CounterPage
    name count = 0

    whatis increment()
        count = count + 1
    end

    show()
        imagine "A counter with a button. When the button is clicked, the number should increase by 1."
    end
end

out CounterPage