.class Lcom/samsung/privilege/activity/MainPagerActivity$29;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->doScanQRCode(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$29;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2157
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_32

    .line 2158
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$29;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 2159
    if-eqz v0, :cond_22

    .line 2171
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$29;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 2181
    :goto_21
    return-void

    .line 2173
    :cond_22
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$29;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_21

    .line 2178
    :catch_28
    move-exception v0

    .line 2179
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$29;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v1, "Can not open QRCode Scanner!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    goto :goto_21

    .line 2176
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$29;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_28

    goto :goto_21
.end method
