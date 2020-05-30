import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ClientDataGenerator{
    public final int clientNumber;
    public final Client[] clients;
    public final String targetIP;
    public final int targetPort;
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(3);

    public ClientDataGenerator(int clientNumber, String targetIP, int targetPort) {
        this.clientNumber = clientNumber;
        this.clients = new Client[clientNumber];
        this.targetIP = targetIP;
        this.targetPort = targetPort;
        initialClients();
    }

    private void initialClients() {
        for(int i = 0; i < clientNumber; ++ i) {
            Random rand = new Random(i * System.currentTimeMillis());
            clients[i] = new Client(i, targetIP, targetPort,
                    114.029378 + rand.nextDouble() / 10,22.609390 + rand.nextDouble() / 10);
        }
        clients[0].setIncrLatitude(0); clients[0].setIncrLongitude(0.01);
        clients[1].setIncrLatitude(0.01); clients[1].setIncrLongitude(-0.01);
        clients[2].setIncrLatitude(-0.01); clients[2].setIncrLongitude(-0.01);
    }

    public void run() {
        for (int i = 0; i < clientNumber; ++ i){
            scheduler.scheduleAtFixedRate(clients[i], 10, 10, TimeUnit.SECONDS);
        }
    }

    public static void main(String[] args) {
        final String targetIP = "127.0.0.1";
        final int targetPort = 28888;
        final int clientNumber = 3;
        new ClientDataGenerator(clientNumber, targetIP, targetPort).run();
    }
}
