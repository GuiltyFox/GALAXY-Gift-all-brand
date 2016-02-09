.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->onPostFail(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

.field private final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;->val$error:Ljava/lang/String;

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1241
    const/4 v0, 0x0

    .line 1243
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2f

    move-result v2

    if-eqz v2, :cond_12

    .line 1244
    const/4 v0, 0x1

    .line 1249
    :cond_12
    :goto_12
    if-eqz v0, :cond_2e

    .line 1250
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "POST ERROR "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;->val$error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 1254
    :cond_2e
    return-void

    .line 1246
    :catch_2f
    move-exception v1

    .line 1247
    .local v1, "e2":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$14(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
