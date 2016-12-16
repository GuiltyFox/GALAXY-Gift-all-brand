.class Lcom/samsung/privilege/service/BeaconStarterService$3;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Lcom/jaalee/sdk/MonitoringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->a(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$3;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jaalee/sdk/Region;)V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$3;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V

    .line 242
    return-void
.end method

.method public b(Lcom/jaalee/sdk/Region;)V
    .registers 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$3;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V

    .line 247
    return-void
.end method
