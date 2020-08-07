package tools;

import java.sql.*;
import java.util.*;

import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.google.gson.Gson;

public class rs2json {

	public static String resultSetToJson(Connection connection, String query) {
		List<Map<String, Object>> listOfMaps = null;
		try {
			QueryRunner queryRunner = new QueryRunner();
			listOfMaps = queryRunner.query(connection, query, new MapListHandler());
		} catch (SQLException se) {
			throw new RuntimeException("Couldn't query the database.", se);
		} finally { 
		  DbUtils.closeQuietly(connection);
			 
		}
		return new Gson().toJson(listOfMaps);

	}
}
