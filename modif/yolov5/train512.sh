#python3 train.py --img 512 --batch 7 --epochs 400 --data ../yolor/data/coco.yaml --weights runs/train/yolov5_x_512_final/weights/last.pt --hyp data/hyps/hyp.finetune.yaml --name yolov5_x_512_finetune ##runs/evolve/exp2/hyp_evolve.yaml --name yolov5_x_512_final --resume

# Finetune
#python3 train.py --img 512 --batch 7 --epochs 500 --data ../yolor/data/coco.yaml --weights runs/train/yolov5_x_512_final/weights/best.pt --hyp runs/evolve/exp2/hyp_evolve.yaml --name yolov5_x_512_final2

python3 train.py --img 512 --batch 7 --epochs 150 --data ../yolor/data/coco.yaml --weights runs/train/yolov5_x_512_final2/weights/best.pt --hyp runs/evolve/exp2/hyp_evolve.yaml --name yolov5_x_512_final3


#python3 train.py --img 512 --batch 7 --epochs 6 --data ../yolor/data/coco.yaml --weights runs/train/yolov5_x_512_pre/weights/best.pt --hyp runs/evolve/exp2/hyp_evolve.yaml --name yolov5_ev --evolve 22 --resume
#python3 train.py --img 512 --batch 7 --epochs 600 --data ../yolor/data/coco.yaml --weights runs/train/yolov5_x_512_pre/weights/best.pt --hyp runs/evolve/yolov5_ev/hyp_evolve.yaml --name yolov5_x_512_post
