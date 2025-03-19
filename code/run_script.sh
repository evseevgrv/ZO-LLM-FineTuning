python run.py --model_name=facebook/opt-1.3b --task_name=SST2 --output_dir=result/SST2-ft-$TAG --num_train_epochs=5 \
--per_device_train_batch_size=16 --load_best_model_at_end --evaluation_strategy=steps --save_strategy=steps \
--save_total_limit=1 --eval_steps=1000 --max_steps=20000 --logging_steps=10 --num_eval=1000 --num_train=1000 \
--num_dev=500 --train_as_classification --perturbation_mode=two_side --trainer=zo_sgd --train_set_seed=0 \
--lr_scheduler_type=constant --save_steps=1000 --load_float16 --learning_rate=1e-8 --zo_eps=0.001 --momentum=0.9 
--weight_decay=0 --module_wise_perturbation=True