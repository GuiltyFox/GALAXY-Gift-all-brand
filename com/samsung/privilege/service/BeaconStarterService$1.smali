.class Lcom/samsung/privilege/service/BeaconStarterService$1;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Lcom/jaalee/sdk/ServiceReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->connectToService()V
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
    .line 189
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$1;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceReady()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$1;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    # invokes: Lcom/samsung/privilege/service/BeaconStarterService;->startServiceMonitoring()V
    invoke-static {v0}, Lcom/samsung/privilege/service/BeaconStarterService;->access$200(Lcom/samsung/privilege/service/BeaconStarterService;)V

    .line 193
    return-void
.end method
