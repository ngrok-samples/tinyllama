FROM ghcr.io/ggml-org/llama.cpp:server

COPY ./models/tinyllama-1.1b-chat-v1.0.Q2_K.gguf /models/tinyllama-1.1b-chat-v1.0.Q2_K.gguf

CMD [ "--model", "/models/tinyllama-1.1b-chat-v1.0.Q2_K.gguf", "--host", "0.0.0.0", "--port", "8080" ]
