.class Lcom/samsung/privilege/service/BeaconStarterService$6;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/bzbs/bean/MessageGCM;I)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 641
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$6;->b:Lcom/samsung/privilege/service/BeaconStarterService;

    iput-object p2, p0, Lcom/samsung/privilege/service/BeaconStarterService$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$6;->b:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;Ljava/lang/String;)V

    .line 645
    return-void
.end method
