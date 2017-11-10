init
	state   5 -(tr  52)-> state   2  [id   0 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:40 => carPID[1] = run Car(1)
	state   2 -(tr  53)-> state   3  [id   1 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:41 => carPID[2] = run Car(1)
	state   3 -(tr  54)-> state   4  [id   2 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:42 => isInBarrier[carPID[1]] = 0
	state   4 -(tr  55)-> state   6  [id   3 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:43 => isInBarrier[carPID[2]] = 0
	state   6 -(tr  56)-> state   0  [id   5 tp 3500] [--e-L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:51 => -end-
proctype CarController
	state  37 -(tr   1)-> state   6  [id   6 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:58 => (1)
	state  37 -(tr   1)-> state  15  [id  15 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:58 => (1)
	state   6 -(tr  33)-> state   3  [id   7 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:59 => ((onOffSwitch>0))
	state   3 -(tr  34)-> state   5  [id   8 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:59 => onOffSwitch = (onOffSwitch-1)
	state   5 -(tr   1)-> state   7  [id  10 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:59 => .(goto)
	state   7 -(tr  35)-> state   9  [id  12 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:60 => isOn = 1
	state   9 -(tr  36)-> state  37  [id  13 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:61 => onOffSwitch = (onOffSwitch+1)
	state  15 -(tr  37)-> state  12  [id  16 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:64 => ((onOffSwitch>0))
	state  12 -(tr  38)-> state  14  [id  17 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:64 => onOffSwitch = (onOffSwitch-1)
	state  14 -(tr   1)-> state  16  [id  19 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:64 => .(goto)
	state  16 -(tr  39)-> state  21  [id  21 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:65 => isOn = 0
	state  21 -(tr  40)-> state  18  [id  22 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:66 => ((entryExitProtocol>0))
	state  18 -(tr  41)-> state  20  [id  23 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:66 => entryExitProtocol = (entryExitProtocol-1)
	state  20 -(tr   1)-> state  35  [id  25 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:66 => .(goto)
	state  35 -(tr  42)-> state  23  [id  27 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:69 => ((numberCarsAtBarrier>0))
	state  35 -(tr  48)-> state  32  [id  35 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:69 => (!((numberCarsAtBarrier>0)))
	state  23 -(tr  43)-> state  24  [id  28 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:70 => temp = (numberCarsAtBarrier-1)
	state  24 -(tr  44)-> state  25  [id  29 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:71 => numberCarsToAwake = temp
	state  25 -(tr  45)-> state  27  [id  30 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:72 => numberCarsAtBarrier = 0
	state  27 -(tr  46)-> state  29  [id  31 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:73 => onOffSwitch = (onOffSwitch+1)
	state  29 -(tr  47)-> state  37  [id  33 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:74 => awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)
	state  32 -(tr  49)-> state  34  [id  36 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:77 => entryExitProtocol = (entryExitProtocol+1)
	state  34 -(tr  50)-> state  37  [id  38 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:78 => onOffSwitch = (onOffSwitch+1)
proctype Car
	state  63 -(tr   1)-> state   2  [id  46 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:92 => (1)
	state   2 -(tr   1)-> state   7  [id  47 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:96 => (1)
	state   7 -(tr   1)-> state   4  [id  48 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:100 => (1)
	state   7 -(tr   1)-> state  10  [id  50 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:100 => (1)
	state   4 -(tr   1)-> state   7  [id  49 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:100 => (1)
	state  10 -(tr   6)-> state  53  [id  55 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:106 => isInBarrier[_pid] = 1
	state  53 -(tr   7)-> state  16  [id  56 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:109 => (isOn)
	state  53 -(tr  30)-> state  52  [id  96 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:109 => (!(isOn))
	state  16 -(tr   8)-> state  13  [id  57 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:110 => ((entryExitProtocol>0))
	state  13 -(tr   9)-> state  15  [id  58 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:110 => entryExitProtocol = (entryExitProtocol-1)
	state  15 -(tr   1)-> state  49  [id  60 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:110 => .(goto)
	state  49 -(tr  10)-> state  18  [id  62 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:112 => (isOn)
	state  49 -(tr  28)-> state  48  [id  91 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:112 => (!(isOn))
	state  18 -(tr  11)-> state  19  [id  63 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:113 => temp = (numberCarsAtBarrier+1)
	state  19 -(tr  12)-> state  44  [id  64 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:114 => numberCarsAtBarrier = temp
	state  44 -(tr  13)-> state  21  [id  65 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:116 => ((numberCarsAtBarrier==2))
	state  44 -(tr  18)-> state  28  [id  71 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:116 => (!((numberCarsAtBarrier==2)))
	state  21 -(tr  14)-> state  22  [id  66 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:117 => temp = (numberCarsAtBarrier-2)
	state  22 -(tr  15)-> state  23  [id  67 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:118 => numberCarsToAwake = temp
	state  23 -(tr  16)-> state  25  [id  68 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:119 => numberCarsAtBarrier = 0
	state  25 -(tr  17)-> state  55  [id  69 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:120 => awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)
	state  55 -(tr  31)-> state  60  [id 100 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:148 => isInBarrier[_pid] = 0
	state  60 -(tr   1)-> state  57  [id 101 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:151 => (1)
	state  60 -(tr   1)-> state  63  [id 103 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:151 => (1)
	state  57 -(tr   1)-> state  60  [id 102 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:151 => (1)
	state  28 -(tr  19)-> state  33  [id  72 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:123 => entryExitProtocol = (entryExitProtocol+1)
	state  33 -(tr  20)-> state  30  [id  74 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:124 => ((awaitAllCarsAtBarrier>0))
	state  30 -(tr  21)-> state  32  [id  75 tp   2] [A---G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:124 => awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier-1)
	state  32 -(tr   1)-> state  42  [id  77 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:124 => .(goto)
	state  42 -(tr  22)-> state  35  [id  79 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:126 => ((numberCarsToAwake>0))
	state  42 -(tr  26)-> state  41  [id  84 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:126 => (!((numberCarsToAwake>0)))
	state  35 -(tr  23)-> state  36  [id  80 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:127 => temp = (numberCarsToAwake-1)
	state  36 -(tr  24)-> state  38  [id  81 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:128 => numberCarsToAwake = temp
	state  38 -(tr  25)-> state  55  [id  82 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:129 => awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)
	state  41 -(tr  27)-> state  55  [id  85 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:132 => entryExitProtocol = (entryExitProtocol+1)
	state  48 -(tr  29)-> state  55  [id  92 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:137 => entryExitProtocol = (entryExitProtocol+1)
	state  52 -(tr   1)-> state  55  [id  97 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:140 => (1)
claim passBarrier
	state   5 -(tr   3)-> state  10  [id 112 tp   2] [----G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:3 => (((!((Car[carPID[1]]._p==afterBarrier))&&(isInBarrier[carPID[1]]&&isInBarrier[carPID[2]]))&&isOn))
	state   5 -(tr   1)-> state   5  [id 114 tp   2] [----L] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:3 => (1)
	state  10 -(tr   4)-> state  10  [id 119 tp   2] [-a--G] /home/jesper/SuperCarController3000/SPIN/Part3-a.pml:8 => ((!((Car[carPID[1]]._p==afterBarrier))&&isOn))

Transition Type: A=atomic; D=d_step; L=local; G=global
Source-State Labels: p=progress; e=end; a=accept;

pan: elapsed time 1.72e+07 seconds
pan: rate         0 states/second
