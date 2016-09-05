.class final Lcom/jaalee/sdk/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/a;


# direct methods
.method constructor <init>(Lcom/jaalee/sdk/service/a;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/c;->a:Lcom/jaalee/sdk/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/jaalee/sdk/service/c;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v0}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->g(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/jaalee/sdk/service/c;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v0}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->f(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    :cond_20
    const-string/jumbo v0, "Bluetooth is ON: resuming scanning (monitoring: %d ranging:%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jaalee/sdk/service/c;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v3}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v3

    invoke-static {v3}, Lcom/jaalee/sdk/service/BeaconService;->g(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jaalee/sdk/service/c;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v3}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v3

    invoke-static {v3}, Lcom/jaalee/sdk/service/BeaconService;->f(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/c;->a:Lcom/jaalee/sdk/service/a;

    invoke-static {v0}, Lcom/jaalee/sdk/service/a;->a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->j(Lcom/jaalee/sdk/service/BeaconService;)V

    :cond_60
    return-void
.end method
