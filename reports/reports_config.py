import report.config as config

config.renamed_frameworks = dict(
    constantpredictor_enc='constantpredictor'
)
config.excluded_frameworks = ['mlr3automl_hyperband_100factorlevels', 'mlr3automl_old', 'autosklearn2_old', 'autosklearn2_newdata', 'AutoGluon_bestquality']

# config.impute_missing_with = 'constantpredictor'

all_results_files = {
    'stable_RF': [
        "input/mlr3automl_RF.csv",
        # "input/ranger.csv",
        "input/results_autosklearn.csv",
        # "input/constant_pred.csv"
    ],
    'stable_XGBoost': [
        "input/mlr3automl_xgboost.csv",
        "input/results_autosklearn.csv",
    ],
    'stable_SVM': [
        "input/mlr3automl_RF.csv",
        "input/mlr3automl_xgboost.csv",
        "input/mlr3automl_svm.csv",
        "input/mlr3automl_liblinear_svm.csv",
        "input/results_autosklearn.csv",
    ],
    'stable_logreg': [
        "input/mlr3automl_RF.csv",
        "input/mlr3automl_xgboost.csv",
        "input/mlr3automl_svm.csv",
        "input/mlr3automl_liblinear_svm.csv",
        "input/results_autosklearn.csv",
        "input/mlr3automl_logreg.csv"
    ],
    'all_models': [
        "input/results_autosklearn.csv",
        "input/mlr3automl_all_models.csv",
        "input/mlr3automl_all_models_subsample.csv"
    ],
    'hyperband': [
        "input/results_autosklearn.csv",
        "input/mlr3automl_hyperband.csv"
    ],
    'preprocessing': [
        "input/results_autosklearn.csv",
        # "input/mlr3automl_preprocessing.csv",
        "input/mlr3automl_preprocessing2.csv"
    ],
    'portfolio': [
        "input/results_autosklearn.csv",
        "input/mlr3automl_portfolio.csv"
    ],
    'after_EDA': [
        "input/mlr3automl_portfolio_newformat.csv",
        "input/mlr3automl_eda.csv"
    ],
    'autosklearn_comparison': [
        "input/autosklearn_old.csv",
        "input/results_autosklearn.csv",
        "input/mlr3automl_portfolio.csv"
    ],
    'final_benchmark': [
        # "input/mlr3automl_portfolio_newformat.csv",
        # "input/mlr3automl_eda_changes.csv",
        "input/mlr3automl_eda.csv",
        "input/autosklearn_new.csv",
        "input/H2o.csv",
        "input/autogluon.csv"
    ]
}

config.results_group = 'final_benchmark'
config.results_files = all_results_files[config.results_group]
config.tasks_sort_by = 'nrows'