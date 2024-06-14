package com.shashwat.model.manager;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BookDTO {

    public boolean addBook(BookDAO bookdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        System.out.println("Connection Done");
        boolean flag = false;
        int auth = checkAuthor(bookdao);
        int gen = checkGenre(bookdao);

        if (auth != 0 && gen != 0) {
            try {

                String sql = "insert into BookDetails(bookName, publishingYear,pageNo,img_path,pdf_path,genre_id,Author_id) values(?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, bookdao.getBookName());
                ps.setString(2, bookdao.getPublishingYear());
                ps.setInt(3, bookdao.getPageNo());
                ps.setString(4, bookdao.getImg());
                ps.setString(5, bookdao.getPdf());
                ps.setInt(6, gen);
                ps.setInt(7, auth);
                if (ps.executeUpdate() > 0) {

                    System.out.println("Inserted");
                    flag = true;
                }

            } catch (SQLException e) {
                System.out.println(e);
                flag = false;
            }
        }

        return flag;
    }

    private int checkAuthor(BookDAO bookdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();

        try {

            String gen = "SELECT Author_id FROM AuthorInfo WHERE Author_name = ?";
            PreparedStatement ps = con.prepareStatement(gen);
            ps.setString(1, bookdao.getAuthorName());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            } else {
//                return addAuthor(bookdao.getAuthorName());
                int author = addAuthor(bookdao);
                return author;
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return 0;
    }

    public int addAuthor(BookDAO bookdao) {
        Connection con = GetConnection.getConnection();

        try {
            System.out.println("nitin 2");

            String sql = "insert into authorinfo(Author_name) values(?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, bookdao.getAuthorName());
            if (ps.executeUpdate() > 0) {

                System.out.println("Inserted");

                BookDTO bdto = new BookDTO();
                return bdto.checkAuthor(bookdao);

            } else {

            }

        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    private int checkGenre(BookDAO bookdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();

        try {
            String gen = "SELECT genre_id FROM GenreInfo WHERE genre = ?";
            PreparedStatement ps = con.prepareStatement(gen);
            ps.setString(1, bookdao.getGenre());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            } else {
                int genre = addGenre(bookdao);
                return genre;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }

    }

    public int addGenre(BookDAO bookdao) {
        Connection con = GetConnection.getConnection();
        boolean flag = false;
        try {
            System.out.println("nitin 2");

            String sql = "insert into genreinfo (genre) values(?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, bookdao.getGenre());
            if (ps.executeUpdate() > 0) {

                System.out.println("Inserted");
                BookDTO bdto = new BookDTO();
                return bdto.checkGenre(bookdao);
            }

        } catch (SQLException e) {
            System.out.println(e);
            flag = false;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookDTO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<BookDAO> getAuthor() throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        ArrayList<BookDAO> al = new ArrayList<BookDAO>();
        try {
            String sql = "select * from AuthorInfo;";
            PreparedStatement ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bookdao = new BookDAO();
                System.out.println(rs.getInt(1));
                System.out.println(rs.getString(2));
                bookdao.setAuthorId(rs.getInt(1));
                bookdao.setAuthorName(rs.getString(2));

                al.add(bookdao);

            }

//            System.out.println(al + "Added to array list");
        } catch (SQLException e) {
            System.out.println(e);
        }
        return al;
    }

    public ArrayList<BookDAO> getGenre() throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        ArrayList<BookDAO> al = new ArrayList<>();
        try {
            String sql = "select * from GenreInfo;";
            PreparedStatement ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bookdao = new BookDAO();

                bookdao.setGenreId(rs.getInt(1));
                bookdao.setGenre(rs.getString(2));

                al.add(bookdao);

            }

            System.out.println(al + "Added to array list");
        } catch (SQLException e) {
            System.out.println(e);
        }
        return al;
    }

    public static void main(String[] args) throws ClassNotFoundException {
        BookDAO dao = new BookDAO();
        dao.getGenre();
    }

//    --------------get Book-------------------
    public boolean getBook(ArrayList<BookDAO> bookdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnection();
        String query = "SELECT bookdetails.book_id, bookdetails.bookName, bookdetails.publishingYear, "
                + "bookdetails.pageNo, bookdetails.img_path, bookdetails.pdf_path, bookdetails.genre_id AS book_genre_id,"
                + " bookdetails.Author_id AS book_author_id, authorinfo.Author_id, authorinfo.Author_name, "
                + "genreinfo.genre_id AS genre_genre_id, genreinfo.genre FROM bookdetails JOIN authorinfo "
                + "ON bookdetails.Author_id = authorinfo.Author_id JOIN genreinfo ON bookdetails.genre_id = genreinfo.genre_id;";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bdao = new BookDAO();

                bdao.setBookId(rs.getInt("book_id"));
                bdao.setBookName(rs.getString("bookName"));
                bdao.setPublishingYear(rs.getString("publishingYear"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setImg(rs.getString("img_path"));
                bdao.setPdf(rs.getString("pdf_path"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setAuthorId(rs.getInt("Author_id"));

                System.out.println("comming in getbook dto");
                bdao.setGenreId(rs.getInt("book_genre_id"));

                bdao.setAuthorName(rs.getString("Author_name"));
                bdao.setGenre(rs.getString("genre"));
                bookdao.add(bdao);
                flag = true;
            }
        } catch (SQLException e) {

            System.out.println(e);
            flag = false;
        }

        return flag;
    }

    public boolean getGenreName(BookDAO bdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        boolean flag = false;
        try {
            String sql = "select * from GenreInfo WHERE genre_id  = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, bdao.getGenreId());
            rs = ps.executeQuery();
            while (rs.next()) {
                bdao.setGenre(rs.getString(2));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return flag;
    }

    public boolean getAuthorName(BookDAO bdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        boolean flag = false;
        try {
            String sql = "select * from authorInfo WHERE Author_id  = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, bdao.getAuthorId());
            rs = ps.executeQuery();
            while (rs.next()) {
                bdao.setAuthorName(rs.getString(2));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return flag;
    }

//    ---------------------------get by genre name---------------------
    public boolean getCategoryBook(ArrayList<BookDAO> bcategory, String category) {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        boolean flag = false;
        try {
            String sql = "SELECT \n"
                    + "    bookdetails.book_id, \n"
                    + "    bookdetails.bookName, \n"
                    + "    bookdetails.publishingYear, \n"
                    + "    bookdetails.pageNo, \n"
                    + "    bookdetails.img_path, \n"
                    + "    bookdetails.pdf_path, \n"
                    + "    bookdetails.genre_id AS book_genre_id,\n"
                    + "    bookdetails.Author_id AS book_author_id, \n"
                    + "    authorinfo.Author_id, \n"
                    + "    authorinfo.Author_name, \n"
                    + "    genreinfo.genre_id AS genre_genre_id, \n"
                    + "    genreinfo.genre \n"
                    + "FROM \n"
                    + "    bookdetails\n"
                    + "JOIN \n"
                    + "    authorinfo ON bookdetails.Author_id = authorinfo.Author_id\n"
                    + "JOIN \n"
                    + "    genreinfo ON bookdetails.genre_id = genreinfo.genre_id\n"
                    + "WHERE \n"
                    + "    genre = ?;"
                    + "";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, category);
            rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bdao = new BookDAO();
                bdao.setBookId(rs.getInt("book_id"));
                bdao.setBookName(rs.getString("bookName"));
                bdao.setPublishingYear(rs.getString("publishingYear"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setImg(rs.getString("img_path"));
                bdao.setPdf(rs.getString("pdf_path"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setAuthorId(rs.getInt("Author_id"));

                System.out.println("comming in getbook dto");
                bdao.setGenreId(rs.getInt("book_genre_id"));

                bdao.setAuthorName(rs.getString("Author_name"));
                bdao.setGenre(rs.getString("genre"));
                bcategory.add(bdao);

                System.out.println("coming in database");
                flag = true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return flag;
    }

}
