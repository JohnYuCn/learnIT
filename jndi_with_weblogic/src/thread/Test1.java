package thread;

import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import java.util.Queue;
import java.util.Vector;


public class Test1 {

	public static void main(String[] args) {
		List<String> res=new ArrayList<>();
		
	
		new Thread(new Consumer(res)).start();
		new Thread(new Producer(res)).start();
	}

}

class Consumer implements Runnable{
	private List<String> res;
	
	public Consumer(List<String> res) {
		super();
		this.res = res;
	}

	@Override
	public void run() {
		while(true){
		synchronized (res) {
			if(!res.isEmpty()){
					System.out.println("正在消费："+res.get(0));
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					res.remove(0);
					res.notify();
				}
			else{
				try {
					res.wait();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			
		}
	}
	
}
}
class Producer implements Runnable{
	private List<String> res;
	
	public Producer(List<String> res) {
		super();
		this.res = res;
	}
	@Override
	public void run() {
		while(true){
		synchronized (res) {
			if(res.size()<10){
				double d=Math.random();
				res.add(d+"");
				System.out.println("正在产生:"+d);
				res.notify();
			}
			else{
				try {
					res.wait();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
	}
	}
}

	
