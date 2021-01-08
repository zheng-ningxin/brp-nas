for leave_one_out in "alex" "mobilenetv1" "vgg" "mobilenetv2" "nasbench201"; do
    python3 -m eagle.predictors --predictor gcn --model nasbench201 --device desktop --cfg configs/predictors/desktop_gcn_nasbench201_latency_dim23.yaml --measurement examples/desktop-cpu-core-i7-7820x-fp32.pkl --leave_one_out $leave_one_out --dataset_path /data/v-yugzh/eagle/Li_latency_data.pickle 2>&1 | tee results/$leave_one_out.log
done
