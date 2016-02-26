.class public Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "InAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/InAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetSamsungGiftListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/InAppsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/InAppsFragment;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 263
    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/InAppsFragment;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(GetSamsungGiftListener):response_code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",response_text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 265
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_3d

    .line 267
    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # invokes: Lcom/samsung/privilege/activity/InAppsFragment;->ProcessJsonInApp(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lcom/samsung/privilege/activity/InAppsFragment;->access$1(Lcom/samsung/privilege/activity/InAppsFragment;Ljava/lang/String;)V

    .line 269
    const-string v2, "samsunggift_inapp"

    iget-object v3, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 285
    :cond_3c
    :goto_3c
    return-void

    .line 272
    :cond_3d
    const-string v1, ""

    .line 274
    .local v1, "err_message":Ljava/lang/String;
    :try_start_3f
    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0902e4

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4b} :catch_79

    move-result-object v1

    .line 279
    :goto_4c
    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_73
    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # invokes: Lcom/samsung/privilege/activity/InAppsFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/privilege/activity/InAppsFragment;->access$3(Lcom/samsung/privilege/activity/InAppsFragment;Ljava/lang/String;)V

    goto :goto_3c

    .line 275
    :catch_79
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/InAppsFragment;->access$2(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetSamsungGiftListener|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method
