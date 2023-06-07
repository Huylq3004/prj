/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Categorie;
import model.PhoneData;
import model.Product;

/**
 *
 * @author SHD
 */
public class ProductDAO extends DBContext {
    
    public static List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products";
        Connection cn = null;
        try {
            cn = new DBContext().connection;
            if (cn != null) {
                PreparedStatement stm = cn.prepareStatement(sql);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Product p = new Product();
                    p.setId(rs.getInt(1));
                    p.setName(rs.getString(2));
                    p.setPrice(rs.getInt(3));
                    p.setImgPath(rs.getString(4));
                    p.setDescription(rs.getString(5));
                    p.setStatus(rs.getInt(6));
                    p.setCateid(rs.getInt(7));
                    list.add(p);
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static List<Product> getProducts(String search, String category) {
        List<Product> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = new DBContext().connection;
            if (cn != null) {
                String sql = "select  p.PID,p.PName,p.price,p.imgPath,p.description,p.status,p.CateID,c.CateName from Products p,Categories c where p.CateID = c.CateID and p.PName like ? ";
                
                if (category != null) {
                    sql += " and c.CateID like '%" + category + "%'";
                }
                
                PreparedStatement stm = cn.prepareStatement(sql);
                stm.setString(1, "%" + search + "%");
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Product plant = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getString(8));
                    list.add(plant);
                }
                
            }
        } catch (Exception e) {
            
        }
        return list;
    }
    
    public static Product getProduct(int pid) {
        Product plant = null;
        Connection cn = null;
        try {
            cn = new DBContext().connection;
            if (cn != null) {
                String sql = "select  p.PID,p.PName,p.price,p.imgPath,p.description,p.status,p.CateID,c.CateName from Products p,Categories c where p.CateID = c.CateID AND PID = ?";
                
                PreparedStatement stm = cn.prepareStatement(sql);
                stm.setInt(1, pid);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    plant = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getString(8));
                }
                return plant;
            }
        } catch (Exception e) {
            
        }
        return plant;
        
    }
    
    public static List<Product> getProductByCid(int cid) {
        List<Product> list = new ArrayList<>();
        Connection cn = null;
        String sql = "select p.PID,p.PName,p.price,p.imgPath,p.description,p.status,c.CateID,c.CateName from Products p  join Categories c on p.CateID = c.CateID where p.CateID = ?";
        try {
            cn = new DBContext().connection;
            if (cn != null) {
                PreparedStatement stm = cn.prepareStatement(sql);
                stm.setInt(1, cid);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Product p = new Product();
                    p.setId(rs.getInt(1));
                    p.setName(rs.getString(2));
                    p.setPrice(rs.getInt(3));
                    p.setImgPath(rs.getString(4));
                    p.setDescription(rs.getString(5));
                    p.setStatus(rs.getInt(6));
                    p.setCateid(rs.getInt(7));
                    Categorie c = new Categorie(rs.getInt("CateID"), rs.getString("CateName"));
                    p.setCategorie(c);
                    list.add(p);
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
        
    }
    
    public static List<PhoneData> getProductData(String phoneName, String startPrice, String endPrice, String phoneType, String deltail) {
        Product plant = null;
        Connection cn = null;
        List<PhoneData> list = new ArrayList<>();
        
        try {
            cn = new DBContext().connection;
            if (cn != null) {
                String sql = "select p.PID, p.PName, p.price, p.imgPath, p.description, p.status,c.CateID ,c.CateName from Products p join Categories c on p.CateID = c.CateID";

                // where p.PName = LIKE '%?%' and x.price BETWEEN ? AND ? and x.phoneType = ?";
                List<String> condition = new ArrayList<>();
                List<String> params = new ArrayList<>();
                if (!phoneName.isEmpty()) {
                    condition.add(" p.PName LIKE '%?%' ");
                    params.add(phoneName);
                }
                
                if (!startPrice.isEmpty() && !endPrice.isEmpty()) {
                    condition.add(" p.price BETWEEN ? AND ? ");
                    params.add(startPrice);
                    params.add(endPrice);
                }
                
                if (!startPrice.isEmpty() && endPrice.isEmpty()) {
                    condition.add(" p.price > ? ");
                    params.add(startPrice);
                }
                
                if (startPrice.isEmpty() && !endPrice.isEmpty()) {
                    condition.add(" p.price < ? ");
                    params.add(endPrice);
                }
                
                if (!phoneType.isEmpty()) {
                    condition.add(" c.CateName LIKE '%?%' ");
                    params.add(phoneType);
                }
                
                if (!deltail.isEmpty()) {
                    condition.add(" p.description LIKE '%?%' ");
                    params.add(deltail);
                }
                
                if (condition.size() > 0) {
                    sql = sql + " where ";
                    for (String c : condition) {
                        sql = sql + c;
                    }
                }
                
                PreparedStatement stm = cn.prepareStatement(sql);
                
                for (int i = 1; i < params.size(); i++) {
                    stm.setString(i, params.get(i));
                }
                
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    PhoneData pd = new PhoneData();
                    Product p = new Product(rs.getInt("PID"), rs.getString("PName"), rs.getInt("price"), rs.getString("imgPath"), rs.getString("description"), rs.getInt("status"), rs.getInt("CateID"), rs.getString("CateName"));
                    Categorie c = new Categorie(rs.getInt("CateID"), rs.getString("CateName"));
                    pd.setProduct(p);
                    pd.setCategorie(c);
                    list.add(pd);
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> getAllProvCate() {
        List<Product> list = new ArrayList<>();
        String sql = "select p.PID,p.PName,p.price,p.imgPath,p.description,p.status,c.CateID,c.CateName from Products p inner join Categories c on p.CateID = c.CateID";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setPrice(rs.getInt(3));
                p.setImgPath(rs.getString(4));
                p.setDescription(rs.getString(5));
                p.setStatus(rs.getInt(6));
                p.setCateid(rs.getInt(7));
                p.setCatename(rs.getString(8));
                Categorie c = new Categorie(rs.getInt("CateID"), rs.getString("CateName"));
                p.setCategorie(c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static List<Categorie> getAllCate() {
        List<Categorie> list = new ArrayList<>();
        String sql = "select * from Categories";
        Connection cn = null;
        try {
            cn = new DBContext().connection;
            if (cn != null) {
                PreparedStatement stm = cn.prepareStatement(sql);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Categorie c = new Categorie(rs.getInt("CateID"), rs.getString("CateName"));
                    list.add(c);
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        System.out.println(ProductDAO.getProductData("I", "m", "m", "I", "2"));
        
 
        
    }
    
    public List<Product> getProductbyCateID(int cateID) {
        List<Product> list = new ArrayList<>();
        
        String sql = "SELECT [PID]\n"
                + "      ,[PName]\n"
                + "      ,[price]\n"
                + "      ,[imgPath]\n"
                + "      ,[description]\n"
                + "      ,[status]\n"
                + "      ,[CateID]\n"
                + "  FROM [dbo].[Products]\n"
                + "  where CateID = ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setInt(1, cateID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("PID"));
                p.setName(rs.getString("PName"));
                p.setPrice(rs.getInt("price"));
                p.setImgPath(rs.getString("imgPath"));
                p.setDescription(rs.getString("description"));
                p.setStatus(rs.getInt("status"));
                Categorie c = getCategoriesById(rs.getInt("CateID"));
                p.setCategorie(c);
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
        
    }
    
    public Categorie getCategoriesById(int cateID) {
        
        String SEARCH = "SELECT * FROM Categories WHERE CateID = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(SEARCH);
            st.setInt(1, cateID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Categorie c = new Categorie();
                c.setCateID(rs.getInt("CateID"));
                c.setCateName(rs.getString("CateName"));
                return c;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static boolean updateProduct(Product dto) throws SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        String UPDATE = "UPDATE Products SET PName=?, price=?, imgPath=?, description=?, status=?, CateID=? WHERE PID=?";
        
        try {
            conn = new DBContext().connection;
            if (conn != null) {
                stm = conn.prepareStatement(UPDATE);
                
                stm.setString(1, dto.getName());
                stm.setInt(2, dto.getPrice());
                stm.setString(3, dto.getImgPath());
                stm.setString(4, dto.getDescription());
                stm.setInt(5, dto.getStatus());
                stm.setInt(6, dto.getCateid());
                stm.setInt(7, dto.getId());
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            
        }
        return result;
    }
    
    public static boolean insertProduct(Product dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        String INSERT = "insert into Products(PName, price, imgPath, description, status, CateID) values(?,?,?,?,?,?)";
        
        try {
            conn = new DBContext().connection;
            if (conn != null) {
                stm = conn.prepareStatement(INSERT);
                stm.setString(1, dto.getName());
                stm.setInt(2, dto.getPrice());
                stm.setString(3, dto.getImgPath());
                stm.setString(4, dto.getDescription());
                stm.setInt(5, dto.getStatus());
                stm.setInt(6, dto.getCateid());
                
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            
        }
        return result;
    }
    
    public static List<Product> getListByPage(ArrayList<Product> list,
            int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

//    public static void main(String[] args) throws ClassNotFoundException, SQLException {
//        System.out.println(getProducts("", "IPhone"));
//    }
}
