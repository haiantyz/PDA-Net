python3 train_visual.py --display-port 10801\
                 --display-id 0\
                 --stage 2\
                 --target dukemtmc\
                 --source market1501\
                 --name check_points\
                 --pose-aug gauss\
                 -b 24 -j 4 --niter 25 --niter-decay 25 --lr 0.0005 --save-step 10 \
                 --lambda-recon 100.0 --lambda-veri 10.0 --lambda-sp 0.0 --smooth-label \
                 --eval-step 1\
                 --display-freq 1\
                 --print-freq 1\
                 --netE-pretrain $1/best_net_E.pth\
                 --netG-pretrain $1/best_net_G.pth\
                 --netDi-pretrain $1/best_net_Di.pth\
                 --netDp-pretrain $1/best_net_Dp.pth\
                 --tar-netG-pretrain $1/best_net_tar_G.pth\
                 --tar-netDi-pretrain $1/best_net_tar_Di.pth\