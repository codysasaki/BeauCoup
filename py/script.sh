for gamma in `seq 0.1 0.1 0.9`;
  do
    python3 BeauCoup/py/compiler.py --gamma=$gamma queries.yaml IR_${gamma}.json
    for seed in `seq 1 16`;
      do
	      python3 BeauCoup/py/simulator.py --seed=$seed IR_${gamma}.json /path/to/trace.npy outputs/report_gamma_${gamma}_seed_${seed}.npz
      done
  done
