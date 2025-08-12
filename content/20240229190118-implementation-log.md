---
title: Implementation Log
date: 2024-03-29T01:53:06-04:00
---
# 20240329112300
- Implement SGD
- 
# 20240312092026
- Solve ToySGD Problem 
- 
---
# Goal
- Learn a controller to change the learning rate of SGD for training SVM
- What has already been done?
	- Daniel et. al(2016) proposed a strategy to learn a control for training Neural Networks
	- Adriaensen et. al(2022) used the above method but implemented it using SMAC


# How did Adriaesen et. al accomplish this?
Reference: https://github.com/automl/2022_JAIR_DAC_experiments/tree/main/sgd
```python
{
    'cache_evaluations': True,
    'deterministic': True,
    'overwrite': True,
    'param_scale': < cfg_util.SymLogScale object at 0x7e0228be4198 > ,
    'param_scale.object_info': {
        'name': 'SymLogScale',
        'vx_max': 1.0,
        'vx_min': 0.01,
        'vy_max': 10.0,
        'vy_min': 1e-06
    },
    'result_dir': 'results/dac_momentum',
    'seed': 1,
    'train_env': < dac.bench.DACBenchWrapper object at 0x7e0238725ef0 > ,
    'train_env.object_info': {
        'benchmark': < dacbench.benchmarks.sgd_benchmark.SGDBenchmark object at 0x7e0248bf91d0 > ,
        'benchmark.object_info': {
            'cd_bias_correction': True,
            'cd_paper_reconstruction': True,
            'features': ['predictiveChangeVarDiscountedAverage',
                'predictiveChangeVarUncertainty',
                'lossVarDiscountedAverage',
                'lossVarUncertainty',
                'currentLR',
                'trainingLoss',
                'step'
            ],
            'features.object_info': ['predictiveChangeVarDiscountedAverage',
                'predictiveChangeVarUncertainty',
                'lossVarDiscountedAverage',
                'lossVarUncertainty',
                'currentLR',
                'trainingLoss',
                'step'
            ],
            'instance_set_path': '../instance_sets/sgd/sgd_train_100instances.csv',
            'name': 'SGDBenchmark',
            'optimizer': 'momentum',
            'train_validation_ratio': 1.0,
            'training_batch_size': 64
        },
        'name': 'DACBenchWrapper',
        'policy_space': < dac.policies.MomentumPolicy object at 0x7e0248bc97b8 > ,
        'policy_space.object_info': {
            'name': 'MomentumPolicy'
        }
    },
    'trials_train_limit': 5000,
    'val_env': < dac.bench.DACBenchWrapper object at 0x7e0228be4160 > ,
    'val_env.object_info': {
        'benchmark': < dacbench.benchmarks.sgd_benchmark.SGDBenchmark object at 0x7e0228be40f0 > ,
        'benchmark.object_info': {
            'cd_bias_correction': True,
            'cd_paper_reconstruction': True,
            'features': ['predictiveChangeVarDiscountedAverage',
                'predictiveChangeVarUncertainty',
                'lossVarDiscountedAverage',
                'lossVarUncertainty',
                'currentLR',
                'trainingLoss',
                'step'
            ],
            'features.object_info': ['predictiveChangeVarDiscountedAverage',
                'predictiveChangeVarUncertainty',
                'lossVarDiscountedAverage',
                'lossVarUncertainty',
                'currentLR',
                'trainingLoss',
                'step'
            ],
            'instance_set_path': '../instance_sets/sgd/sgd_train_100instances.csv',
            'name': 'SGDBenchmark',
            'optimizer': 'momentum',
            'train_validation_ratio': 1.0,
            'training_batch_size': 64
        },
        'name': 'DACBenchWrapper',
        'policy_space': < dac.policies.MomentumPolicy object at 0x7e0228be4128 > ,
        'policy_space.object_info': {
            'name': 'MomentumPolicy'
        }
    }
}
```

