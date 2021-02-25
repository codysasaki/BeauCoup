for gamma in `seq 0.1 0.1 0.9`;
  do
    python3 ./py/compiler.py --gamma=$gamma query_examples.yaml IR_${gamma}.json
    for seed in `seq 1 16`;
      do
	      python3 ./py/simulator.py --seed=$seed IR_${gamma}.json ./caida0.npy outputs/report_gamma_${gamma}_seed_${seed}.npz
      done
  done
