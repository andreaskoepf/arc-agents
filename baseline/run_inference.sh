#!/bin/bash
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "," | tee digits_comma.txt
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "" | tee digits_nocomma.txt
python -u tgi_inference.py --alphabet "0123456789" --col_delimiter "" --row_delimiter " " | tee digits_nocomma_space.txt
python -u tgi_inference.py --alphabet "αβχδεφγψιδ" --col_delimiter "," | tee greek_comma.txt
python -u tgi_inference.py --alphabet "αβχδεφγψιδ" --col_delimiter "" | tee greek_nocomma.txt
python -u tgi_inference.py --alphabet "abcdefghij" --col_delimiter "," | tee lo_abc_comma.txt
python -u tgi_inference.py --alphabet "abcdefghij" --col_delimiter "" | tee lo_abc_nocomma.txt
python -u tgi_inference.py --alphabet "ABCDEFGHIJ" --col_delimiter "," | tee up_abc_comma.txt
python -u tgi_inference.py --alphabet "ABCDEFGHIJ" --col_delimiter "" | tee up_abc_nocomma.txt
python -u tgi_inference.py --alphabet "[](){}<>*#" --col_delimiter "," | tee braces_comma.txt
python -u tgi_inference.py --alphabet "[](){}<>*#" --col_delimiter "" | tee braces_nocomma.txt
python -u tgi_inference.py --alphabet "!?.:;+-*/=" --col_delimiter "," | tee punctuation_comma.txt
python -u tgi_inference.py --alphabet "!?.:;+-*/=" --col_delimiter "" | tee punctuation_nocomma.txt
