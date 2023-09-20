accelerate launch --mixed_precision=fp16 --multi_gpu train/train_sd_reference_only_controlnet_aux.py \
    --ddp_find_unused_parameters \
    --controlnet_aux_processor_id="scribble_hed" \
    --pretrained_model_name_or_path='/data/aihao/workspace/DeepLearningContent/models/sd_reference_only/init_0.1' \
    --dataset_name='/data/aihao/workspace/DeepLearningContent/datasets/characters' \
    --dataset_config_name='similar_pairs' \
    --train_data_dir='/data/aihao/workspace/DeepLearningContent/datasets/characters' \
    --load_dataset_num_proc=48 \
    --dataset_map \
    --dataloader_num_workers=12 \
    --output_dir="/data/aihao/workspace/DeepLearningContent/models/sd_reference_only/scribble_hed_0.1.1" \
    --tracker_project_name='scribble_hed' \
    --report_to="tensorboard" \
    --train_batch_size=25 \
    --max_train_steps=200000 \
    --learning_rate=5e-5 \
    --checkpointing_steps=1000 \
    --validation_steps=1000 \
    --validation_prompt "validation_images/1/1_capture.png" "validation_images/2/1_capture.png" "validation_images/3/1_capture.png" "validation_images/4/1_capture.png" \
    --validation_blueprint "validation_images/1/2_scribble_hed.jpg" "validation_images/2/2_scribble_hed.png" "validation_images/3/2_scribble_hed.png" "validation_images/4/2_scribble_hed.jpg" \
    --use_8bit_adam \
    --enable_xformers_memory_efficient_attention \
    --seed 2221101 \
    --mixed_precision=fp16 \
    --train_image_encoder \
    --resolution=256
# --resume_from_checkpoint="latest"
