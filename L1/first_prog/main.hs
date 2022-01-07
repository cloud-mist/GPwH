toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ".\n"
fromPart author = "Thanks,\n" ++ author

createEmail recipient bookTitle author = toPart recipient ++
                                         bodyPart bookTitle ++
                                         fromPart author


main = do
    print "who is the email for?"
    recipient <- getLine

    print "what is the Title?"
    title <- getLine

    print "who is the Author?"
    author <- getLine

    print(createEmail recipient title author)

