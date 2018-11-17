package com.teamwork.model.dao;

import java.util.HashMap;
import java.util.Map;

import com.teamwork.model.bean.Item;

public class Cart {
	
	private HashMap<Long, Item> cartItem;

	public Cart()
	{
		cartItem = new HashMap<>();
	}

	public Cart(HashMap<Long, Item> cartItem) {
		super();
		this.cartItem = cartItem;
	}

	public HashMap<Long, Item> getCartItem() {
		return cartItem;
	}

	public void setCartItem(HashMap<Long, Item> cartItem) {
		this.cartItem = cartItem;
	}
	
	public void insertToCart(Long key, Item item)
	{
		boolean bln = cartItem.containsKey(key);
		if(bln)
		{
			int quantity_old = item.getQuantity();
			item.setQuantity(quantity_old + 1);
			cartItem.put(item.getProduct().getProductID(), item);
		}
		else
		{
			cartItem.put(item.getProduct().getProductID(), item);
		}
	}
	
	public void removeToCart(Long key, Item item)
	{
		boolean bln = cartItem.containsKey(key);
		if(bln)
		{
			cartItem.remove(key);
		}
	}
	
	public int countItem()
	{
		int count = 0; 
		count= cartItem.size();
		return count;
	}
	
	public double total()
	{
		double count=0;
		for(Map.Entry<Long, Item> list : cartItem.entrySet())
		{
			count +=list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity();
		}
		return count;
	}

}
