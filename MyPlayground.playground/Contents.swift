func passw_generator() {
    
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    
    let password = alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)]
    
    print(password)
    
}




//Happy New Year 2023!
