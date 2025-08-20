# run on powershell with: docker build -t cobol_img .; docker run cobol_img
# from esolang/cobol:2.4.0
# copy /main.cbl main.cbl
# # cmd sh
# # cmd cobol main.cbl
# run cobc -x -o main.exe main.cbl
# cmd ./main.exe

# docker build -t cobol_img .
# docker run --rm -v ${PWD}:/app cobol_img sh -c "cobc -x -o main.exe main.cbl && ./main.exe && rm main.exe"
FROM esolang/cobol:2.4.0
WORKDIR /app
# RUN cobc -x -o main.exe main.cbl
# CMD ./main.exe
