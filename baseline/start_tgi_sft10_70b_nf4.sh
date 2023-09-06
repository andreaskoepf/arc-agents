#/bin/bash
text-generation-launcher --model-id OpenAssistant/llama2-70b-oasst-sft-v10 -p 8080 --quantize bitsandbytes-nf4 --max-input-length 4000 --max-batch-prefill-tokens 4096 --max-total-tokens 4096 --max-concurrent-requests 8 --cuda-memory-fraction 0.98
