import java.io.IOException;
import java.io.PrintStream;
import java.net.Socket;
import java.util.concurrent.ScheduledExecutorService;

public class Client implements Runnable{
    public final int id;
    public final String targetIP;
    public final int targetPort;
    private double latitude;
    private double longitude;
    private double incrLatitude;
    private double incrLongitude;

    public Client(int id, String targetIP, int targetPort,
                  double initLatitude, double initLongitude) {
        this.id = id;
        this.latitude = initLatitude;
        this.longitude = initLongitude;
        this.targetIP = targetIP;
        this.targetPort = targetPort;
//        this.incrLatitude = incrLatitude;
//        this.incrLongitude = incrLongitude;
    }

    public void updateLocation() {
        latitude += incrLatitude;
        longitude += incrLongitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setIncrLatitude(double incrLatitude) {
        this.incrLatitude = incrLatitude;
    }

    public void setIncrLongitude(double incrLongitude) {
        this.incrLongitude = incrLongitude;
    }

    public long getTime() {
        return System.currentTimeMillis();
    }

    @Override
    public String toString() {
        return id + "," +
                getTime() + "," +
                getLatitude() + "," +
                getLongitude();
    }

    @Override
    public void run() {
//        while(true){
            try {
                Socket client = new Socket(targetIP, targetPort);
                PrintStream out = new PrintStream(client.getOutputStream());
                out.print(this.toString());
                System.out.println("Client send data");
                this.updateLocation();
//                Thread.sleep(10000);
            } catch (IOException e){
                e.printStackTrace();
            }
//        }
    }
}
