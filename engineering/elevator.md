// file name: elevator.md
// created by: ben silbernagel
// purpose: to pseudocode a properly working elevator

// A call deals with the up and down call buttons on each floor
// A request deals with the floor buttons inside the elevator
// Adding items to lists in a sorted manner based of direction, so the right floor is on top of the list

CurrentDirection = true // true == up, false == down
CurrentFloor = 0 // floor range 0 to 24
CurrentStatus = idle
ServiceList = {}  // list of calls/requests that are currently being worked on
UpQue = {} // list of calls/requests that are going up that are waiting to be worked on
DownQue = {} // list of calls/requests going down that are waiting to be worked on

PROGRAM Elevator:
    
    WHILE CurrentStatus equals dedicated:
        IF ServiceList is not empty
            GoToFloor
            SlowDownIfNecessary
            AtFloor
        ELSE
            IF opposite direction que is not empty
                switch CurrentDirection
                move opposite direction que to the ServiceList
                move current direction que to the opposite direction que
            ELSE
                IF current direction que is not empty
                    move current direction que to ServiceList
                ELSE
                    switch status to idle
    
    WHILE CurrentStatus equals idle:
        IF a call or request comes in
            switch status to dedicated

END

PROGRAM GoToFloor
    IF CurrentDirection equals true // UP
            "go up full speed" to lowest destination floor
    ELSE
            "go down full speed" to highest destination floor
END

PROGRAM AtFloor
    IF current floor equals ServiceList[0] & IF currently at floor (instead of in-between floors)
        OpenDoorButton
        Remove floor from the service list
        Wait x amount of time for loading and unloading
        IF the open door button is pressed
            OpenDoorButton
        ELSE
            CloseDoorButton
        IF the close door button is pressed
            CloseDoorButton
END

// Adding items to lists in a sorted manner based of direction, so the right floor is on top of the list

PROGRAM CallHandling
    IF call direction equals current direction
        IF call floor is within the range of the current floor and the last floor in that direction
            Add call to service list 
        ELSE Add call to current direction que
    ELSE
        Add call information to opposite direction que
END

PROGRAM RequestHandling
    IF request direction equals current direction
        Add call to service list
    ELSE
        Add request information to opposite direction que
END

PROGRAM SlowDownIfNecessary
    IF we are traveling up at full speed
        IF we are only 1 floor away from the lowest destination floor
            slow down
        END
    ELSE IF we are traveling down at full speed
        IF we are only 1 floor away from the highest destination floor
            slow down
        END
    END
END

PROGRAM OpenDoorButton
    IF currently at floor (instead of in-between floors)
        open elevator door
    ELSE
        close elevator door
END

PROGRAM CloseDoorButton
    IF a human is in the door closing path
        open elevator door
        wait 5 seconds and retry ClosingDoor
    ELSE:
        close elevator door
END