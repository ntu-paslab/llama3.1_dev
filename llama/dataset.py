from datasets import load_dataset

dataset = load_dataset(
    "parquet",
    cache_dir="./.datasets_cache_dir",
    data_files={
        "train": "datasets/mt_bench_human_judgments/data/human-00000-of-00001-25f4910818759289.parquet"
    },
)

print(dataset["train"][0])
