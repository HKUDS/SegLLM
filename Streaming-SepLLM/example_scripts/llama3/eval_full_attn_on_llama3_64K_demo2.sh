CUDA_VISIBLE_DEVICES=0  python ../../main/evaluate_streaming_inputs_perplexity.py \
    --model_name_or_path meta-llama/Meta-Llama-3-8B\
    --enable_kv_cache_manager False \
    --enable_SepLLM False \
    --enable_StreamingLLM False \
    --enable_pos_shift False \
    --num_samples 5000000 \
    --num_eval_tokens 65536 \
    --dataset_name pg19 \
    --task default \
    --split test\
    --output_dir ../../outputs/demo/xxx   2>&1 | tee ../../logs/demo/xxx.log
