#include <bits/stdc++.h>

using namespace std;
int main() {
    int nodes, flows, cap;
    cin >> nodes >> flows >> cap;
    map<int,int> weight;
    map<int,int> cover;
    string in;
    getline(cin,in);
    char * i;
    char* token;
    int x, y, val;
    int dummy;
    while (getline(cin,in)) {
        char *dup = strdup(in.c_str());
        token = strtok(dup, "[],. =val");
        while (token != NULL) {
            if (!strcmp(token,"X")) {
                token = strtok(NULL, "[],. =val");
                x = atoi(token);
                token = strtok(NULL, "[],. =val");
                y = atoi(token);
                token = strtok(NULL, "[],. =val");
                dummy = atoi(token);
                token = strtok(NULL, "[],. =val");
                val = atoi(token);
                
                //cout << x <<' ' << y << ' ' << val << endl;
                cover[x] += val;
            } else {
                token = strtok(NULL, "[],. =val");
                x = atoi(token);
                token = strtok(NULL, "[],. =val");
                y = atoi(token);
                token = strtok(NULL, "[],. =val");
                val = atoi(token);
                weight[y] += val;
            }
            token = strtok(NULL, "[],. =val");
        }
        free(dup);
    }
                
    for(int i = 1; i <= nodes; i++){
        cout << i << ": " << cover[i] << ' ' << weight[i] << endl;
    }
    return 0;
}