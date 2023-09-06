#!/bin/bash
text-generation-launcher --model-id OpenAssistant/codellama-13b-oasst-sft-v10 -p 8080 --max-input-length 15000 --max-batch-prefill-tokens 16000 --max-total-tokens 16000 --max-concurrent-requests 8 --cuda-memory-fraction 1.0
