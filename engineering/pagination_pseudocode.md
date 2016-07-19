// file name: pagination_pseudocode.md
// created by: ben silbernagel
// contact: bensilbernagel@gmail.com
// class: Viking Code School, prep work
// purpose: write pseudocode for the viking inventory search results that creates a pagination feature

PROGRAM DisplayPagination:
    Display the "Previous" word or link
    For EACH number in the list of pages DO
        Display as a link except the current page.  Display the current page as text.
    END
    Display the "Next" word or link
END

PROGRAM DisplayPreviousWordOrLink:
    IF the current page is the first page THEN
        Print the word "Previous"
    ELSE
        Print the word "Previous" with a link to the previous lesson
    END
END

PROGRAM DisplayNumbers:
    IF the current page is the first page THEN
        Display pages 2 & 3 as numbered links

PROGRAM DisplayNextWordOrLink:
        IF the current page is the last page THEN
        Print the word "Next"
    ELSE
        Print the word "Next" with a link to the previous lesson
    END
END


