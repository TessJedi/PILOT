# first finetune：
# python run.py \
#     --output_dir=./saved_models/train_1 \
#     --model_type=roberta \
#     --tokenizer_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --do_train_1\
#     --labels_file=./data/data_result/ \
#     --label_ratio  0.3 \
#     --train_data_file=./data/data_preprocessed/train.txt \
#     --eval_data_file=./data/data_preprocessed/valid.txt \
#     --test_data_file=./data/data_preprocessed/test.txt \
#     --epoch 2 \
#     --block_size 512 \
#     --train_batch_size 32 \
#     --eval_batch_size 64 \
#     --learning_rate 2e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456  2>&1 | tee train1.log 

# execute the first step：
# python run.py \
#     --output_dir=./saved_models/train_1 \
#     --model_type=roberta \
#     --tokenizer_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --do_step1\
#     --labels_file=./data/data_result/ \
#     --label_ratio  0.3 \
#     --train_data_file=./data/data_preprocessed/train.txt \
#     --eval_data_file=./data/data_preprocessed/valid.txt \
#     --test_data_file=./data/data_preprocessed/test.txt \
#     --epoch 2 \
#     --P_num 10018 \
#     --N_num 11836 \
#     --block_size 512 \
#     --train_batch_size 32 \
#     --eval_batch_size 64 \
#     --learning_rate 2e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456  2>&1 | tee step1.log 

# second finetune：
# python run.py \
#     --output_dir=./saved_models/train_2 \
#     --model_type=roberta \
#     --tokenizer_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --do_train_2\
#     --labels_file=./data/data_result/ \
#     --label_ratio  0.3 \
#     --train_data_file=./data/data_preprocessed/train.txt \
#     --eval_data_file=./data/data_preprocessed/valid.txt \
#     --test_data_file=./data/data_preprocessed/test.txt \
#     --epoch 2 \
#     --block_size 512 \
#     --train_batch_size 32 \
#     --eval_batch_size 64 \
#     --learning_rate 2e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456  2>&1 | tee train2.log 

# iterative finetune：
# python run.py \
#     --output_dir=./saved_models/train_2 \
#     --model_type=roberta \
#     --tokenizer_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --do_train_iterative\
#     --labels_file=./data/data_result/ \
#     --label_ratio  0.3 \
#     --train_data_file=./data/data_preprocessed/train.txt \
#     --eval_data_file=./data/data_preprocessed/valid.txt \
#     --test_data_file=./data/data_preprocessed/test.txt \
#     --epoch 2 \
#     --P_num 10018 \
#     --N_num 11836 \
#     --block_size 512 \
#     --train_batch_size 32 \
#     --eval_batch_size 64 \
#     --learning_rate 2e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456  2>&1 | tee train_iterative.log

# third finetune：
python run.py \
    --output_dir=./saved_models/Model_add/train_3 \
    --model_type=roberta \
    --tokenizer_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --do_train_3\
    --labels_file=./data/data_result/ \
    --label_ratio  0.3 \
    --train_data_file=./data/data_preprocessed/train.txt \
    --eval_data_file=./data/data_preprocessed/valid.txt \
    --test_data_file=./data/data_preprocessed/test.txt \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 32 \
    --eval_batch_size 64 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456  2>&1 | tee train3.log