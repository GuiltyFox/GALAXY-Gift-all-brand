.class Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "MainMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetRedeemDataListener"
.end annotation


# instance fields
.field private gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

.field private gStartTime:J

.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;J)V
    .registers 6
    .param p2, "menuItem"    # Lcom/samsung/privilege/bean/MainMenuItemModel;
    .param p3, "startTime"    # J

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 1198
    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1199
    iput-wide p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gStartTime:J

    .line 1200
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/bean/MainMenuItemModel;
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;)Lcom/samsung/privilege/activity/MainMenuFragment;
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1204
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "(GetRedeemDataListener|onComplete)response={"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :try_start_20
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1208
    .local v6, "endTime":J
    iget-wide v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gStartTime:J

    sub-long v2, v6, v0

    .line 1209
    .local v2, "spentTime":J
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$8(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "redeem_history"

    const-string v4, "load"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->gMenuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iget-object v8, v8, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_55} :catch_7b

    .line 1214
    .end local v2    # "spentTime":J
    .end local v6    # "endTime":J
    :goto_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 1215
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1217
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1290
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$7(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1291
    return-void

    .line 1210
    :catch_7b
    move-exception v0

    goto :goto_55
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1295
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 1296
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onFileNotFoundException|GetRedeemDataListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1298
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$7(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1299
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1303
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 1304
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onIOException|GetRedeemDataListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1306
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$7(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1307
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1311
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 1312
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onMalformedURLException|GetRedeemDataListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1314
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$7(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1315
    return-void
.end method
