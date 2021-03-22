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
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        TestOne t1 = new TestOne();
        int[] K = {3,5,4,1};
        System.out.println(t1.findMissingInteger(K));

        TestTwo t2 = new TestTwo();
        System.out.println(t2.transformString("Lorem at"));
    }

}
