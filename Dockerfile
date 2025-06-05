FROM ghcr.io/ggml-org/llama.cpp:server

COPY ./models/tinyllama-1.1b-chat-v1.0.Q5_K_M.gguf /models/tinyllama-1.1b-chat-v1.0.Q5_K_M.gguf

CMD [ "--model", "/models/tinyllama-1.1b-chat-v1.0.Q5_K_M.gguf", "--host", "0.0.0.0", "--port", "8080" ]
