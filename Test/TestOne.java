/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import java.util.stream.IntStream;

/**
 *
 * @author ericm
 */
public class TestOne {

    public int findMissingInteger(int[] K) {
        int N = K.length;

        int missing = 1;
        for (int i = 1; i <= N + 1; i++) {
            final int j = i;
            if (!IntStream.of(K).anyMatch(x -> x == j)) {
                missing = i;
                break;
            }
        }

        return missing;
    }
}
