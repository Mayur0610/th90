package com.torryharris.DAO;

import com.torryharris.model.UserLogin;
import com.torryharris.rowMapper.RowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class TrainDAOImpl implements TrainDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Train> loadTrains() {
        String sql="select * from train";
        List<Train>listOfTrains=jdbcTemplate.query(sql, new RowMapper());
        return listOfTrains;
    }

    @Override
    public List<Train> loadTrains(int trainNo) {
        List<Train>list=new ArrayList<Train>();
        String sql="select * from train where train_no="+trainNo;
        List<Train>listOfTrains=jdbcTemplate.query(sql,new RowMapper());
        return listOfTrains;
    }
    
   // public void addTrain(Train train) {

	//	String insertSQL = "insert into train (TRIN_NO,TRAIN_NAME,SOURCE,DESTINATION,TICKET_PRICE) VALUES(?,?,?,?)";

	//	jdbcTemplate.update(insertSQL,train.getTrainNo(), train.getTrainName(),train.getSource(),train.getDestination(),train.getTicketPrice());

//	}
    
    
    @Override
    public void saveTrain(Train train) {
        Object[] sqlParameters={train.getTrainNo(),train.getTrainName(),train.getSource(),train.getDestination(),train.getTicketPrice()};
        String sql="insert into train (TRAIN_NO,TRAIN_NAME,SOURCE,DESTINATION,TICKET_PRICE)values(?,?,?,?,?)";
        jdbcTemplate.update(sql,sqlParameters);
        System.out.println("saved");
    }

    @Override
    public Train getTrain(int trainNo) {
        String sql ="select * from train where train_no= ?";
        Train train=jdbcTemplate.queryForObject(sql,new RowMapper(),trainNo);
        return train;
    }

    @Override
    public void update(Train train) {
        String sql="update train set train_no=?,train_name=?, source=?, destination=?, ticket_price=? where train_no=?";
        jdbcTemplate.update(sql,train.getTrainNo(),train.getTrainName(),train.getSource(),train.getDestination(),train.getTicketPrice(),train.getTrainNo());
        System.out.println("updated");
    }

    @Override
    public void deleteTrain(int trainNo) {
        String sql="delete from train where train_no =?";
        jdbcTemplate.update(sql,trainNo);
    }

}
