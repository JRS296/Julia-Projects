clear() = run(`cmd /c cls`)

function calc()
    while true
        println("\n    Simple CLI Calculator Tool Using Julia")
        println("-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n\n")
        println("(press any key to continue)\n")
        readline()
        println("Number 1: ")
        x = parse(Int64, readline())
        println("Number 2: ")
        y = parse(Int64, readline())
        println("\nEnter + to add:")
        println("\nEnter - to sub:")
        println("\nEnter * to mul:")
        println("\nEnter / to div:")
        println("\nEnter ^ to exp:")
        println("\n(blank to exit)")
        input = readline()
        if input == ""
            break
        end
        ans = 0
        if input == "+"
            ans = x + y
        end
        if input == "-"
            ans = x - y
        end
        if input == "*"
            ans = x * y
        end
        if input == "^"
            ans = x ^ y
        end
        if input == "/"
            if y == 0
                println("\nDivision not possible, Division by 0, terminating Session")
                continue
            end
            ans = x / y
        end
        println("\nANSWER: ",ans)
        println("\nDo you wish to calculate again? [Y|N]")
        input = readline()
        if input == 'Y' || input == 'y'
            clear()
            continue
        else
            clear()
            break
        end
    end

    println("\nSession completed. Thanks for using our pretty dumb Calculator xD")
    println("\n(press any key to exit)")
end