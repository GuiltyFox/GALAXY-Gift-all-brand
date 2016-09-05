.class final Lcom/jaalee/sdk/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/a;


# direct methods
.method constructor <init>(Lcom/jaalee/sdk/service/a;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/b;->a:Lcom/jaalee/sdk/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const-string/jumbo v0, "Bluetooth is OFF: stopping scanning"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/b;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v0}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->l(Lcom/jaalee/sdk/service/BeaconService;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/b;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v0}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->h(Lcom/jaalee/sdk/service/BeaconService;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/b;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v0}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->b(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
