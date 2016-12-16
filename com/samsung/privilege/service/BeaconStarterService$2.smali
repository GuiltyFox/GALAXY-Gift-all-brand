.class Lcom/samsung/privilege/service/BeaconStarterService$2;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Lcom/jaalee/sdk/ServiceReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$2;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$2;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-static {v0}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/samsung/privilege/service/BeaconStarterService;)V

    .line 199
    return-void
.end method
