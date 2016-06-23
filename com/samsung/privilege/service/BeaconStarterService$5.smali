.class Lcom/samsung/privilege/service/BeaconStarterService$5;
.super Ljava/lang/Object;
.source "BeaconStarterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/service/BeaconStarterService;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/service/BeaconStarterService;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/service/BeaconStarterService;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    iput-object p2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 610
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v1}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService$5;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 611
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 612
    return-void
.end method
