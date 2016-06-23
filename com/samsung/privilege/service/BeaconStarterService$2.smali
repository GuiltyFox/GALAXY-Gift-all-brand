.class Lcom/samsung/privilege/service/BeaconStarterService$2;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Lcom/jaalee/sdk/MonitoringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->initBeacon(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/service/BeaconStarterService;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$2;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnteredRegion(Lcom/jaalee/sdk/Region;)V
    .registers 4
    .param p1, "region"    # Lcom/jaalee/sdk/Region;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$2;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/service/BeaconStarterService;->cominRadiusBeacon(Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V
    invoke-static {v0, p1, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->access$300(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V

    .line 236
    return-void
.end method

.method public onExitedRegion(Lcom/jaalee/sdk/Region;)V
    .registers 4
    .param p1, "region"    # Lcom/jaalee/sdk/Region;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$2;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/service/BeaconStarterService;->cominRadiusBeacon(Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V
    invoke-static {v0, p1, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->access$300(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V

    .line 241
    return-void
.end method
