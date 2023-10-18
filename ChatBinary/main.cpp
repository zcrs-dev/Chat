//
// Created by olsson on 10/17/23.
//
#include <iostream>
#include <fstream>

using namespace std;

int main()
{
//    fstream fout;
//
//    unsigned short x = 8675;
//
//    fout.open("file.dat", ios::out | ios::binary);
//
//    if (fout)
//    {
//        fout.write(reinterpret_cast<char*>(&x), sizeof(unsigned short));
//        fout.close();
//    } else {
//        cout << "error in opening file!\n";
//    }

    std::fstream fout;
    char x = 'B';
    fout.open("file.dat", std::ios::out | std::ios::binary);
    if (fout)
    {
        std::cout << "file.dat found ";
        fout.write(&x, sizeof(char));
        fout.close();
    } else {
        std::cout << "error in opening file\n";
    }

    fout.open("file.dat", ios::in | ios::binary);

    if (fout)
    {
        char y=0;
        fout.read(&y, sizeof(char));
        fout.close();
        cout << y << '\n';
    } else {
        cout << "error in opening file!\n";
    }
    return 0;
}
