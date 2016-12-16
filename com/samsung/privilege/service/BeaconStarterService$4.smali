.class Lcom/samsung/privilege/service/BeaconStarterService$4;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/bzbs/bean/MessageGCM;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 580
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->c:Lcom/samsung/privilege/service/BeaconStarterService;

    iput-object p2, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 585
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->c:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$4;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    return-void
.end method
