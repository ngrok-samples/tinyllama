FROM busybox:latest AS models 
RUN mkdir -p /models
WORKDIR /models
RUN wget https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF/resolve/main/tinyllama-1.1b-chat-v1.0.Q2_K.gguf


FROM ghcr.io/ggml-org/llama.cpp:server

COPY --from=models /models/tinyllama-1.1b-chat-v1.0.Q2_K.gguf /models/tinyllama-1.1b-chat-v1.0.Q2_K.gguf

CMD [ "--model", "/models/tinyllama-1.1b-chat-v1.0.Q2_K.gguf", "--host", "0.0.0.0", "--port", "8080" ]
