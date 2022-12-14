/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Screens;

import static Screens.Main.qldn;
import static Screens.QuanLyDangNhap.capNhatTKIsOn;
import static Screens.QuanLyDangNhap.tableQuanLyDangNhap;
import static doancuoiky.DoAnCuoiKy.setRightRendererAndResizeWitdh;
import javax.swing.JOptionPane;

/**
 *
 * @author admin
 */
public class CapNhatTK extends javax.swing.JFrame {

    /**
     * Creates new form NewJFrame
     */
    public CapNhatTK() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form. WARNING: Do NOT modify this code. The content of this method is always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        temp1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtPassMoi = new javax.swing.JTextField();
        buttonCapNhatTK = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        temp = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        txtPassCu = new javax.swing.JTextField();

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jScrollPane1.setViewportView(jTextArea1);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        temp1.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        temp1.setText("Pass cũ");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel2.setText("Pass mới");

        txtPassMoi.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N

        buttonCapNhatTK.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        buttonCapNhatTK.setText("Cập nhật");
        buttonCapNhatTK.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                buttonCapNhatTKActionPerformed(evt);
            }
        });

        jButton2.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jButton2.setText("Hủy");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        temp.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        temp.setText("Tài khoản nhân viên");

        txtMaNV.setEditable(false);
        txtMaNV.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N

        txtPassCu.setEditable(false);
        txtPassCu.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(temp1)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(buttonCapNhatTK)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton2))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtPassCu)
                            .addComponent(txtPassMoi)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(temp)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtMaNV, javax.swing.GroupLayout.DEFAULT_SIZE, 59, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(temp)
                    .addComponent(txtMaNV, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(temp1)
                    .addComponent(txtPassCu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(16, 16, 16)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtPassMoi))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(buttonCapNhatTK)
                    .addComponent(jButton2))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        setVisible(false);
        setAlwaysOnTop(false);
        capNhatTKIsOn = false;
    }//GEN-LAST:event_jButton2ActionPerformed

    private void buttonCapNhatTKActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_buttonCapNhatTKActionPerformed
        // TODO add your handling code here:
        int choice = JOptionPane.showConfirmDialog(buttonCapNhatTK, "Bạn có chắc chắn muốn cập nhật dữ liệu này?", "Thông báo", 0);
        if (choice == 0) {
            setAlwaysOnTop(false);
            boolean check = qldn.capNhatPass(txtMaNV.getText(), txtPassMoi.getText());
            Main.dfTableQLDN = qldn.taiTT();
            tableQuanLyDangNhap.setModel(Main.dfTableQLDN);
            setRightRendererAndResizeWitdh(tableQuanLyDangNhap);
            if (check) {
                JOptionPane.showMessageDialog(null, "Cập nhật thành công!!!"); 
                capNhatTKIsOn = false;
                setVisible(!check);
            } else {
                JOptionPane.showMessageDialog(null, "Không thành công, vui lòng kiểm tra lại");
            }
        }
    }//GEN-LAST:event_buttonCapNhatTKActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CapNhatTK.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CapNhatTK.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CapNhatTK.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CapNhatTK.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CapNhatTK().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton buttonCapNhatTK;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JLabel temp;
    private javax.swing.JLabel temp1;
    static javax.swing.JTextField txtMaNV;
    static javax.swing.JTextField txtPassCu;
    static javax.swing.JTextField txtPassMoi;
    // End of variables declaration//GEN-END:variables
}
