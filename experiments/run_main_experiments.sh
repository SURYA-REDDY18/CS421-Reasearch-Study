cd ..

# Set directories
$result_dir = "./results"
$data_dir = "./data"
$model_save_dir = "./models"

# Run Vicuna experiments
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --model-save-dir $model_save_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --model-save-dir $model_save_dir --use-binary-targets --result-dir $result_dir --lr 0.00001406042367984269 --weight-decay 0.03184622692678102; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name coqa --device cpu --num-training-steps 200 --num-in-context-samples 0 --data-dir $data_dir --model-save-dir $model_save_dir --result-dir $result_dir --lr 0.00008836 --weight-decay 0.0007421; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name coqa --device cpu --num-training-steps 200 --num-in-context-samples 0 --data-dir $data_dir --model-save-dir $model_save_dir --use-binary-targets --result-dir $result_dir --lr 0.00009584 --weight-decay 0.005793; `

# Run GPT-3.5 experiments
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --model-save-dir $model_save_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --model-save-dir $model_save_dir --use-binary-targets --result-dir $result_dir --lr 0.00001222 --weight-decay 0.0009894; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name coqa --device cpu --num-training-steps 200 --num-in-context-samples 0 --data-dir $data_dir --model-save-dir $model_save_dir --result-dir $result_dir --lr 0.00005592 --weight-decay 0.03495; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name coqa --device cpu --num-training-steps 200 --num-in-context-samples 0 --data-dir $data_dir --model-save-dir $model_save_dir --use-binary-targets --result-dir $result_dir --lr 0.00005124 --weight-decay 0.03327
