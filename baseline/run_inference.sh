#!/bin/bash
FORMAT=chatml
TRIALS=3
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "," --format $FORMAT --trials $TRIALS --jsonl_out digits_comma.jsonl | tee digits_comma.txt
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "" --format $FORMAT --trials $TRIALS --jsonl_out digits_nocomma.jsonl | tee digits_nocomma.txt
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "" --row_delimiter " " --format $FORMAT --trials $TRIALS --jsonl_out digits_nocomma_space.jsonl | tee digits_nocomma_space.txt
python -u tgi_inference.py --alphabet "αβχδεφγψιδ" --col_delimiter "," --format $FORMAT --trials $TRIALS --jsonl_out greek_comma.jsonl | tee greek_comma.txt
python -u tgi_inference.py --alphabet "αβχδεφγψιδ" --col_delimiter "" --format $FORMAT --trials $TRIALS --jsonl_out greek_nocomma.jsonl | tee greek_nocomma.txt
python -u tgi_inference.py --alphabet "abcdefghij" --col_delimiter "," --format $FORMAT --trials $TRIALS --jsonl_out lo_latin_comma.jsonl | tee lo_latin_comma.txt
python -u tgi_inference.py --alphabet "abcdefghij" --col_delimiter "" --format $FORMAT --trials $TRIALS --jsonl_out lo_latin_nocomma.jsonl | tee lo_latin_nocomma.txt
python -u tgi_inference.py --alphabet "ABCDEFGHIJ" --col_delimiter "," --format $FORMAT --trials $TRIALS --jsonl_out up_latin_comma.jsonl | tee up_latin_comma.txt
python -u tgi_inference.py --alphabet "ABCDEFGHIJ" --col_delimiter "" --format $FORMAT --trials $TRIALS --jsonl_out up_latin_nocomma.jsonl | tee up_latin_nocomma.txt
#python -u tgi_inference.py --alphabet "[](){}<>*#" --col_delimiter "," --format $FORMAT --trials $TRIALS --jsonl_out braces_comma.jsonl | tee braces_comma.txt
#python -u tgi_inference.py --alphabet "[](){}<>*#" --col_delimiter "" --format $FORMAT --trials $TRIALS --jsonl_out braces_nocomma.jsonl | tee braces_nocomma.txt
#python -u tgi_inference.py --alphabet "!?.:;+-*/=" --col_delimiter "," --format $FORMAT --trials $TRIALS --jsonl_out punctuation_comma.jsonl | tee punctuation_comma.txt
#python -u tgi_inference.py --alphabet "!?.:;+-*/=" --col_delimiter "" --format $FORMAT --trials $TRIALS --jsonl_out punctuation_nocomma.jsonl | tee punctuation_nocomma.txt
