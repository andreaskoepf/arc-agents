#!/bin/bash
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "," --cutoff_length 8000 --trials 3 --jsonl_out digits_comma.jsonl | tee digits_comma.txt
#python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "," --row_delimiter " " --cutoff_length 12000 --trials 2 | tee digits_ocomma_space.txt
