/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

/**
 *
 * @author ericm
 */
public class TestTwo {

    public String transformString(String S) {
        int N = S.length();
        int groupSize = 4;
        int groups = (int) Math.ceil((double) N / groupSize);

        String transformed = "";
        
        for (int i = 0; i < groups; i++) {
            if(groupSize > S.length()){
                groupSize = S.length();
            }
            String input = S.substring(0, groupSize);
            S = S.substring(groupSize);
            
            char[] charArr = input.toCharArray();
            int L = charArr.length;
            
            char[] resultArr = new char[L];

            for (int j = 0; j < L; j++) {
                resultArr[j] = charArr[L - j - 1];
            }

            transformed += String.valueOf(resultArr);
        }
        return transformed;

    }

}
