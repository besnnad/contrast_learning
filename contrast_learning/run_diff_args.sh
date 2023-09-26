model=$1
for batch_size in 32 64 128:
do
for lr in 0.0001 0.0005 0.001 0.005 0.01 0.1:
do
	python main_ce_baseline.py --epoch 50 --model $model --data moore --lr $lr --batch_size $batch_size --n_data_train 260000 --activation relu
done
done
