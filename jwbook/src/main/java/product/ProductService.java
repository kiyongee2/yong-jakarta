package product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService {
	
	Map<String, Product> products = new HashMap<>();
	
	public ProductService() {
		Product p1 = new Product("101", "애플사과폰", "애플전자", 1200000, "2023-01-15");
		products.put("101", p1);
		
		Product p2 = new Product("102", "삼전우주폰", "삼전전자", 1300000, "2023-04-10");
		products.put("102", p2);
		
		Product p3 = new Product("103", "엘스듀얼폰", "엘스전자", 1000000, "2023-04-10");
		products.put("103", p3);
	}
	
	public List<Product> findAll(){
		return new ArrayList<>(products.values());
	}
	
	public Product find(String id) {
		return products.get(id);
	}
}
