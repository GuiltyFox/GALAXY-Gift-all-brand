.class Lcom/samsung/privilege/activity/MainPagerActivity$25;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->doScanQRCode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1731
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_32

    .line 1732
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 1733
    .local v1, "hasPermissionCamera":I
    if-eqz v1, :cond_22

    .line 1745
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.permission.CAMERA"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1755
    .end local v1    # "hasPermissionCamera":I
    :goto_21
    return-void

    .line 1747
    .restart local v1    # "hasPermissionCamera":I
    :cond_22
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->requestOpenQR()V
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1200(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_21

    .line 1752
    .end local v1    # "hasPermissionCamera":I
    :catch_28
    move-exception v0

    .line 1753
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v3, "Can not open QRCode Scanner!"

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1300(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    goto :goto_21

    .line 1750
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$25;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->requestOpenQR()V
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1200(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_28

    goto :goto_21
.end method
